pragma solidity ^0.4.12;

import "./lib/BurnableToken.sol";
import "./lib/UpgradeableToken.sol";

contract MCOIN is BurnableToken, UpgradeableToken {

  string public name;
  string public symbol;
  uint public decimals;

  function MCOIN(address _owner)  UpgradeableToken(_owner) {
    name = "MCOIN";
    symbol = "MCN";
    totalSupply = 10000000000000000;
    decimals = 8;

    balances[_owner] = totalSupply;
  }
}