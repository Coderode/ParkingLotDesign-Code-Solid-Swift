//
//  File.swift
//  
//
//  Created by Sandeep on 07/05/21.
//

import Foundation
protocol PaymentStatus : class {
    var value : String { get set }
}

class Initiated : PaymentStatus {
    var value: String = "Initiated"
}
class NotPaid : PaymentStatus {
    var  value: String = "Not Paid"
}
