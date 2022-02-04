// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract HashFunction {

    mapping(string => uint256) public hashTable;

    function getTotalSum(uint[] memory _data) public pure returns(uint) {
    uint tmarks;
       for (uint256 i = 0; i < _data.length; i++) {
            tmarks += _data[i];
        } 
       return tmarks; 
   }
    function createMarksheet(string memory _rno,uint[] memory _data) public {
      hashTable[_rno] = getHash(_rno,getTotalSum(_data));
   }

    function getHash(string memory _rno ,uint _tmarks) public pure returns (uint){
        return uint(keccak256(abi.encodePacked(_rno,_tmarks)));
   }

   function checkMsHash(string memory _rno,uint[] memory _data) public view returns (bool){

         if ( hashTable[_rno] == getHash(_rno,getTotalSum(_data))) 
         {
             return true;
         } 
         else
          {
          return false;
          }
   }

}