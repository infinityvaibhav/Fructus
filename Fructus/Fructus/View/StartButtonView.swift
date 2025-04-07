//
//  StartButtonView.swift
//  Fructus
//
//  Created by Vaibhav Upadhyay on 26/03/25.
//

import SwiftUI

struct StartButtonView: View {
    //MARK: - Properties
    
    @AppStorage("isOnboarding") var isOnboarding: Bool?
    
    //MARK: - Body
    var body: some View {
        Button {
            isOnboarding = false
        } label: {
            HStack(spacing: 8) {
                Text("Start")
                Image(systemName: "arrow.right.circle")
                    .imageScale(.large)
            }
            .padding(.horizontal, 16)
            .padding(.vertical, 10)
            .background(
                Capsule()
                    .strokeBorder(.white, lineWidth: 1.25)
            )
        } //Button
        .tint(.white)
    }
}

//MARK: - Preview
#Preview(traits: .sizeThatFitsLayout) {
    StartButtonView()
}
