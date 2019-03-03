pragma solidity ^0.5.0;

import 'openzeppelin-solidity/contracts/token/ERC20/ERC20.sol';
import 'openzeppelin-solidity/contracts/token/ERC20/ERC20Detailed.sol';
import 'openzeppelin-solidity/contracts/token/ERC20/ERC20Burnable.sol';
import 'openzeppelin-solidity/contracts/token/ERC20/ERC20Mintable.sol';
import './ERC20PartialLock.sol';


/**
 * @title PUKAO
 * @dev For testing now
 */
contract PUKAO is ERC20, ERC20Detailed, ERC20PartialLock, ERC20Mintable, ERC20Burnable {
    uint8 public constant DECIMALS = 18;
    uint256 public constant INITIAL_SUPPLY = 1500000000 * (10 ** uint256(DECIMALS));

    constructor () public ERC20Detailed("PUKAO", "PKO", DECIMALS) {
        _mint(msg.sender, INITIAL_SUPPLY);
    }
}
