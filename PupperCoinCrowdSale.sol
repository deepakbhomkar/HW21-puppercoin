pragma solidity ^0.5.5;

import "./PupperCoin.sol";
import "https://github.com/OpenZeppelin/openzeppelin-contracts/blob/release-v2.5.0/contracts/crowdsale/Crowdsale.sol";
import "https://github.com/OpenZeppelin/openzeppelin-contracts/blob/release-v2.5.0/contracts/crowdsale/emission/MintedCrowdsale.sol";
import "https://github.com/OpenZeppelin/openzeppelin-contracts/blob/release-v2.5.0/contracts/crowdsale/validation/CappedCrowdsale.sol";
import "https://github.com/OpenZeppelin/openzeppelin-contracts/blob/release-v2.5.0/contracts/crowdsale/validation/TimedCrowdsale.sol";
import "https://github.com/OpenZeppelin/openzeppelin-contracts/blob/release-v2.5.0/contracts/crowdsale/distribution/RefundablePostDeliveryCrowdsale.sol";


// Inherit the crowdsale contracts
contract PupperCoinSale is Crowdsale, MintedCrowdsale, CappedCrowdsale, TimedCrowdsale, RefundablePostDeliveryCrowdsale {
    
    // fill constructor parameters
    constructor( uint rate, address payable wallet, PupperCoin token, uint goal, uint open, uint close) 
    
    Crowdsale(rate, wallet, token)
    
    CappedCrowdsale(goal)
    
    TimedCrowdsale(open, close)
    
    RefundableCrowdsale(goal)
    
    // Pass the constructor parameters to the crowdsale contracts.
    public {
        
    }
}

contract PupperCoinCrowdSaleDeployer {
    address public token_sale_address;
    address public token_address;
    
    // Fill in the constructor parameters
    constructor(string memory name, string memory symbol, address payable wallet, uint goal) public {
        
        // create the PupperCoin and keep its address handy
        PupperCoin token = new PupperCoin(name, symbol, 0);
        token_address = address(token);
        
        // create the PupperCoinSale and tell it about the token, set the goal, and set the open and close times to now and now + 15 minutes
        PupperCoinSale token_sale = new PupperCoinSale(1, wallet, token, goal, now, now + 15 minutes);
        
        token_sale_address = address(token_sale);
        
        token.addMinter(token_sale_address);
        token.renounceMinter();
    }
}