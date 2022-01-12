//bringing babel 
require('babel-register');
require('babel-polyfill');

module.exports = {
    networks:{ // setup network to ganache
        development:{
            host: '127.0.0.1',
            port: '7545',
            network_id: '*' //match any network
        },
    },
    contracts_directory: './src/contracts/', // setup contract directory where truffle is going to see them
    contracts_build_directory: './src/truffle_abis',
    compilers: {
        solc: { // setup solidity commandline compiler
            version: '^0.5.0',
            optimizer: {
                enabled: true,
                runs: 200
            },
        }
    }
}