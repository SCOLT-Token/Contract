// SPDX-License-Identifier: UNLICENSED
pragma solidity ^0.8.10;

interface IBEP20 {
<<<<<<< HEAD

    function totalSupply() external view returns (uint256);

    function decimals() external view returns (uint8);

    function symbol() external view returns (string memory);

    function name() external view returns (string memory);

    function getOwner() external view returns (address);

    function balanceOf(address account) external view returns (uint256);

=======
    /**
     * @dev Returns the amount of tokens in existence.
     */
    function totalSupply() external view returns (uint256);

    /**
     * @dev Returns the token decimals.
     */
    function decimals() external view returns (uint8);

    /**
     * @dev Returns the token symbol.
     */
    function symbol() external view returns (string memory);

    /**
     * @dev Returns the token name.
     */
    function name() external view returns (string memory);

    /**
     * @dev Returns the bep token owner.
     */
    function getOwner() external view returns (address);

    /**
     * @dev Returns the amount of tokens owned by `account`.
     */
    function balanceOf(address account) external view returns (uint256);

    /**
     * @dev Moves `amount` tokens from the caller's account to `recipient`.
     *
     * Returns a boolean value indicating whether the operation succeeded.
     *
     * Emits a {Transfer} event.
     */
>>>>>>> bbec1c655376affb34ceeb73374165bcf596fdd5
    function transfer(address recipient, uint256 amount)
        external
        returns (bool);

<<<<<<< HEAD
    function approve(address spender, uint256 amount) external returns (bool);

=======
    /**
     * @dev Sets `amount` as the allowance of `spender` over the caller's tokens.
     *
     * Returns a boolean value indicating whether the operation succeeded.
     *
     * IMPORTANT: Beware that changing an allowance with this method brings the risk
     * that someone may use both the old and the new allowance by unfortunate
     * transaction ordering. One possible solution to mitigate this race
     * condition is to first reduce the spender's allowance to 0 and set the
     * desired value afterwards:
     * https://github.com/ethereum/EIPs/issues/20#issuecomment-263524729
     *
     * Emits an {Approval} event.
     */
    function approve(address spender, uint256 amount) external returns (bool);

    /**
     * @dev Moves `amount` tokens from `sender` to `recipient` using the
     * allowance mechanism. `amount` is then deducted from the caller's
     * allowance.
     *
     * Returns a boolean value indicating whether the operation succeeded.
     *
     * Emits a {Transfer} event.
     */
>>>>>>> bbec1c655376affb34ceeb73374165bcf596fdd5
    function transferFrom(
        address sender,
        address recipient,
        uint256 amount
    ) external returns (bool);

<<<<<<< HEAD
    event Transfer(address indexed from, address indexed to, uint256 value);

    event Burn(address indexed burner, uint256 value);

    event Mint(address indexed minter, uint256 value);

=======
    /**
     * @dev Emitted when `value` tokens are moved from one account (`from`) to
     * another (`to`).
     *
     * Note that `value` may be zero.
     */
    event Transfer(address indexed from, address indexed to, uint256 value);

    /**
     * @dev Emitted when `value` tokens are burned from one account.
     *
     * Note that `value` may be zero.
     */
    event Burn(address indexed burner, uint256 value);

    /**
     * @dev Emitted when `value` tokens are burned from one account.
     *
     * Note that `value` may be zero.
     */
    event Mint(address indexed minter, uint256 value);

    /**
     * @dev Emitted when the allowance of a `spender` for an `owner` is set by
     * a call to {approve}. `value` is the new allowance.
     */
>>>>>>> bbec1c655376affb34ceeb73374165bcf596fdd5
    event Approval(
        address indexed owner,
        address indexed spender,
        uint256 value
    );

<<<<<<< HEAD
    function allowance(address owner, address spender) external view returns (uint256);

    // Custom Event for making log entry for contract
    event ContributionAirDropUpdate(
        uint256 _total_beneficiary_count,
        uint256 _distributed_amount,
        uint256 _total_eligible_circulation,
        uint256 _timestamp
    );
    event ContributionAddedToContributionDistributionVariable(uint256 contribution);

    event PublicAirDrop(
        uint256 _total_amount,
        uint256 _number_of_reciepent,
        uint256 _timestamp
    );

    event ProfitAirDrop(
        uint256 _total_beneficiary_count,
        uint256 _distributed_amount,
        uint256 _total_eligible_circulation,
        uint256 _timestamp
    );

    event ContributionDeductionAndBurningLog(
        uint256 _marketing_contribution,
        uint256 _development_contribution,
        uint256 _holder_contribution,
        uint256 _burn_amount
    );

=======
    /**
     * @dev Returns the remaining number of tokens that `spender` will be
     * allowed to spend on behalf of `owner` through {transferFrom}. This is
     * zero by default.
     *
     * This value changes when {approve} or {transferFrom} are called.
     */
     function allowance(address owner, address spender) external view returns (uint256);
>>>>>>> bbec1c655376affb34ceeb73374165bcf596fdd5
}
