pragma solidity ^0.4.13;

contract BusinessCard {

	mapping (bytes32 => string) data;

	function setData(string key, string value) {
		data[sha3(key)] = value;
	}

	function getData(string key) constant returns(string) {
		return data[sha3(key)];
	}

}