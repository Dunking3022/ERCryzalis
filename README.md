# ERCryzalis

This is a Solidity Smart Contract to demonstrate ERC20 Contracts and its burn,mint and transfer functions. 

## Description

This contract is built by implementing OpenZeppelin's ERC20 contract. It enables us to use the ERC20 contract's functions like _mint, _burn and _transfer. 
## Getting Started

### Executing program

To run this program, you can use Remix, an online Solidity IDE. Go to https://remix.ethereum.org/.

Once you are on the website, create a new file by clicking on the "+" icon in the left-hand sidebar. Save the file with a .sol extension (e.g., Test.sol). Copy and paste the following code into the file:

```javascript
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
```

To compile the code, click on the "Solidity Compiler" tab in the left-hand sidebar. Make sure the "Compiler" option is set to "0.8.9" (or another compatible version), and then click on the "Compile project.sol" button.

Once the code is compiled, you can deploy the contract by clicking on the "Deploy & Run Transactions" tab in the left-hand sidebar. Select the "MyToken" contract from the dropdown menu, and then click on the "Deploy" button.

Once the contract is deployed, you can interact with it by calling the mint, burn or transfer function. Click on the "MyToken" contract in the left-hand sidebar, and then click on the "mint" function. 

## Help

Make sure to have the compiler option set to 0.8.9 to avoid version depenedency errors. 
```
pragma solidity ^0.8.9
```

## Authors

  
[Dunking](https://twitter.com/dunkjn3022)


## License

This project is licensed under the MIT License - see the LICENSE.md file for details
