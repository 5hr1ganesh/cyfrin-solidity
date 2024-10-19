// SPDX-License-Identifier: MIT
pragma solidity ^ 0.8.18;

import {SimpleStorage} from "./SimpleStorage.sol";

contract AddFiveStorag is SimpleStorage{
    // for a function to be override(able) it needs to have a virtual keyword
    function store(uint _newNum) public override {
        myFavNumber = _newNum+2;
    }
}