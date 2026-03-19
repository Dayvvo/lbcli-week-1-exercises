# Check the total amount in the wallet.
ADDRESS=$(bitcoin-cli -regtest -rpcwallet=builderswallet getnewaddress)
MINED_BLOCKS=$(bitcoin-cli -regtest generatetoaddress 2 $ADDRESS)
bitcoin-cli -regtest getbalance