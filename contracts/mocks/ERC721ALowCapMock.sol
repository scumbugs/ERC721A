// SPDX-License-Identifier: MIT
// Creators: Chiru Labs

pragma solidity ^0.8.4;

import '../extensions/ERC721ALowCap.sol';
import '../extensions/ERC721ABurnable.sol';

contract ERC721ALowCapMock is ERC721ALowCap, ERC721ABurnable {
    constructor(string memory name_, string memory symbol_) ERC721A(name_, symbol_) {}

    function safeMint(address to, uint256 quantity) public {
        _safeMint(to, quantity);
    }
}
