// SPDX-License-Identifier: UNLICENSED
pragma solidity ^0.8.10;

<<<<<<< HEAD
abstract contract Context {
=======
/*
 * @dev Provides information about the current execution context, including the
 * sender of the transaction and its data. While these are generally available
 * via msg.sender and msg.data, they should not be accessed in such a direct
 * manner, since when dealing with GSN meta-transactions the account sending and
 * paying for execution may not be the actual sender (as far as an application
 * is concerned).
 *
 * This contract is only required for intermediate, library-like contracts.
 */

abstract contract Context {
    // Empty internal constructor, to prevent people from mistakenly deploying
    // an instance of this contract, which should be used via inheritance.
>>>>>>> bbec1c655376affb34ceeb73374165bcf596fdd5

    function _msgSender() internal view returns (address) {
        return msg.sender;
    }

    function _msgData() internal view returns (bytes memory) {
<<<<<<< HEAD
        this; 
=======
        this; // silence state mutability warning without generating bytecode - see https://github.com/ethereum/solidity/issues/2691
>>>>>>> bbec1c655376affb34ceeb73374165bcf596fdd5
        return msg.data;
    }
}

contract Ownable is Context {
    address private _owner;

    event OwnershipTransferred(
        address indexed previousOwner,
        address indexed newOwner
    );

<<<<<<< HEAD
=======
    /**
     * @dev Initializes the contract setting the deployer as the initial owner.
     */
>>>>>>> bbec1c655376affb34ceeb73374165bcf596fdd5
    constructor() {
        address msgSender = _msgSender();
        _owner = msgSender;
        emit OwnershipTransferred(address(0), msgSender);
    }

<<<<<<< HEAD
=======
    /**
     * @dev Returns the address of the current owner.
     */
>>>>>>> bbec1c655376affb34ceeb73374165bcf596fdd5
    function owner() public view returns (address) {
        return _owner;
    }

<<<<<<< HEAD
    modifier onlyOwner() {
        require(_owner == _msgSender(), "SCOLT : (Ownable) This function is only accesible by owner.");
        _;
    }

=======
    /**
     * @dev Throws if called by any account other than the owner.
     */
    modifier onlyOwner() {
        require(_owner == _msgSender(), "SCOM: (Ownable) This function is only accesible by owner.");
        _;
    }

    /**
     * @dev Leaves the contract without owner. It will not be possible to call
     * `onlyOwner` functions anymore. Can only be called by the current owner.
     *
     * NOTE: Renouncing ownership will leave the contract without an owner,
     * thereby removing any functionality that is only available to the owner.
     */
>>>>>>> bbec1c655376affb34ceeb73374165bcf596fdd5
    function renounceOwnership() public onlyOwner {
        emit OwnershipTransferred(_owner, address(0));
        _owner = address(0);
    }

<<<<<<< HEAD
=======
    /**
     * @dev Transfers ownership of the contract to a new account (`newOwner`).
     * Can only be called by the current owner.
     */
>>>>>>> bbec1c655376affb34ceeb73374165bcf596fdd5
    function transferOwnership(address newOwner) public onlyOwner {
        _transferOwnership(newOwner);
    }

<<<<<<< HEAD
    function _transferOwnership(address newOwner) internal {
        require(
            newOwner != address(0),
            "SCOLT : (Ownable) Can not transfer ownership to ZERO address."
=======
    /**
     * @dev Transfers ownership of the contract to a new account (`newOwner`).
     */
    function _transferOwnership(address newOwner) internal {
        require(
            newOwner != address(0),
            "SCOM: (Ownable) Can not transfer ownership to ZERO address."
>>>>>>> bbec1c655376affb34ceeb73374165bcf596fdd5
        );
        emit OwnershipTransferred(_owner, newOwner);
        _owner = newOwner;
    }
}
