//
//  StatisticModel.swift
//  CryptoTracker
//
//  Created by Alex Cannizzo on 04/09/2023.
//

import Foundation

// To use a model in a ForEach loop we must use identifiable or hashable
struct StatisticModel: Identifiable {
    
    // we don't use the id in this project. we only need it for the foreach loops
    let id = UUID().uuidString
    let title: String
    let value: String
    let percentageChange: Double?
    
    // set default value for percentageChange to nil so that when we create a new statistics model we don't have to pass nil each time
    init(title: String, value: String, percentageChange: Double? = nil) {
        self.title = title
        self.value = value
        self.percentageChange = percentageChange
    }
    
}
