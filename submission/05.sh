# Check the total amount in the wallet.
WALLET_NAME=$(bitcoin-cli -regtest createwallet "builderswallet")

bitcoin-cli -regtest generatetoaddress 101 $WALLET_NAME
bitcoin-cli -regtest getbalance $WALLET_NAME