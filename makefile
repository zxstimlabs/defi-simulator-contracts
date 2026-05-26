-include .env

build:
	forge build

test-all:
	forge test -vvvv

deploy-token-arbsep:
	forge script script/TokenDeploy.s.sol:TokenDeploy --rpc-url ${ARBITRUM_SEPOLIA_RPC_URL} --account zxstim --sender ${SENDER} --broadcast --verify --etherscan-api-key ${ETHERSCAN_API_KEY} -vvvv

deploy-batch7702-arbsep:
	forge script script/Batch7702Deploy.s.sol:Batch7702Deploy --rpc-url ${ARBITRUM_SEPOLIA_RPC_URL} --account zxstim --sender ${SENDER} --broadcast --verify --etherscan-api-key ${ETHERSCAN_API_KEY} -vvvv

verify-mockether-arbsep:
	forge verify-contract 0x408D9ba3E0eB33F2F25ddb63240896e245BD86a0 src/MockEther.sol:MockEther \
		--chain arbitrum-sepolia \
		--compiler-version 0.8.34 \
		--evm-version prague \
		--num-of-optimizations 9999999 \
		--constructor-args 000000000000000000000000e3d25540ba6ced36a0ed5ce899b99b5963f43d3f \
		--etherscan-api-key ${ETHERSCAN_API_KEY}

verify-mockdong-arbsep:
	forge verify-contract 0x159f20aD2161AA7a803Ef6A8fd8DF822Cfb6CE7E src/MockDong.sol:MockDong \
		--chain arbitrum-sepolia \
		--compiler-version 0.8.34 \
		--evm-version prague \
		--num-of-optimizations 9999999 \
		--constructor-args 000000000000000000000000e3d25540ba6ced36a0ed5ce899b99b5963f43d3f \
		--etherscan-api-key ${ETHERSCAN_API_KEY}