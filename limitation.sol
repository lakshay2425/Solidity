pragma solidity ^0.8.10;

//It will cover the limitation of Solidity and Smart Contract

//Syntax to declare Array
contract Limitation{
uint[] public arr;
uint [] public array = [1,2,3];
/*arr being array name
public- access modifier
uint type of data you want in the array
*/

//Function to modify array of fixed size
function ModifyArray(uint value, uint index) public{
 arr[index] = value;
 }
 
 
//Function to modify array of dynamic size
function ModifyArray(uint value) public{
 arr.push(value);
 }
 //Function to get length of the array
 function GetLength() external view returns(uint){
 return arr.length;
 }
 string public hello = 'World';

//You have to specify that you want to store it in memory, not state.
function SetString(string memory value) public{
hello = value;
}

function loop(uint n) public pure{
	uint sum = 0;
	for(uint i; i<n;i++){
		sum += i;
	}
}
/*
Things to know:
1. There are no properties or methods for Strings in Solidity.
2. They are just used to store values.
3. Loops, Strings, and Array are expensive to use in Smart Contract.
*/

//Syntax of Declartion of Struct
struct Person{
uint age;
string name;
}
// Example to create a object from  Struct
Person person = Person(18,'Lakshay');

}