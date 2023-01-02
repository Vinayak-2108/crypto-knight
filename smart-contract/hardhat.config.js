// https://eth-goerli.g.alchemy.com/v2/rlTzm8CFjRh_oaYlcyBUXSV3f409Mi9Z



require("@nomiclabs/hardhat-waffle");

// /** @type import('hardhat/config').HardhatUserConfig */
module.exports = {
  solidity: "0.8.17",
  networks: {
    goerli: {
      url: "https://eth-goerli.g.alchemy.com/v2/rlTzm8CFjRh_oaYlcyBUXSV3f409Mi9Z",
      accounts: ["2b8b9926a2dae68e0894de512c1b810524988ef4729183cebae6334474441a00"]
    }
  }
};
