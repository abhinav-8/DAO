import "hardhat-deploy";
import "@nomiclabs/hardhat-ethers";
import "@typechain/hardhat";
import {HardhatUserConfig } from "hardhat/config"

// module.exports = {
//   solidity:"0.8.9"
// }
const config: HardhatUserConfig  = {
  defaultNetwork: "hardhat",
  networks: {
    //used while deploying etc
    hardhat: {
      chainId : 31337,
    },
    //It is used when we run hh node
    localhost: {
      chainId: 31337,
    },
  },
  solidity: "0.8.9",
  namedAccounts: {
    deployer: {
      default: 0,
    },

  },
};
export default config;