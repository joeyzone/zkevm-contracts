// SPDX-License-Identifier: AGPL-3.0
pragma solidity 0.8.20;
import "../interfaces/IConsumer.sol";
import {IERC20} from "@openzeppelin/contracts/token/ERC20/IERC20.sol";

contract Consumer is IConsumer {
    address public wbtc;

    constructor() {}

    function setWbtc(address _wbtc) public {
        wbtc = _wbtc;
    }

    function withdraw(
        uint256 amount,
        bytes memory recipient,
        address
    ) external payable override {
        IERC20(wbtc).transferFrom(msg.sender, address(this), amount);
    }

    function getTotalWithdrawFee(
        uint256 amount,
        bytes calldata recipient
    )
        external
        view
        override
        returns (uint256 bridgeFee_, uint256 withdrawFee_)
    {}

    function convertAmountToL1(
        uint256 amount
    ) public view returns (uint256 convertedL1Amount) {}
}