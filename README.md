# ListUtils
A Solidity library for managing lists in a CRUD situation, ListUtils.sol implements two ways to manage deletions from a solidity array: *swap & delete*, and *delete & shift*. Use with care, both are expensive on gas, especially the delete and shift methods.

## Swap & Delete
The item is swapped with the lst item and deleted. 

## Delete and Shift
The item is deleted and subsequent items are shifted to the left. 

## Sources
Based on solutions offered on [StackOveflow](https://stackoverflow.com/questions/49051856/is-there-a-pop-functionality-for-solidity-arrays).
