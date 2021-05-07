//
//  File.swift
//  
//
//  Created by Sandeep on 07/05/21.
//

import Foundation
protocol TicketPaymentProcessing : class {
    var id : String { get set }
    var scanner : Scanner { get set }
    func scanTicket(ticket : Ticket)
    func paymentProcessing(payment : TicketPayment, transaction : Transaction)
}

class TicketPaymentProcessingImp : TicketPaymentProcessing{
    var id: String
    var scanner: Scanner
    init(id : String, scanner : Scanner){
        self.id = id
        self.scanner = scanner
    }
    func scanTicket(ticket: Ticket) {
        self.scanner.ticket = ticket
        self.scanner.scan()
    }
    func paymentProcessing(payment : TicketPayment, transaction : Transaction) {
        payment.paymentProcessing(transaction: transaction)
    }
}

protocol ParkingExitPanel {
    
}

class ParkingExitPortal : TicketPaymentProcessingImp, ParkingExitPanel {
    /// other features of exit panel
}


