//
//  CreditCard.swift
//  SweetCardScannerExample
//
//  Created by Erio Daniel Díaz on 07/07/2022.
//

import Foundation

public struct CreditCard {
    public init(number: String? = nil, name: String? = nil, expireDate: DateComponents? = nil) {
        self.number = number
        self.name = name
        self.expireDate = expireDate
    }
    
    public var number: String?
    public var name: String?
    public var expireDate: DateComponents?
    public var year: Int { expireDate?.year ?? 0 }
    public var month: Int { expireDate?.month ?? 0 }
    public var vendor: CardVendor { CreditCardUtil.getVendor(candidate: self.number) }
    public var isNotExpired: Bool? { CreditCardUtil.isValid(candidate: self.expireDate) }
    
}
