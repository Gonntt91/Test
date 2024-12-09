-include .env

deploy-anvil:;
	@forge script script/NewToken.s.sol --rpc-url ${ANVIL_RPC_URL}5 --broadcast --account <cast-wallet-name> --sender <cast-wallet-address>

deploy-sepolia:;
	@forge script script/NewToken.s.sol --rpc-url ${SEPOLIA_RPC_URL} --broadcast --account <cast-wallet-name> --verify --etherscan-api-key ${API_KEY}

deploy-bnb-testnet:;
	@forge script script/NewToken.s.sol --rpc-url ${BNB_TESTNET} --broadcast --account <cast-wallet-name> --verify --etherscan-api-key ${API_KEY}