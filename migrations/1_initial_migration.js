var BusinessCard = artifacts.require("./BusinessCard.sol");

module.exports = function(deployer) {
	deployer.deploy(BusinessCard);
};