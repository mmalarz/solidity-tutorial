pragma solidity ^0.4.0;

interface Regulator {
    function checkValue(uint amount) returns (bool);
    function loan() returns (bool);
}

contract Bank is Regulator {
    uint internal value;
    
    constructor(uint amount) public {
        value = amount;
    }
    
    function deposit(uint amount) public {
        value += amount;
    }
    
    function withdraw(uint amount) public {
        if (checkValue(amount)) {
            value -= amount;
        }
    }
    
    function balance() public returns (uint) {
        return value;
    }
    
    function checkValue(uint amount) returns (bool) {
        return amount <= value;
    }
    
    function loan() returns (bool) {
        return value > 0;
    }
}

contract MyFirstContract is Bank(10) {
    string public name;
    uint public age;
    
    function getName() public returns (string) {
        return name;
    }
    
    function setName(string _name) public {
        name = _name;
    }
    
    function getAge() public returns (uint) {
        return age;
    }
    
    function setAge(uint _age) public {
        age = _age;
    }
}

