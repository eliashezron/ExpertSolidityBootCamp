// SPDX-License-Identifier: MIT

pragma solidity ^0.8.17;

contract GasHack {
    // items = [1,2,3,4,5,6,7,8,9,10,11,12]
    // 316766 > 315326

    // for deleting = 43927 gas
    uint256[] items = [1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12];

    function deleteSelectItems(uint256[3] calldata _indexes) external {
        for (uint256 i = 0; i < 3; ) {
            uint256 index = _indexes[i];
            // delete items[index];
            items[index] = items[i + 1];
            assembly {
                sstore(items.slot, sub(sload(items.slot), 1))
            }
            unchecked {
                ++i;
            }
        }
    }

    function getLength() external view returns (uint256) {
        return items.length;
    }

    function getItems() external view returns (uint256[] memory) {
        return items;
    }
}
