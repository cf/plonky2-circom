// test data

//LEAF DATA
//9972144316416239374
//7195869958086994472
//12805395537960412263
//6755149769410714396
//16592921959755212957
//1370750654791741308
//11186995120529280354
//288690570896506034
//2896720011649362435
//13870686984275550055
//12288026009924247278
//15608864109019511973
//15690944173815210604
//17535150735055770942
//4265223756233917229
//17236464151311603291
//15180455466814482598
//12377438429067983442
//11274960245127600167
//5684300978461808754
//1918159483831849502
//15340265949423289730
//181633163915570313
//12684059848091546996
//10060377187090493210
//13523019938818230572
//16846214147461656883
//13560222746484567233
//2150999602305437005
//9103462636082953981
//16341057499572706412
//842265247111451937

//current_digest
//8197835875512527937
//7109417654116018994
//18237163116575285904
//17017896878738047012

//sibling_digest, 1             H::two_to_one(sibling_digest, current_digest)
//168952236939078983
//18444491095334285830
//17812083740232784622
//1301667294099464849

//current_digest
//7211848465497282123
//8334407123774112207
//4858661444170722461
//8419634888969461752

//sibling_digest, 0
//17463129296749584633
//8754215873515729996
//18256353707697223243
//6682651953655308744

//current_digest
//11706177050633756093
//294745861935279283
//4375730153854211777
//340768891474827590

//sibling_digest, 1
//5933194675640975463
//14912437312528471852
//6621299039060645686
//12016683561184159096

//current_digest
//9726885627280433845
//8842503827846069306
//2720334681309379184
//2407482919958921256

pragma circom 2.0.9;
include "../../circuits/poseidon.circom";
//include "../../node_modules/circomlib/circuits/poseidon.circom";

template PoseidonTest() {
  signal input in;
  signal output out;

  // Dummy input/output
  in === 1;
  out <== 1;

  component p = Poseidon(4);
  p.in[0] <== 168952236939078983;
  p.in[1] <== 18444491095334285830;
  p.in[2] <== 17812083740232784622;
  p.in[3] <== 1301667294099464849;

  p.in[4] <== 8197835875512527937;
  p.in[5] <== 7109417654116018994;
  p.in[6] <== 18237163116575285904;
  p.in[7] <== 17017896878738047012;

  p.capacity[0] <== 0;
  p.capacity[1] <== 0;
  p.capacity[2] <== 0;
  p.capacity[3] <== 0;

  log(p.out[0]);
  log(p.out[1]);
  log(p.out[2]);
  log(p.out[3]);
  p.out[0] === 0;
  p.out[1] === 0;
  p.out[2] === 0;
  p.out[3] === 0;
}

component main = PoseidonTest();
