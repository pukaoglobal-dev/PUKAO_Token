const HDWalletProvider = require("truffle-hdwallet-provider");

module.exports = {
  networks: {
    development: {
      host: "127.0.0.1",
      port: 7545,
      network_id: "*"
    },
    test: {
      host: "127.0.0.1",
      port: 7545,
      network_id: "*"
    },
    ropsten: {
      provider: function() {
        return new HDWalletProvider("belt tennis agent swear gaze stomach hand letter document attitude into ethics", "https://ropsten.infura.io/v3/e122f59cae4042d3a05dfbdcce095937")
      },
      network_id: 3,
      gas: 4700000
    }
  }
};
