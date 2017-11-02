pragma solidity ^0.4.13;

contract BusinessCard {

	string name;

	uint age;

	uint year;

	function getName() constant returns (string) {
		return name;
	}

	function setName(string newName) {
		name = newName;
	}

	function getAge() constant returns (uint) {
		return age;
	}

	function setAge(uint newAge) {
		age = newAge;
	}

	function getYear() constant returns (uint) {
		return year;
	}

	function setYear(uint newYear) {
		year = newYear;
	}

}