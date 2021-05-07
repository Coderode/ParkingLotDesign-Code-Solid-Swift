//
//  File.swift
//  
//
//  Created by Sandeep on 07/05/21.
//

import Foundation

protocol ChargingPanel : class {
    var chargingStartTime : Date? { get set }
    var chargingEndTime : Date? { get set }
    var payment : Payment? { get set }
    func startCharging()
    func endCharging()
    func payForCharging(transaction : Transaction)
    func updatePayment(payment : Payment)
}
class ElectricPanel : ChargingPanel {
    var chargingStartTime : Date?
    var chargingEndTime : Date?
    var payment : Payment?
    init(){
        self.chargingStartTime = nil
        self.chargingEndTime = nil
    }
    func startCharging(){
        self.chargingStartTime = Date()
        print("started charging...")
    }
    func endCharging(){
        self.chargingEndTime = Date()
        print("Charging ended.")
    }
    
    func updatePayment(payment : Payment){
        self.payment = payment
    }
    func payForCharging(transaction : Transaction){
        if let pay = payment {
            pay.paymentProcessing(transaction: transaction)
        }
    }
}
