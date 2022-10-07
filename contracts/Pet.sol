//SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract Counter {
    struct Pet {
        string Breed;
        string Gender;
        string BirthDay;
        bool ChampionBloodline;
        string Size;
        bool FCIPedigree;
        bool Hypoallergenic;
        string colour;
    }

    struct Owner {
        bytes32 name;   
        string origin;
        string licenseId;  
    }

    address public shop;

    mapping(address => Pet) public pets;

    Owner[] public owners;

    constructor(bytes32[] memory proposalNames){
        shop = msg.sender;
        pets[shop] = 1;
    }
}