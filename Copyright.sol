// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract Copyright {
    
    struct Work {
        string name;
        address owner;
        mapping(address => uint) permissions; // address => permissions
    }
    
    mapping(bytes32 => Work) works;
    
    function createWork(string memory _name) public {
        bytes32 workHash = keccak256(abi.encodePacked(_name, msg.sender));
        works[workHash].name = _name;
        works[workHash].owner = msg.sender;
    }
    
    function grantPermission(bytes32 _workHash, address _user, uint _permission) public {
        require(msg.sender == works[_workHash].owner);
        works[_workHash].permissions[_user] = _permission;
    }
    
    function checkPermission(bytes32 _workHash, address _user) public view returns (uint) {
        return works[_workHash].permissions[_user];
    }
    
    function transferOwnership(bytes32 _workHash, address _newOwner) public {
        require(msg.sender == works[_workHash].owner);
        works[_workHash].owner = _newOwner;
    }
}
