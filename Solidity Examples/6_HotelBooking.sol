// SPDX-License-Identifier: MIT

pragma solidity ^0.8.0;

contract HotelBooking {
    // Example: Hotel Booking
    // CryptoCurrency Payments
    // Modifiers
    // Visibility Setting
    // Working with Solidity Events
    // Enums
    // Vacant or Occupied

    enum Statuses {
        Vacant,
        Occupied
    }
    Statuses public currentStatus;

    event Occupy(address _occupant, uint256 _value);
    
    address payable public owner;

    constructor() {
        owner = payable(msg.sender);
        currentStatus = Statuses.Vacant;
    }

    modifier onlyWhileVacant() {
        require(currentStatus == Statuses.Vacant, "Currently occupied.");
        _;
    }

    modifier costs(uint256 _amount) {
        require(msg.value >= _amount, "Not enough Ether provided.");
        _;
    }

    function book() public payable onlyWhileVacant costs (2 ether) {
        // Check Price & Status
        currentStatus = Statuses.Occupied;

        (bool sent, ) = owner.call{value: msg.value}("");
        require(sent, "Failed to send Ether");

        emit Occupy(msg.sender, msg.value);
    }

}