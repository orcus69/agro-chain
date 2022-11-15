//Contract based on [https://docs.openzeppelin.com/contracts/3.x/erc721](https://docs.openzeppelin.com/contracts/3.x/erc721)
// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

import "@openzeppelin/contracts/token/ERC721/ERC721.sol";
import "@openzeppelin/contracts/utils/Counters.sol";
import "@openzeppelin/contracts/access/Ownable.sol";
import "@openzeppelin/contracts/token/ERC721/extensions/ERC721URIStorage.sol";

contract AgroChainToken is ERC721URIStorage, Ownable {
    using Counters for Counters.Counter;
    Counters.Counter private _tokenIds;

    string public constant NAME = "AGRO-CHAIN";
    string public constant SYMBOL = "AGR";

    //add attributes of the nft
    struct NFT {
        string name;
        string description;
        string image;
        string tokenURI;
    }

    constructor() ERC721(NAME, SYMBOL) {}

    //mint NFT to recipient address
    //obs only owner can mint
    function mintAGR(address recipient) public onlyOwner returns (uint256) {
        _tokenIds.increment();
        
        uint256 newItemId = _tokenIds.current();
        _mint(recipient, newItemId);

        return newItemId;
    }
}
