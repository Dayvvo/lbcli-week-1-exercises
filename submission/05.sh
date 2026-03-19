# Check the total amount in the wallet.
ADDRESS=$(bitcoin-cli -regtest getaddressesbylabel "builderswallet" | jq -r 'keys[0]')

bitcoin-cli -regtest generatetoaddress 101 $ADDRESS
bitcoin-cli -regtest getbalance