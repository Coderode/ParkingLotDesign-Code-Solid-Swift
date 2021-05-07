//
//  File.swift
//  
//
//  Created by Sandeep on 07/05/21.
//

import Foundation
protocol Scanner : class {
    var ticket : Ticket? { get set }
    func scan()
}

class TicketScnner : Scanner {
    var ticket : Ticket?
    init(){
        self.ticket = nil
    }
    func scan() {
        if let ticket = self.ticket{
            /// Start scanning the ticket
        }
    }
}
