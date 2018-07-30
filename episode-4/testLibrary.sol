pragma solidity ^0.4.0;

import "./library.sol";

contract TestLibrary {
    using IntExtended for uint;

    function testIncrement(uint _base) returns (uint) {
        return _base.increment();
    }

    function testDecrement(uint _base) returns (uint) {
        return IntExtended.decrement(_base);
    }

    function testIncrementByValue(_base, _value) returns (uint) {
        return _base.incrementByValue(_value);
    }

    function testDecrementByValue(_base, _value) returns (uint) {
        return IntExtended.decrementByValue(_self, _value);
    }
}
