//
//  File.swift
//  
//
//  Created by Sandeep on 07/05/21.
//

import Foundation
protocol Printer  : class{
    var ticket : Ticket? { get set }
    func print()
}


class TicketPrinter : Printer {
    var ticket : Ticket?
    init(){
        self.ticket = nil
    }
    func print() {
        /// prints ticket
        if let ticket = self.ticket {
            let info = ticket.getInfo()
        }
    }
}
