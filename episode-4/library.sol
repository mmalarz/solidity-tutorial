pragma solidity ^0.4.2;

library IntExtended {
    function increment(uint _self) public returns (uint) {
        return _self + 1;
    }

    function decrement(uint _self) public returns (uint) {
        return _self - 1;
    }

    function incrementByValue(uint _self, _value) public returns (uint) {
        return _self + _value;
    }

    function decrementByValue(uint _self, _value) public returns (uint) {
        return _self - _value;
    }
}
