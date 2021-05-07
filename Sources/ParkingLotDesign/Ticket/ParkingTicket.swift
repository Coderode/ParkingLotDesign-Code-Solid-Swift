//
//  File.swift
//  
//
//  Created by Sandeep on 07/05/21.
//

import Foundation

protocol Ticket :class {
    var ticketNumber : String { get set }
    var issuedAt : Date { get set }
    var payedAt : Date? { get set }
    var amount : Double  { get set }
    var status : TicketStatus { get set }
    func getInfo() -> String
    
}
class ParkingTicket : Ticket {
    var ticketNumber: String
    var issuedAt: Date
    var payedAt: Date?
    var amount: Double
    var status : TicketStatus
    init(ticketNubmer : String, issuedAt : Date, amount : Double){
        self.ticketNumber = ticketNubmer
        self.issuedAt = issuedAt
        self.payedAt = nil
        self.status = Active()
        self.amount = amount
    }
    func getInfo() -> String{
        return "Ticket"
    }
}
