var SimpleTokenCoin = artifacts.require("./SimpleTokenCoin.sol");

module.exports = function(deployer) {
	deployer.deploy(SimpleTokenCoin);
};