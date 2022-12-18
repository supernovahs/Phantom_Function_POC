// SPDX-License-Identifier: UNLICENSED
pragma solidity ^0.8.13;

import "forge-std/Test.sol";


interface Random{
    function goo() external ;
}
contract phantomPOC is Test{

    // Run on forked mainnet
address public constant WETH = 0xC02aaA39b223FE8D0A0e5C4F27eAD9083C756Cc2;
address public constant USDC = 0xA0b86991c6218b36c1d19D4a2e9Eb0cE3606eB48;

// @dev WETH has a fallback function which accepts any data , but does not revert .
// Hence any function call made to it will return success.
// Hack  - https://twitter.com/MultichainOrg/status/1483733455296860160
    function testWETHPhantom() public {
        Random(WETH).goo();
    }

// @dev Trying the same thing , but in USDC . But it does not implement the fallback function.
// It should revert.
    function testFailUSDCPhantom() public {
        Random(USDC).goo();
    }

}