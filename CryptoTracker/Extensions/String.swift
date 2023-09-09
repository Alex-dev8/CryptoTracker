//
//  String.swift
//  CryptoTracker
//
//  Created by Alex Cannizzo on 10/09/2023.
//

import Foundation

extension String {
    
    var removingHTMLOccurances: String {
        return self.replacingOccurrences(of: "<[^>]+>", with: "", options: .regularExpression, range: nil)
    }
    
}
