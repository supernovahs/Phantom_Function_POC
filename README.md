# Phantom_Function_POC in smart contracts that let to a recent [hack](https://twitter.com/MultichainOrg/status/1483733455296860160).

## What are Phantom Functions?
When you call a particular function on a contract, which does not even exist , devs expect it to be reverted by the EVM . But , some contracts , implement a fallback function , which does not revert on any data. 
WETH is the same . Hence any phantom call to WETH  will not revert which can be dangerous if not handled properly. 

## To run 

```
forge test --fork-url <RPC MAINNET URL> --match-path test/Phantom.t.sol

```


Thanks to [Patrickd](https://twitter.com/patrickd_de) for giving inspiration in the [Secureum](https://twitter.com/TheSecureum) Race12.
