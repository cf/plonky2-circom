#!/bin/bash
./e2e_test_recursive_proof_circom_verification.sh >> ./e2e.txt 2>&1 & echo $! > ./e2e.pid
