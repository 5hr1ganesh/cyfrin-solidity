// SPDX-License-Identifier: MIT
pragma solidity  ^0.8;

contract SimpleStorage {
    // bool hasFavNumber = true;
    // uint256 favNumber = 99;
    // string favNum = "ninety-nine";
    // int notFavNum = -234;
    // bytes32 favouriteByte = "catttyo"; //bytes32 =/= bytes
    // address blahBlah = 0xd9145CCE52D386f254917e481eB44e9943F39138;
    uint256 public myFavNumber; //default is 
    // uint[] listofFavnumbers;

    struct Person{
        uint256 favouriteNum;
        string name;
    }

    // dynamic array
    Person[] public listOfPeeple;

    // static array 
    // Person[6] public listOfPoople;

    mapping(string => uint) public nameToFavouriteNum;

    // Person public cat = Person(1,"Tom");
    // // or 
    // Person public dog = Person({favouriteNum: 0, name: "shiba"});

    function store(uint256 _favNumber) public {
        myFavNumber = _favNumber;
    }

// view functions disallow changes to the state of contract but allow viewing, while pure fuunctions disallow both
    function retrieve() public view returns (uint){
        return myFavNumber;
    }
// a view and pure functions only cost gas when called by a function or transaction that costs gas.

    function addPerson(string memory _name, uint _favouriteNumber) public {
        // Person memory newPerson = Person(_favouriteNumber, _name);
        listOfPeeple.push(Person(_favouriteNumber,_name));
        nameToFavouriteNum[_name] = _favouriteNumber;
    }

}