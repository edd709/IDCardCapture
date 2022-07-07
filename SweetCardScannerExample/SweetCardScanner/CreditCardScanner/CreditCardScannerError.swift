//
//  CreditCardScannerError.swift
//  SweetCardScannerExample
//
//  Created by Erio Daniel Díaz on 07/07/2022.
//

import Foundation

public struct CreditCardScannerError: LocalizedError {
    public enum Kind { case cameraSetup, photoProcessing, authorizationDenied, capture }
    public var kind: Kind
    public var underlyingError: Error?
    public var errorDescription: String? { (underlyingError as? LocalizedError)?.errorDescription }
}
