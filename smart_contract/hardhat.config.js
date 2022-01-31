require('@nomiclabs/hardhat-waffle');

module.exports = {
  solidity: '0.8.0',
  networks: {
    ropsten: {
      url: 'https://eth-ropsten.alchemyapi.io/v2/GhaRw9qqNtuQFD90-9ztAMAddP7Nut7L',
      accounts: ['09eb2a47d15ceab033cee086031dd7669a4eb277fd66c6227449347deaaf63e9']
    }
  }
}