//
//  File.swift
//  
//
//  Created by Sandeep on 07/05/21.
//

import Foundation
protocol AccountStatus : class {
    var value : String { get set }
}

class Active : AccountStatus, ParkingTicketStatus {
    var value: String = "Active"
}

class Closed : AccountStatus {
    var value: String = "Closed"
}

class Cancelled : AccountStatus {
    var value: String = "Cancelled"
}

class Blacklisted : AccountStatus {
    var value: String = "Blacklisted"
}

class None : AccountStatus {
    var value: String = "None"
}
