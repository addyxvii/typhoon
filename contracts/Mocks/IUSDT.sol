pragma solidity ^0.5.8;

contract ERC20Basic {
  uint256 public _totalSupply;

  function totalSupply() public view returns (uint256);

  function balanceOf(address who) public view returns (uint256);

  function transfer(address to, uint256 value) public;

  event Transfer(address indexed from, address indexed to, uint256 value);
}

/**
 * @title ERC20 interface
 * @dev see https://github.com/ethereum/EIPs/issues/20
 */
contract IUSDT is ERC20Basic {
  function allowance(address owner, address spender)
    public
    view
    returns (uint256);

  function transferFrom(
    address from,
    address to,
    uint256 value
  ) public;

  function approve(address spender, uint256 value) public;

  event Approval(address indexed owner, address indexed spender, uint256 value);
}
