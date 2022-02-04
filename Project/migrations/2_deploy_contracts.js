const HashFunction = artifacts.require("./build/contracts/HashFunction.json");


module.exports = function(deployer) {
  deployer.deploy(HashFunction);
};
