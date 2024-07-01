// SPDX-License-Identifier: AGPL-3.0

pragma solidity ^0.8.20;

interface IConsumer {
    function widthdraw(
        uint256 amount,
        bytes memory recipient,
        address refundAddress
    ) external payable;

    function getTotalWithdrawFee(
        uint256 amount,
        bytes calldata recipient
    ) external view returns (uint256 bridgeFee_, uint256 withdrawFee_);

    function convertAmountToL1(
        uint256 amount
    ) external view returns (uint256 convertedL1Amount);
}
