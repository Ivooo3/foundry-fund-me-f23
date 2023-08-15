#knowledge from contract
forge install forge install smartcontractkit/chainlink-brownie-contracts@0.6.1 --no-commit
install lib from git

we can add mapping to the foundry.toml file for the import
remappings = ["@chainlink/contracts/=lib/chainlink-brownie-contracts/contracts/"]

forge compile / forge build -> compile the project

forge test -> run all tests
forge test -vv -> gives visibility to the logs we added to the test (vvv -> gives stack trace for failing tests)

- if we run test and we dont specify chain, foundry will run anvil and will delete it after the execution is done !

- --rpc-url and fork-url are the same thing 

- forge coverage --fork-url $SEPOLIA_RPC_URL - will show the test coverage 

- chisel -> writen in the console, enter mode where we can write solidity code in the console
- control C to exit
  
- forge snapshot -> create a file which contains how much gas is used for every test we run
- working with anvil (fork or not) defualt gas to 0
  

- forge inspect "FundMe" storageLayout -> inspect the storage layout of the contract

- cast storage "contral address" (optional we can add slot number) - if not slot specified will see the bytes/value/type/slot/offset/contract info about the contract, if slot specified we will get what is in the storage slot of the contract

- if we save and load from storage the cost is minimum 100 gas
- if we save and load from memory the cost is minimum 3 gas

//TODO check how to write readme

-forge test -m is depricated we need to use --match-test / --mt if we want to run single test

- Makefile is used to make shortcuts for comonly used commands (meke life easy)