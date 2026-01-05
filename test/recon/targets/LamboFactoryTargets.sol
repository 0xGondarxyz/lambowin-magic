// SPDX-License-Identifier: GPL-2.0
pragma solidity ^0.8.0;

import {BaseTargetFunctions} from "@chimera/BaseTargetFunctions.sol";
import {BeforeAfter} from "../BeforeAfter.sol";
import {Properties} from "../Properties.sol";
// Chimera deps
import {vm} from "@chimera/Hevm.sol";

// Helpers
import {Panic} from "@recon/Panic.sol";

import "src/LamboFactory.sol";

abstract contract LamboFactoryTargets is
    BaseTargetFunctions,
    Properties
{
    /// CUSTOM TARGET FUNCTIONS - Add your own target functions here ///


    /// AUTO GENERATED TARGET FUNCTIONS - WARNING: DO NOT DELETE OR MODIFY THIS LINE ///

    function lamboFactory_addVTokenWhiteList(address virtualLiquidityToken) public asActor {
        lamboFactory.addVTokenWhiteList(virtualLiquidityToken);
    }

    function lamboFactory_createLaunchPad(string memory name, string memory tickname, uint256 virtualLiquidityAmount, address virtualLiquidityToken) public asActor {
        lamboFactory.createLaunchPad(name, tickname, virtualLiquidityAmount, virtualLiquidityToken);
    }

    function lamboFactory_removeVTokenWhiteList(address virtualLiquidityToken) public asActor {
        lamboFactory.removeVTokenWhiteList(virtualLiquidityToken);
    }

    function lamboFactory_renounceOwnership() public asActor {
        lamboFactory.renounceOwnership();
    }

    function lamboFactory_transferOwnership(address newOwner) public asActor {
        lamboFactory.transferOwnership(newOwner);
    }
}