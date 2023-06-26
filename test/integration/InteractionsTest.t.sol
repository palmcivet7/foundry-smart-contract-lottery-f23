// SPDX-License-Identifer: MIT

pragma solidity ^0.8.18;

import {DeployRaffle} from "../../script/DeployRaffle.s.sol";
import {Raffle} from "../../src/Raffle.sol";
import {HelperConfig} from "../../script/HelperConfig.s.sol";
import {Test, console} from "forge-std/Test.sol";

contract InteractionsTest is Test {
    DeployRaffle deployer;
    Raffle raffle;
    HelperConfig helperConfig;

    function setUp() external {
        deployer = new DeployRaffle();
    }

    function testDeployment() public {
        (raffle, helperConfig) = deployer.run();

        assert(raffle != Raffle(address(0)));
        assert(helperConfig != HelperConfig(address(0)));

        uint256 entranceFee;
        uint256 interval;
        address vrfCoordinator;
        bytes32 gasLane;
        uint64 subscriptionId;
        uint32 callbackGasLimit;
        address link;
        uint256 deployerKey;

        (
            entranceFee,
            interval,
            vrfCoordinator,
            gasLane,
            subscriptionId,
            callbackGasLimit,
            link,
            deployerKey
        ) = helperConfig.activeNetworkConfig();

        assert(entranceFee > 0);
        assert(interval > 0);
        assert(vrfCoordinator != address(0));
        assert(gasLane != bytes32(0));
        // assert(subscriptionId > 0);
        assert(callbackGasLimit > 0);
        assert(link != address(0));
        assert(deployerKey > 0);
    }
}
