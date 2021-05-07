//
//  File.swift
//  
//
//  Created by Sandeep on 08/05/21.
//

import Foundation

protocol DisplayBoard : class {
    var id : String { get set }
    var emptySpots : [ParkingSpot] { get set }
    func showDetails()
}

class ParkingDisplayBoard : DisplayBoard {
    var id: String
    var emptySpots: [ParkingSpot]
    init(id : String){
        self.id = id
        self.emptySpots = [ParkingSpot]()
    }
    func showDetails() {
        /// process empty spots and display each type of emtpy spots available on the floor
    }
}


