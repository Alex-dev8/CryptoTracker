//
//  UIApplication.swift
//  CryptoTracker
//
//  Created by Alex Cannizzo on 03/09/2023.
//

import Foundation
import SwiftUI

extension UIApplication {
    
    func endEditing() {
        sendAction(#selector(UIResponder.resignFirstResponder), to: nil, from: nil, for: nil)
    }
}
