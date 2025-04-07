//
//  OnboardingView.swift
//  Fructus
//
//  Created by Vaibhav Upadhyay on 26/03/25.
//

import SwiftUI

struct OnboardingView: View {
    //MARK: - Properties
    
    var fruits: [Fruit] = fruitsData
    
    //MARK: - Body
    var body: some View {
        TabView {
            ForEach(fruits) { item in
                FruitCardView(fruit: item)
            }
        } //TabView
        .tabViewStyle(.page)
        .padding(.vertical, 20)
    }
}

//MARK: - Preview
#Preview {
    OnboardingView()
}
