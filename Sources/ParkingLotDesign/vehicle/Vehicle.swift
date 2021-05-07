//
//  File.swift
//  
//
//  Created by Sandeep on 07/05/21.
//

import Foundation

protocol Vehicle : class {
    var liscenseNumber : String { get set }
    var parkingTicket : ParkingTicket { get set }
}

protocol Electric : Vehicle {
    var chargeStartTime : Date { get set }
    var chargeEndTime : Date { get set }
    func getChargingDuration() -> Int
}

///implementation for vehicle protocol
class VehicleImp : Vehicle {
    var liscenseNumber: String
    var parkingTicket: ParkingTicket
    
    init(liscenseNumber : String, parkingTicket : ParkingTicket){
        self.liscenseNumber = liscenseNumber
        self.parkingTicket = parkingTicket
    }
}

///implementation for electric protocol
class ElectricImp : VehicleImp,Electric {
    var chargeStartTime: Date {
        get{
            return self.chargeStartTime
        }set{
            self.chargeStartTime = newValue
        }
    }
    var chargeEndTime: Date {
        get {
            return self.chargeEndTime
        }set{
            self.chargeEndTime = newValue
        }
    }
    func getChargingDuration() -> Int {
        let diffComponents = Calendar.current.dateComponents([.minute], from: chargeStartTime, to: chargeEndTime)
        let hours = diffComponents.hour ?? 0
        return hours
    }
}


///different car types

class Car : VehicleImp {
    
}

class Truck : VehicleImp {
    
}

class Van : VehicleImp {

}

class Motorbike : VehicleImp {

}

class ElectricCar : ElectricImp {
   
}
