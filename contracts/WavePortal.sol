// SPDX-License-Identifier: UNLICENSED

pragma solidity ^0.8.4;

import "hardhat/console.sol";

contract WavePortal {
    uint256 totalWaves;
    address[] peopleWaved;

    constructor(){
        console.log("My name is contract. Smart contract.");
    }

    function wave() public {
        totalWaves += 1;
        peopleWaved.push(msg.sender);
        console.log("%s has waved!", msg.sender);
    }

    function getTotalWaves() public view returns (uint256) {
        console.log("We have %d total waves!", totalWaves);
        return totalWaves;
    }

    function printWaveLogs() public view {
        console.log("-- WAVING LOGBOOK START--");
        for(uint i = 0; i < peopleWaved.length; i++){
            console.log(peopleWaved[i]);
        }
        console.log("-- WAVING LOGBOOK END--");
    }
}

   
