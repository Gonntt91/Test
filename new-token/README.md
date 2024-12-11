anvil -> khởi tạo local chain

### Install Dependencies

> GITHUB_LINK = https://github.com/OpenZeppelin/openzeppelin-contracts

> forge install <GITHUB_LINK>@<VERSION> --no-commit

> forge compile

`#0969DA`


### deploy contract với create hoặc script:
```
forge create <contract name> --rpc-url <endpoint> --interactive
forge create <contract name> --rpc-url <endpoint> --private-key <private key>

forge script <path to file script> --rpc-url <endpoint> --broadcast --private-key <key>

Example
forge create NewToken --rpc-url http://127.0.0.1:8545 --private-key 0xac0974bec39a17e36ba4a6b4d238ff944bacb478cbed5efcae784d7bf4f2ff80 --broadcast
```

## Insert Wallet
```
cast wallet import <wallet name> --interactive 

cast wallet import gonwallet --interactive 
                                              
Enter private key:
Enter password:
```  

```
forge script <path to file script> --rpc-url <endpoint> --broadcast --account <wallet name> --sender <account address>
```

* nếu không có --broadcast thì chỉ giả lập thử đoạn script có chạy thành công hay không, thêm --broadcast để gửi lên blockchain

cast wallet list

# Interact write function
```
cast send <contract address> "<function name>(type arg1, type arg2...)" arg1 agr2 --rpc-url <endpoint> --account <wallet-name>

cast send 0x5FbDB2315678afecb367f032d93F642f64180aa3 "mint(address, uint256)" 0x70997970C51812dc3A010C7d01b50e0d17dc79C8 9999999 --rpc-url http://127.0.0.1:8545 --account gonwallet
```

# Read function
```
cast call <contract address> "function name(type arg1)" arg1 --rpc-url <endpoint>

balanceOf(address account)
cast call 0x5FbDB2315678afecb367f032d93F642f64180aa3 "balanceOf(address)" 0x70997970C51812dc3A010C7d01b50e0d17dc79C8 --rpc-url http://127.0.0.1:8545
```

```
source .env
cast call <contract address> "function name(type arg1)" arg1 --rpc-url ${SEPOLIA_RPC_URL}

```

### verify contract
forge v <contract address> <path to contract>:<contract name> --rpc-url ${SEPOLIA_RPC_URL} --etherscan-api-key ${API_KEY}

### deploy kèm verify
```
forge script <path to file script> --rpc-url <endpoint> --broadcast --account bicwallet --verify --etherscan-api-key ${API_KEY}
```


### TEST

```
forge test -vv : lệnh test kèm log
forge test -vvvv : lệnh test kèm log step by step
forge test --match-test <function test> -vv: lệnh chỉ test function chỉ định kèm log
```
