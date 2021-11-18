
/*

This is an example of an (uncomplete) BEP20 compliant
smart contract.

(This is a cryptocurrency running on the Binance blockchain,
Aka, a "Token".)



All BEP20 Tokens must implement the following stuff:
https://github.com/binance-chain/BEPs/blob/master/BEP20.md

*/



pragma solidity ^0.8.0;


contract Token  {
    // All contract members are stored (compressed)
    // on the blockchain.
    mapping(address => uint) public balances;

    // (These fields are required for BEP20.)
    uint public totalSupply = 10000;
    string public name = "Coin on the binance blockchain";
    string public symbol = "COIN";
    uint public decimals = 8;
    
    event Transfer(address indexed from, address indexed to, uint value);

    // Constructor is only called when the contract is deployed!!!!
    // Therefore, the deployer of the contract is msg.sender here.    
    constructor() {
        balances[msg.sender] = totalSupply;
        // This gives the totalSupply to the contract creator!
    }
    
    function balanceOf(address owner) public view returns(uint) {
        return balances[owner];
    }
    
    function transfer(address to, uint value) public returns(bool) {
        require(balanceOf(msg.sender) >= value, 'Insufficient balance');
        require(msg.sender != to, "Cannot send funds to self");

        balances[to] = balances[to] + value;
        balances[msg.sender] -= value;
        
        emit Transfer(msg.sender, to, value);
        // `Transfer` event can only be sent by msg.sender,
        // I.e. only the person who owns the account.
        return true;
    }


    // There are other funcitons that we haven't implemented,
    // but hopefully you get the idea.
}

