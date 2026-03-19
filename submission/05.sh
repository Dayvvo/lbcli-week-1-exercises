# Check the total amount in the wallet.
ADDRESS=$(bitcoin-cli -regtest -rpcwallet=builderswallet getnewaddress)
MINED_BLOCKS=$(bitcoin-cli -regtest generatetoaddress 101 $ADDRESS)
bitcoin-cli -regtest getbalance -rpcwallet=builderswallet