//
//  File.swift
//  
//
//  Created by Sandeep on 07/05/21.
//

import Foundation
protocol TicketPayment {
    var ticket : Ticket { get set }
    var payment : Payment { get set }
    func paymentProcessing(transaction : Transaction)
}


class TicketScanPayment : TicketPayment {
    var ticket: Ticket
    var payment: Payment
    init(ticket : Ticket, payment : Payment){
        self.ticket = ticket
        self.payment = payment
    }
    func paymentProcessing(transaction: Transaction) {
        self.payment.delegate = System.parkinglot
        self.payment.paymentProcessing(transaction: transaction)
        if transaction.status.value == Paid().value{
            self.ticket.status = Paid()
            self.ticket.payedAt = Date()
        }
    }
}

class CreditCardPayment : TicketPayment {
    var ticket: Ticket
    var payment: Payment
    init(ticket : Ticket, payment : Payment){
        self.ticket = ticket
        self.payment = payment
    }
    func paymentProcessing(transaction: Transaction) {
        self.payment.delegate = System.parkinglot
        self.payment.paymentProcessing(transaction: transaction)
        if transaction.status.value == Paid().value{
            self.ticket.status = Paid()
            self.ticket.payedAt = Date()
        }
    }
}

class CashPayment : TicketPayment {
    var ticket: Ticket
    var payment: Payment
    init(ticket : Ticket, payment : Payment){
        self.ticket = ticket
        self.payment = payment
    }
    func paymentProcessing(transaction: Transaction) {
        self.payment.delegate = System.parkinglot
        self.payment.paymentProcessing(transaction: transaction)
        if transaction.status.value == Paid().value{
            self.ticket.status = Paid()
            self.ticket.payedAt = Date()
        }
    }
}
