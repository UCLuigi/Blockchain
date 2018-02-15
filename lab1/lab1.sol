pragma solidity ^0.4.18;

contract Greeter {

    string greeter;

    function Greeter(string _greeting) public {
        greeter = _greeting;
    }

    function greet() public constant returns (string) {
        return "hello, World!";
    }

    function() public {
        throw;
    }
}

contract Fibonacci {

    function fibonacci(uint n) public constant returns (uint) {
        uint a = 0;
        uint b = 1;
        for (uint i = 0; i < n; i++) {
            uint temp = a;
            a = b;
            b = temp + b;
        }
        return a;
    }
}

contract XOR {

    function xor(uint num, uint num2) public constant returns (uint) {
        return num ^ num2;
    }
}

contract Concatenate {

    function concatenate(string a, string b) public returns (string) {
        bytes memory a_bytes = bytes(a);
        bytes memory b_bytes = bytes(b);
        string memory ab = new string(a_bytes.length + b_bytes.length);
        bytes memory ab_bytes = bytes(ab);
        uint k = 0;
        for (uint i = 0; i < a_bytes.length; i++) ab_bytes[k++] = a_bytes[i];
        for (i = 0; i < b_bytes.length; i++) ab_bytes[k++] = b_bytes[i];
        return string(ab_bytes);
    }
}
