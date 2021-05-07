//
//  File.swift
//  
//
//  Created by Sandeep on 07/05/21.
//

import Foundation

protocol TicketGenerator {
    func generateTicket(amount : Double) -> Ticket?
}


protocol ParkingAttendantPanel {
    
}

class ParkingAttendantPortal : TicketPaymentProcessingImp, ParkingAttendantPanel {
    var ticketGenerator : TicketGenerator
    init(id : String, scanner : Scanner, ticketGenerator : TicketGenerator ){
        self.ticketGenerator = ticketGenerator
        super.init(id: id, scanner: scanner)
    }
    /// other required features
    func generateTicket(amount : Double) -> Ticket? {
        return self.ticketGenerator.generateTicket(amount: amount)
    }
}
