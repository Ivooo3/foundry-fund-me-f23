// SPDX-License-Identifier: MIT
pragma solidity ^0.8.19;

import {Script} from "forge-std/Script.sol";
import {FundMe} from "../src/FundMe.sol";
import {HelperConfig} from "../script/HelperConfig.s.sol";

contract DeployFundMe is Script {
    function run() external returns (FundMe) {
        //Before startBroadCast -> not a real transaction
        // wont be deployed to the real chain thus will not be payed gas for it
        HelperConfig helperConfig = new HelperConfig();
        //in our case we have structure with only one param so we can do this
        //but if we had more params we needed to do it this way :
        //(address ethUsdPriceFeed, , , ) = helperConfig.activeNetworkConfig();
        address ethUsdPriceFeed = helperConfig.activeNetworkConfig();

        //after startBroadCast is real trx
        vm.startBroadcast();
        FundMe fundMe = new FundMe(ethUsdPriceFeed);
        vm.stopBroadcast();
        return fundMe;
    }
}
