// SPDX-License-Identifier: MIT
pragma solidity 0.8.20;

// import "https://github.com/OpenZeppelin/openzeppelin-contracts/blob/master/contracts/token/ERC20/ERC20.sol";
// import "https://github.com/OpenZeppelin/openzeppelin-contracts/blob/master/contracts/access/Ownable.sol";
import "https://raw.githubusercontent.com/OpenZeppelin/openzeppelin-contracts/v4.4.0/contracts/token/ERC20/ERC20.sol";
import "https://raw.githubusercontent.com/OpenZeppelin/openzeppelin-contracts/v4.4.0/contracts/access/Ownable.sol";

contract KwesiToken is ERC20, Ownable {
    constructor() ERC20("Kwesi Token", "KT") {}

    function mintToken() public onlyOwner {
        _mint(msg.sender, 100 * 10**18);
    }
}