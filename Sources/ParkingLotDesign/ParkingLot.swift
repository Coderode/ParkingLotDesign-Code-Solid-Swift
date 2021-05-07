//
//  File.swift
//  
//
//  Created by Sandeep on 08/05/21.
//

import Foundation
/// main or System of the Parking Lot
class ParkingLot {
    var id : String
    var address : Location
    //compositions
    var entrancePanels : [EntrancePanel]
    var exitPanels : [ParkingExitPanel]
    var parkingAttendantPortal : [ParkingAttendantPanel]
    var parkingTickets : [Ticket]
    var parkingRates : [ParkingRate]
    var parkingFloors : [ParkingFloor]
    var transactions : [Transaction]
    
    init(id : String, address : Location){
        self.id = id
        self.address = address
        self.entrancePanels = [EntrancePanel]()
        self.exitPanels = [ParkingExitPanel]()
        self.parkingAttendantPortal = [ParkingAttendantPanel]()
        self.parkingTickets = [Ticket]()
        self.parkingRates = [ParkingRate]()
        self.parkingFloors = [ParkingFloor]()
        self.transactions = [Transaction]()
    }
}
extension ParkingLot :  ParkingFloorManager, ParkingSpotManager, ParkingRateManager, PanelManager {
    func addParkingFloor(floor: ParkingFloor) -> Bool {
        self.parkingFloors.append(floor)
        return true
    }
    
    func addParkingSpot(spot: ParkingSpot, floor : ParkingFloor) -> Bool {
        for item in parkingFloors {
            //chekcing reference of object
            if item === floor {
                item.addParkingSpot(spot: spot)
                return true
            }
        }
        return false
    }
    
    func addParkingRate(rate: ParkingRate) -> Bool {
        self.parkingRates.append(rate)
        return true
    }
    
    func modifyParkingRate(ratehour : Int) -> Bool {
        ///modify a particular hour rate amount
        return true
    }
    
    func addEntrancePanel(panel: EntrancePanel) -> Bool {
        self.entrancePanels.append(panel)
        return true
    }
    
    func addExitPanel(panel: ParkingExitPanel) -> Bool {
        self.exitPanels.append(panel)
        return true
    }
}

extension ParkingLot : TicketGenerator {
    func generateTicket(amount : Double) -> Ticket? {
        let ticket : Ticket = ParkingTicket(ticketNubmer: "\(self.parkingTickets.count)", issuedAt: Date(), amount: amount)
        self.parkingTickets.append(ticket)
        return ticket
    }
}

extension ParkingLot : SaveTransaction {
    func saveTransaction(transaction: Transaction) {
        self.transactions.append(transaction)
    }
}



protocol Location {
    var plotno : Int { get set }
    var area : String { get set }
    var lat : Double { get set }
    var long : Double { get set }
}
class LocationImp : Location {
    var plotno: Int
    
    var area: String
    
    var lat: Double
    
    var long: Double
    
    init(plotno : Int, area : String, lat : Double, long : Double){
        self.plotno = plotno
        self.area = area
        self.lat = lat
        self.long = long
    }
}
