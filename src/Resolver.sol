// SPDX-License-Identifier: UNLICENSED
pragma solidity ^0.8.17;

import "openzeppelin-contracts/contracts/token/ERC721/IERC721.sol";

contract Resolver {
    mapping (uint256 => string) map;
    IERC721 bebContract = IERC721(0x0F08FC2A63F4BfcDDfDa5c38e9896220d5468a64);

    function set(uint256 tokenId, string memory _value) external {
        if (bebContract.ownerOf(tokenId) == msg.sender) {
            map[tokenId] = _value;
        }
    }

    function get(uint256 tokenId) external view returns (string memory) {
        return map[tokenId];
    }
}