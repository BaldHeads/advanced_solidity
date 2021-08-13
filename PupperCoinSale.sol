pragma solidity ^0.5.0;

import "./PupperCoin.sol";
import "https://github.com/OpenZeppelin/openzeppelin-contracts/blob/release-v2.5.0/contracts/crowdsale/Crowdsale.sol";
import "https://github.com/OpenZeppelin/openzeppelin-contracts/blob/release-v2.5.0/contracts/crowdsale/emission/MintedCrowdsale.sol";
import "https://github.com/OpenZeppelin/openzeppelin-contracts/blob/release-v2.5.0/contracts/crowdsale/validation/CappedCrowdsale.sol";
import "https://github.com/OpenZeppelin/openzeppelin-contracts/blob/release-v2.5.0/contracts/crowdsale/validation/TimedCrowdsale.sol";
import "https://github.com/OpenZeppelin/openzeppelin-contracts/blob/release-v2.5.0/contracts/crowdsale/distribution/RefundablePostDeliveryCrowdsale.sol";

// @TODO: Inherit the crowdsale contracts
contract PupperCoinSale is Crowdsale, MintedCrowdsale, CappedCrowdsale, TimedCrowdsale, RefundableCrowdsale {

    constructor(
        uint rate,
        address payable wallet,
        PupperCoin token,
        
        uint goal,
        uint cap,
        uint openTime,
        uint closeTime
        
    )
        Crowdsale(rate, wallet, token)
        TimedCrowdsale(openTime, closeTime)
        // TimedCrowdsale(now, now + 24 weeks)
        CappedCrowdsale(cap)
        RefundableCrowdsale(goal)
        public
    {
        // constructor can stay empty
    }
}

contract PupperCoinSaleDeployer {

    address public pupperSaleAddress;
    address public tokenAddress;

    constructor(
        string memory name,
        string memory symbol,
        address payable wallet
   
    )
        public
    {
        // create the PupperCoin and keep its address handy
         PupperCoin token = new PupperCoin(name, symbol, 0);
         tokenAddress = address(token);

        // create the PupperCoinSale and tell it about the token, set the goal, and set the open and close times to now and now + 24 weeks.
        PupperCoinSale pupperSale = new PupperCoinSale(1, wallet, token, 50, 300, now, now + 24 weeks);   //now for openTime and +24wks for closeTime, goal and cap set in Ether
        pupperSaleAddress = address(pupperSale);
            
        // make the PupperCoinSale contract a minter, then have the PupperCoinSaleDeployer renounce its minter role
        token.addMinter(pupperSaleAddress);
        token.renounceMinter();
    }
}