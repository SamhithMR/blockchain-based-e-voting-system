var myContract = artifacts.require("myContract");

module.exports = function(deployer){
  deployer.deploy(myContract);
}