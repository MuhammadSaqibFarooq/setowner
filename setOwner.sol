// SPDX-License-Identifier: MIT
pragma solidity ^0.8.19;
contract Ownalbe{
    address public  owner;
    constructor(){
        owner=msg.sender;
    }
    modifier onlyOwner(){
        require(owner==msg.sender,"only owner can run this fun");
        _;
    }
    function  setNewOwner(address _newowner) public  onlyOwner{
        require(_newowner != address(0),"invalide Address");
        owner=_newowner;
    }
}
