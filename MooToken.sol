// SPDX-License-Identifier: MIT

pragma solidity ^0.8.3;

import "./voting/TransferrableVotingToken.sol";

/**
 * Moola governance token, based on Ube.
 */
contract MooToken is TransferrableVotingToken {
    /// @notice The maximum supply of Ube Tokens.
    uint96 public constant MAX_SUPPLY = 100_000_000e18;

    /**
     * @notice Construct a new Moo token
     * Note: this contract doesn't specify an initial minter, so there is no way new
     * tokens can get created.
     * @param _initialOwner The initial account to grant all the tokens
     */
    constructor(address _initialOwner)
        TransferrableVotingToken(
            "Moola",
            "MOO",
            18,
            MAX_SUPPLY,
            _initialOwner
        )
    // solhint-disable-next-line no-empty-blocks
    {
        // Do nothing
    }
}
