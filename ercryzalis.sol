// SPDX-License-Identifier: MIT
pragma solidity ^0.8.9;

import "@openzeppelin/contracts/token/ERC20/ERC20.sol";
import "@openzeppelin/contracts/token/ERC20/extensions/ERC20Burnable.sol";
import "@openzeppelin/contracts/access/Ownable.sol";

contract ERCryzalis is ERC20, ERC20Burnable, Ownable {
    constructor() ERC20("ERCryzalis", "ERC") {
        _mint(msg.sender, 500);
    }
    function ERmint(address target, uint256 amt) public onlyOwner {
        _mint(target, amt);
    }
    function ERtransfer(address target, uint256 amt) public {
        _transfer(msg.sender,target,amt);
    }
    function ERburn(uint amount) public {
        _burn(msg.sender, amount);
    }
}
