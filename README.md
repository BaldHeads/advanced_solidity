# advanced_solidity

This project utilizes the [OpenZeppelin Library](https://github.com/OpenZeppelin/openzeppelin-contracts/tree/release-v2.5.0/contracts) to crowdfund and mint an ERC20 token.


Two contracts will be used: one to initiate the instance of the token and one to initiate the token sale deployment/sale 

The token contract inherits the following OpenZeppelin Contracts:
- [ERC20](https://github.com/OpenZeppelin/openzeppelin-contracts/blob/release-v2.5.0/contracts/token/ERC20/ERC20.sol)
- [ERC20Detailed](https://github.com/OpenZeppelin/openzeppelin-contracts/blob/release-v2.5.0/contracts/token/ERC20/ERC20Detailed.sol)
- [ERC20Mintable](https://github.com/OpenZeppelin/openzeppelin-contracts/blob/release-v2.5.0/contracts/token/ERC20/ERC20Mintable.sol)


The token sale contract inherits the following OpenZeppelin Contracts:

- [Crowdsale](https://github.com/OpenZeppelin/openzeppelin-contracts/blob/release-v2.5.0/contracts/crowdsale/Crowdsale.sol)
- [MintedCrowdsale](https://github.com/OpenZeppelin/openzeppelin-contracts/blob/release-v2.5.0/contracts/crowdsale/emission/MintedCrowdsale.sol)
- [CappedCrowdsale](https://github.com/OpenZeppelin/openzeppelin-contracts/blob/release-v2.5.0/contracts/crowdsale/validation/CappedCrowdsale.sol)
- [TimedCrowdsale]( https://github.com/OpenZeppelin/openzeppelin-contracts/blob/release-v2.5.0/contracts/crowdsale/validation/TimedCrowdsale.sol)
- [RefundablePostDeliveryCrowdsale](https://github.com/OpenZeppelin/openzeppelin-contracts/blob/release-v2.5.0/contracts/crowdsale/distribution/RefundablePostDeliveryCrowdsale.sol)


### Deployed Contracts
![Puppercoin, PupperSale, & Deployer Contracts](screenshots\contractsdeployed.JPG)

Buying tokens on the local network and raising 1 wei
![](screenshots\buytokenlocal.JPG)


![](screenshots\oneweilocal.JPG)

Reaching the 300 wei cap (could switch the rate here or add zeros to goal/cap for params after new PupperCoinSale ~line 53)

![](screenshots\capreachedlocal.JPG)

Adding the custom token to metamask & mycrypto

![MetaMask](screenshots\addtokenmetamask.JPG) 

![MyCrypto](screenshots\mycryptotokenbalance.JPG)


Sending Txns in metamask Local

![](screenshots\sendtxnmetamask.JPG)
![](screenshots\sendtxnmetamaskreceipt.JPG)





 

 

 



 
