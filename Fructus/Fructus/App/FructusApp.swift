//
//  FructusApp.swift
//  Fructus
//
//  Created by Vaibhav Upadhyay on 26/03/25.
//

import SwiftUI

@main
struct FructusApp: App {
    
    @AppStorage("isOnboarding") var isOnboarding: Bool = true
    
    var body: some Scene {
        WindowGroup {
            if isOnboarding {
                OnboardingView()
            } else {
                ContentView()
            }
        }
    }
}
