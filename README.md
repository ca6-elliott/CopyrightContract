# CopyrightContract


# Copyright Contract
This contract, written in Solidity, allows users to manage permissions and ownership for works protected by copyright.

# Contract Structure
The contract consists of a single Copyright contract defined in the Solidity version 0.8.0 or higher.

# Work Structure
The contract defines a Work struct, which represents an individual work protected by copyright. Each work has the following properties:

name: A string representing the name of the work.
owner: An Ethereum address representing the owner of the work.
permissions: A mapping from Ethereum addresses to permissions, which allows different users to have different levels of permission for a specific work.
# Functions
The contract provides the following functions to manage works and permissions:

createWork(string memory _name): Allows a user to create a new work by providing a name. The function generates a unique hash for the work based on its name and the caller's address, and sets the owner of the work to the caller.

grantPermission(bytes32 _workHash, address _user, uint _permission): Enables the owner of a work to grant permissions to a specific user. The function requires the caller to be the owner of the work identified by _workHash. The _permission parameter represents the level of permission granted, which is associated with the _user address.

checkPermission(bytes32 _workHash, address _user): Allows anyone to check the level of permission granted to a specific user for a given work. The function takes the work hash _workHash and the user's address _user as input and returns the associated permission level.

transferOwnership(bytes32 _workHash, address _newOwner): Allows the current owner of a work to transfer ownership to a new address. The function requires the caller to be the owner of the work identified by _workHash. Upon successful execution, the ownership of the work is transferred to the specified _newOwner address.

# License
The SPDX License Identifier (SPDX-License-Identifier) at the top of the code indicates that the contract is licensed under the MIT License.
