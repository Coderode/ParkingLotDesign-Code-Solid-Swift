//
//  File.swift
//  
//
//  Created by Sandeep on 07/05/21.
//

import Foundation

protocol SpotOperations : class {
    func removeVehicle() -> Bool
    func assignVehicle(vehicle : Vehicle) -> Bool
}

protocol ParkingSpot : SpotOperations {
    var id : String { get set }
    var isFree : Bool { get set }
    var vehicle : Vehicle? { get set }
}

class ParkingSpotImp : ParkingSpot {
    var id: String
    var isFree: Bool
    var vehicle: Vehicle?
    init(id : String){
        self.id = id
        self.isFree = true
        self.vehicle = nil
    }
    func removeVehicle() -> Bool {
        if isFree {
            return false
        }
        self.vehicle = nil
        self.isFree = true
        return true
    }
    
    func assignVehicle(vehicle: Vehicle) -> Bool {
        if !isFree {
            return false
        }
        self.vehicle = vehicle
        self.isFree = false
        return true
    }
}

class HandicappedSpot : ParkingSpotImp {
   
}

class CompactSpot : ParkingSpotImp {
    
}

class LargeSpot : ParkingSpotImp {
    
}

class MotorbikeSpot : ParkingSpotImp {
    
}

class ElectricSpot : ParkingSpotImp {
    var chargingPanel : ChargingPanel
    init(id : String, chargingPanel : ChargingPanel){
        self.chargingPanel = chargingPanel
        super.init(id: id)
    }
}
