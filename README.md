# Copyright Contract

This Solidity contract provides a convenient way to manage permissions and ownership for works protected by copyright. It allows users to create new works, grant permissions to other addresses, check permission levels, and transfer ownership.

## Work Structure

The contract defines a `Work` struct with the following properties:

- `name`: A string representing the name of the work.
- `owner`: An Ethereum address representing the owner of the work.
- `permissions`: A mapping from Ethereum addresses to permission levels, allowing different users to have different levels of permission for a specific work.

## Functions

The contract includes the following functions:

1. `createWork(string memory _name)`: Creates a new work by providing a name. The function generates a unique hash for the work based on its name and the caller's address, and sets the owner of the work to the caller.

2. `grantPermission(bytes32 _workHash, address _user, uint _permission)`: Allows the owner of a work to grant permissions to a specific user. The function requires the caller to be the owner of the work identified by `_workHash`. The `_permission` parameter represents the level of permission granted, associated with the `_user` address.

3. `checkPermission(bytes32 _workHash, address _user)`: Retrieves the level of permission granted to a specific user for a given work. The function takes the work hash `_workHash` and the user's address `_user` as input and returns the associated permission level.

4. `transferOwnership(bytes32 _workHash, address _newOwner)`: Allows the current owner of a work to transfer ownership to a new address. The function requires the caller to be the owner of the work identified by `_workHash`. Upon successful execution, the ownership of the work is transferred to the specified `_newOwner` address.

## License

The contract is licensed under the MIT License. Please see the SPDX-License-Identifier at the top of the code for more details.
