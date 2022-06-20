// SPDX-License-Identifier: MIT
pragma solidity ^0.8.8;
//ERC20 Votes provides the functionality of checkpoints thus snapshots
//That's why using ERC20Votes specifically instead of ERC20 
import "@openzeppelin/contracts/token/ERC20/extensions/ERC20Votes.sol";

contract GovernanceToken  is ERC20Votes {
    uint256 public max_supply  = 1000000000000000000000000;

    constructor() 
    ERC20("GovernanceToken", "AB")
    ERC20Permit("Governance Token")
    {
        _mint(msg.sender , max_supply);
    }

    //The funcitones below are overrides required by solidity
    //These are the details required to be stored in the snapshot or these are the details we would may want at every checkpoint
    function _afterTokenTransfer(
    address from,
    address to,
    uint256 amount
    ) internal override(ERC20Votes) {
    super._afterTokenTransfer(from, to, amount);
    }

    function _mint(address to, uint256 amount) internal override(ERC20Votes) {
        super._mint(to, amount);
    }

    function _burn(address account, uint256 amount) internal override(ERC20Votes) {
        super._burn(account, amount);
    }
}



