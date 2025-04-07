//
//  Fruit.swift
//  Fructus
//
//  Created by Vaibhav Upadhyay on 27/03/25.
//

import SwiftUI

// MARK: - Fruits Data model
struct Fruit: Identifiable {
    var id = UUID()
    var title: String
    var headline: String
    var image: String
    var gradientColors: [Color]
    var description: String
    var nutrition: [String]
}
