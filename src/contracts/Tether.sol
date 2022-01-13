pragma solidity ^0.5.0;

contract Tether {
    string public name = "Tether";
    string public symbol = "USDT";
    uint256 public totalSupply = 1000000000000000000000000; // 1 million tokens
    uint public decimals = 18;

    event Tranfer(
        address indexed _from,
        address indexed _to,
        uint _value
    );

    event Approve(
        address indexed _owner,
        address indexed _spender,
        uint _value
    );

    mapping(address => uint256) public balanceOf;

    constructor() {
        balanceOf[msg.sender] = totalSupply;
    }

    function transfer(address _to, uint _value) public returns (bool success) {
        require(balanceOf[msg.sender] => _value); // require the value greter or equal for transfer

        balanceOf[msg.sender] -= _value; // transfer the amount and subtract the balance

        balanceOf[_to] += _value; // add the balance

        emit Transfer(_from, _to, _value);
        return true;
    }
}