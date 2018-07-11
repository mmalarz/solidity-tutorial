pragma solidity ^0.4.0;

contract MyFirstContract {
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

