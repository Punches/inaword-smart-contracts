pragma solidity ^0.4.13;

contract BusinessCard {

	mapping (bytes32 => string) data;

	address owner;

	function BusinessCard() {
		owner = msg.sender;
	}

	function setData(string key, string value) {
		require(msg.sender == owner);
		data[sha3(key)] = value;
	}

	function getData(string key) constant returns(string) {
		return data[sha3(key)];
	}

}