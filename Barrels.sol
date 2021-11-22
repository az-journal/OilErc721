pragma solidity ^0.8.0;
// SPDX-License-Identifier: GPL-3.0


pragma solidity ^0.8.0;

import "@openzeppelin/contracts/token/ERC721/extensions/ERC721Enumerable.sol";
import "@openzeppelin/contracts/access/Ownable.sol";

contract Barrels is ERC721Enumerable, Ownable {
  using Strings for uint256;

  string public baseURI;
  string public baseExtension = ".json";
  

   constructor(
    string memory _name,
    string memory _symbol,
    string memory _initBaseURI
  ) ERC721(_name, _symbol) {
    setBaseURI(_initBaseURI);
  }

 
  function _baseURI() internal view virtual override returns (string memory) {
    return baseURI;
  }

  function mint(address msg.sender, uint256 _mintAmount) public payable {
    uint256 supply = totalSupply();
    for (uint256 i = 0; i < _mintAmount; i++) { 
      _safeMint(_to, supply + i);
    }
  }
