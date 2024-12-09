anvil -> khởi tạo local chain

forge compile

### deploy contract với create hoặc script:
forge create <contract name> --rpc-url <endpoint> --interactive
forge create <contract name> --rpc-url <endpoint> --private-key <private key>

forge script <path to file script> --rpc-url <endpoint> --broadcast --private-key <key>

### insert wallet
cast wallet import <wallet name> --interactive                                                  
Enter private key:
Enter password:

forge script <path to file script> --rpc-url <endpoint> --broadcast --account <wallet name> --sender <account address>

* nếu không có --broadcast thì chỉ giả lập thử đoạn script có chạy thành công hay không, thêm --broadcast để gửi lên blockchain

cast wallet list

### interact write function
cast send <contract address> "<function name>(type arg1, type arg2...)" arg1 agr2 --rpc-url <endpoint> --account bicwallet

### interact read function
cast call <contract address> "function name(type arg1)" arg1 --rpc-url <endpoint>

source .env
cast call <contract address> "function name(type arg1)" arg1 --rpc-url ${SEPOLIA_RPC_URL}

### verify contract
forge v <contract address> <path to contract>:<contract name> --rpc-url ${SEPOLIA_RPC_URL} --etherscan-api-key ${API_KEY}

### deploy kèm verify
forge script <path to file script> --rpc-url <endpoint> --broadcast --account bicwallet --verify --etherscan-api-key ${API_KEY}

### Install Dependencies
forge install <GITHUB_LINK>@<VERSION> --no-commit

forge test -vv : lệnh test kèm log
forge test -vvvv : lệnh test kèm log step by step
forge test --match-test <function test> -vv: lệnh chỉ test function chỉ định kèm log

