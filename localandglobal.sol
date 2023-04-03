// SPDX-License-Identifier: MIT
pragma solidity 0.8.19;

contract localandgobal{
    function local() external pure returns(int product,int sum)
    {
        int a=5;
        int b=2;
        product=a*b;
        sum=a+b;

    }
    function global() external view returns (address,uint,uint,bytes32)
    {
        address owner=msg.sender;
        uint timestamp=block.timestamp;
        uint blocknumber=block.number;
        bytes32 blckhash=blockhash(block.number);
        return (owner,timestamp,blocknumber,blckhash);
    }
}