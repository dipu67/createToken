
// SPDX-License-Identifier: MIT
// Compatible with OpenZeppelin Contracts ^5.0.0
pragma solidity ^0.8.28;

import "./ERC20.sol";
import "./Ownable.sol";
import "./ERC20Burnable.sol";

contract A24 is ERC20, ERC20Burnable, Ownable {
    constructor(address initialOwner) ERC20("A24", "A24") Ownable(initialOwner) {
        _mint(msg.sender, 1000 * 10 ** decimals());
    }

    function mint(address to, uint256 amount) public onlyOwner {
        _mint(to, amount);
    }
}