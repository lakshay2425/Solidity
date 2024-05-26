pragma solidity ^0.8.10;

// contract MyContract{
//     uint public age = 18;

//     function SetAge(uint _age)  public {
//         age = _age;
//     }

//     // View is read only method. It doesn't allow us to modify the contract.
//     function GetBalance () public view returns (uint){
//     return address(this).balance;
//     }

//     address public LastSender;
//     uint public value;
//     uint public GasFee;

//        //It doesn't require any block of code to receive money
//     function Receive() external payable{
//         LastSender = msg.sender; // To know who made the last transaction
//         value = msg.value; // To know how much money we receive from the transaction
//         GasFee = gasleft(); // To know how much gas fee is used to done the transaction
//     }
//     /* msg is a global value. We can use to get all the information about the 
//     transaction that called the contract. */

//     //Code to send money from the smart contract
//     function pay(address payable addr) public payable{
//         (bool sent, bytes memory data) = addr.call{value:100}("");
//     }
// }


contract Bank{
    mapping(address => uint) private balances;

    function GetBalance() public view returns (uint){
        return address(this).balance;
    }

    function Deposit() external payable{
        balances[msg.sender] += msg.value;
    }

function Withdraw(address payable addr, uint amount) public payable {
    require(addr!= address(this), "Cannot withdraw to self");
    require(balances[addr] >= amount, "Insufficient funds");
    (bool sent, bytes memory data) = addr.value{value: amount}("");
    require(sent, "Couldn't withdraw");
    balances[addr] -= amount;
}
}