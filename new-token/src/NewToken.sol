// SPDX-License-Identifier: UNLICENSED
pragma solidity ^0.8.20;

import {ERC20} from "@openzeppelin-contracts/contracts/token/ERC20/ERC20.sol";
import {Ownable} from "@openzeppelin-contracts/contracts/access/Ownable.sol";

contract NewToken is ERC20, Ownable {

    constructor() ERC20("NewITZ Token", "ITZ") Ownable(msg.sender) {}

        /** @dev Owner creates tokens and assigns them to specific user
     * @param to address of user will receive tokens, cannot be the zero address
     * @param amount amount of tokens want to mint
     */
    function mint(address to, uint256 amount) external onlyOwner {
        _mint(to, amount);
    }
    
    /**
     * @dev User request to destroys tokens
     * @param amount amount of tokens want to burn, user must have at least `amount` tokens
     */
    function burn(uint256 amount) external onlyOwner {
        _burn(msg.sender, amount);
    }
}