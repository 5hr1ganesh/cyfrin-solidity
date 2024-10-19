// SPDX-License-Identifier: MIT
pragma solidity ^ 0.8.18;

import {SimpleStorage} from "./SimpleStorage.sol";

contract StorageFactory{
    SimpleStorage[] public listOfsimpleStorageContracts;

    function createSimpleStorageContract() public {
        SimpleStorage  newSimpleStorageContract = new SimpleStorage();
        listOfsimpleStorageContracts.push(newSimpleStorageContract);
    }

    function sfStore(uint256 _simpleSTorageIndex, uint256 _newSimpleStorageNumber) public {
        // Address
        // ABI
        // SimpleStorage mySimpleStorage = listOfsimpleStorageContracts[_simpleSTorageIndex];
        // mySimpleStorage.store((_newSimpleStorageNumber));
        listOfsimpleStorageContracts[_simpleSTorageIndex].store((_newSimpleStorageNumber));
    }

    function sfGet(uint256 _simpleStorageIndex) public view returns(uint256){
        // SimpleStorage mySimpleStorage = listOfsimpleStorageContracts[_simpleStorageIndex];
        // return mySimpleStorage.retrieve();
        // or
        return listOfsimpleStorageContracts[_simpleStorageIndex].retrieve();
    }

}