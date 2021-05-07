//
//  File.swift
//  
//
//  Created by Sandeep on 07/05/21.
//

import Foundation

protocol Account : class {
    var username : String { get set }
    var password : String { get set }
    var status : AccountStatus { get set }
}


protocol ViewAccount {
    func viewInfo()
}

protocol UpdateAccount {
    func updateAccount()
}

class InternalUser : Account, ViewAccount, UpdateAccount {
    internal var username: String
    internal var password: String
    var status: AccountStatus
    init(username : String, password : String){
        self.username = username
        self.password = password
        self.status = None()
    }
    func viewInfo() {
        /// show  info
    }
    func updateAccount() {
        /// update  info
    }
}
class Admin : InternalUser {
    
}

class ParkingAttendent : InternalUser {
    
}
