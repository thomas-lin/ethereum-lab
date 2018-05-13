# Create genesis Block
copy genesis.example.json to customGenesis.json
```
cp /vagrant/genesis.example.json ~/customGenesis.json
```


# Initial Gensis Block (Private Chain only, with per peer)
```
geth init ~/customGenesis.json
```

# Run private Ethereum Chain
ATTENTION:
networkid is keyword that make you connect to public ethereum chain

```
geth --identity "ethereumLab" --rpc --rpccorsdomain '*' --rpcaddr '0.0.0.0' --rpcapi 'db,eth,net,web3' --nodiscover --networkid 80743314 --maxpeers 2 console
```

# Ethereum console command
- Get node info
```
> admin.nodeInfo
```

- Create New Account
```
> personal.newAccount('password Here')
```

- add New Peer
```
> admin.addPeer('node Info Here, remeber to give correct IPAddr')
```

- Get Connected Peer Count
```
> net.peerCount
```

- Check BlockNumber
```
> eth.blockNumber
```

- Get Account
```
> personal.listAccounts
```
- Get Coinbase
```
> eth.coinbase
```

- Set Miner CoinBase
```
> miner.setEtherbase(eth.coinbase)
```

- start and stop mining
```
> miner.start()
> miner.stop()
```

- Get wei(ethereum unit) and ETH
```
> eth.getBalance(eth.coinbase)
> web3.fromWei(eth.getBalance(eth.coinbase), 'ether')
```

- Unlock Account , before transaction
```
> personal.unlockAccount(eth.coinbase)
```

- Send Transaction
```
> eth.sendTransaction({from: eth.coinbase, to:'target coinbase', value: web3.toWei(10, 'ether')})
```

# Test RPC to get coinbase
```
curl -X POST --header 'Content-Type: application/json' --data '{"jsonrpc":"2.0","method":"eth_coinbase","id":1}' http://localhost:8545
```