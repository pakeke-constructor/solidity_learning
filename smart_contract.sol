
/**
Basic smart contract example
 

This is a basic contract that keeps a count of how
many distinct addresses "ping" a contract.
(There is no point to this btw)

*/


pragma solidity ^0.8.0;




contract PING  {
    
    mapping(address => bool) pings; // created on contract initialization.
    uint256 num_pings = 0;
    // These are obviously public members, because the blockchain
    // must know them in order to run the contract!

    // (However the public cannot modify them directly, obviously.)



    function ping() public returns (bool) {
        if ( pings[msg.sender] ) {
            return false;
        }

        pings[msg.sender] = true;
        return true;
    }

}

