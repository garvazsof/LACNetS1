// SPDX-License-Identifier: UNLICENSED
pragma solidity ^0.8.19;

contract GasConsumer {

    function gasConsumer() public payable returns (uint256) {

        uint256 ihaveGas = gasleft();
        uint gasAvailable = ihaveGas;
        uint256 gasprice = tx.gasprice;

        while(gasAvailable > gasprice){
            uint256 calc1 = 10*10**18;
            uint256 calc2 = 10*10**5;
            uint sum = calc1 - calc2;
            gasprice = tx.gasprice;
            gasAvailable = ihaveGas - gasleft();
        }
        
        return  gasprice;

    }
}