//
//  File.swift
//  
//
//  Created by Sandeep on 07/05/21.
//

import Foundation

protocol TicketStatus : class {
    
}
protocol ParkingTicketStatus : TicketStatus {
    var value : String { get set }
}

class Paid : ParkingTicketStatus, PaymentStatus {
    var value: String = "Paid"
}

class Lost : ParkingTicketStatus {
    var value = "Lost"
}
