pragma solidity ^0.4.13;

contract Ownable {

	address owner;

	function Ownable() {
		owner = msg.sender;
	}

	modifier onlyOwner() {
		require(msg.sender == owner);
		_;
	}

	function transferOwnership(address newOwner) onlyOwner {
		owner = newOwner;
	}

}

contract BusinessCard is Ownable {

	mapping (bytes32 => string) data;

	function setData(string key, string value) onlyOwner {
		data[sha3(key)] = value;
	}

	function getData(string key) constant returns(string) {
		return data[sha3(key)];
	}

}