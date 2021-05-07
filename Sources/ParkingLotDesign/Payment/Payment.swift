//
//  File.swift
//  
//
//  Created by Sandeep on 07/05/21.
//

import Foundation
protocol Transaction {
    var id : String { get set }
    var createdAt : Date { get set }
    var amount : Double { get set }
    var status : PaymentStatus { get set }
}
protocol SaveTransaction {
    func saveTransaction(transaction : Transaction)
}

protocol Payment  : class{
    var delegate : SaveTransaction? { get set }
    func paymentProcessing(transaction : Transaction)
}

class TicketScanPaymentProcessing : Payment{
    var delegate: SaveTransaction?
    func paymentProcessing(transaction: Transaction) {
        /// do payment processing via sanning the ticket
        ///then save this transction to database
        self.delegate?.saveTransaction(transaction: transaction)
    }
}


class CreditCardPaymentProcessing : Payment {
    var delegate: SaveTransaction?
    func paymentProcessing(transaction: Transaction) {
        /// do payment processing via credit card
        ///then save this transction to database
        self.delegate?.saveTransaction(transaction: transaction)
    }
}


class CashPaymentProcessing : Payment {
    var delegate: SaveTransaction?
    func paymentProcessing(transaction: Transaction) {
        /// do payment processing via Cash payment
        ///then save this transction to database
        self.delegate?.saveTransaction(transaction: transaction)
    }
}



