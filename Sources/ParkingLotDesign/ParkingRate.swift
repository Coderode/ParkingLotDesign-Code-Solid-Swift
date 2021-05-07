//
//  File.swift
//  
//
//  Created by Sandeep on 08/05/21.
//

import Foundation

protocol ParkingRate : class{
    var hourNumber : Int { get set }
    var rate : Double { get set }
}

class ParkingRateImp : ParkingRate {
    var hourNumber: Int
    var rate: Double
    
    init(hourNumber : Int,rate : Double ){
        self.hourNumber = hourNumber
        self.rate = rate
    }
}
