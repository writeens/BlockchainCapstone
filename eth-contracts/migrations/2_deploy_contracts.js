// migrating the appropriate contracts
var SquareVerifier = artifacts.require("SquareVerifier.sol");
var SolnSquareVerifier = artifacts.require("SolnSquareVerifier.sol");
var BreesERC721Token = artifacts.require("BreesERC721Token");

module.exports = async (deployer) => {
  // await deployer.deploy(BreesERC721Token, 'BREESERC', 'BREES_ERC721');
  await deployer.deploy(SquareVerifier);
  await deployer.deploy(SolnSquareVerifier, SquareVerifier.address, 'BREESERC', 'BREES_ERC721');
};
