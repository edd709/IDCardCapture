//
//  String+Extensions.swift
//  SweetCardScannerExample
//
//  Created by Erio Daniel Díaz on 07/07/2022.
//

import Foundation

extension String {
    
    func subString(from: Int, to: Int) -> String {
        let startIndex = self.index(self.startIndex, offsetBy: from)
        let endIndex = self.index(self.startIndex, offsetBy: to)
        return String(self[startIndex...endIndex])
    }
    
}
