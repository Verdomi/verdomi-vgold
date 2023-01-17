// SPDX-License-Identifier: MIT

pragma solidity ^0.8.7;

import "@openzeppelin/contracts/token/ERC20/extensions/ERC20Burnable.sol";
import "./AllowedAddresses.sol";

contract VGOLD is ERC20Burnable, AllowedAddresses {
    constructor() ERC20("Verdomi Gold", "VGOLD") {}

    function mint(address account, uint256 amount) external onlyAllowedAddresses {
        _mint(account, amount);
    }
}
