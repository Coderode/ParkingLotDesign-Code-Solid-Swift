//
//  File.swift
//  
//
//  Created by Sandeep on 07/05/21.
//

import Foundation
protocol EntrancePanel : class {
    var id  : String { get set }
    var printer : Printer { get set }
    func printTicket(ticket : Ticket)
}

class ParkingEntrancePanel : EntrancePanel {
    var id: String
    var printer: Printer
    init(id: String, printer : Printer){
        self.id = id
        self.printer = printer
    }
    func printTicket(ticket : Ticket) {
        self.printer.ticket = ticket
        printer.print()
    }
}
