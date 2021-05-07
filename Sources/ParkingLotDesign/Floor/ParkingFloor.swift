//
//  File.swift
//  
//
//  Created by Sandeep on 08/05/21.
//

import Foundation

protocol DisplayBoardOperation {
    func updateDisplayBoard()
    
}

protocol VehicleManager {
    func assignVehicleToSpot(vehicle: Vehicle) -> Bool
}

protocol SpotAvailablity {
    func isFull() -> Bool
}

protocol ParkingFloor : class, DisplayBoardOperation, SpotAvailablity, VehicleManager{
    var id : String { get set }
    //composition of parking floor
    var pakringSpots : [ParkingSpot] { get set }
    var displayBorad : DisplayBoard { get set }
    var customerInfoPanel : CustomerInfoPanel { get set }
    func getFreeSpots() -> [ParkingSpot]
    func addParkingSpot(spot : ParkingSpot)
}


class ParkingFloorImp : ParkingFloor {
    var id: String
    var pakringSpots: [ParkingSpot]
    var displayBorad: DisplayBoard
    var customerInfoPanel: CustomerInfoPanel
    init(id: String, parkingSpots : [ParkingSpot], displayBoard : DisplayBoard, customerInfoPanel : CustomerInfoPanel) {
        self.id = id
        self.pakringSpots = parkingSpots
        self.displayBorad = displayBoard
        self.customerInfoPanel = customerInfoPanel
    }
    
    func getFreeSpots() -> [ParkingSpot] {
        /// process all the spots and return all the available spots
        var emptyspots = [ParkingSpot]()
        for item in pakringSpots {
            if item.isFree {
                emptyspots.append(item)
            }
        }
        return emptyspots
    }
    func addParkingSpot(spot: ParkingSpot) {
        self.pakringSpots.append(spot)
    }
    func updateDisplayBoard() {
        /// get free spots using above method and update empty spots variable of DisplayBoard
        self.displayBorad.emptySpots = getFreeSpots()
    }
    
    func isFull() -> Bool {
        /// process all the spots and count all spot which are free
        for item in pakringSpots {
            if item.isFree {
                return false
            }
        }
        return true
    }
    
    func assignVehicleToSpot(vehicle: Vehicle) -> Bool {
        /// if floor is not full and have vehicle type spot availability
        /// then assign vehicle to that spot
        return true
    }
    
    
}
