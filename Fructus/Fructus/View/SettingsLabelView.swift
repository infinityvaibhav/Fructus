//
//  SettingsLabelView.swift
//  Fructus
//
//  Created by Vaibhav Upadhyay on 31/03/25.
//

import SwiftUI

struct SettingsLabelView: View {
    //MARK: -  Properties
    var labelText: String
    var labelImage: String
    
    //MARK: - Body
    var body: some View {
        HStack {
            Text(labelText.uppercased()).fontWeight(.bold)
            Spacer()
            Image(systemName: labelImage)
        }
    }
}

//MARK: - Preview
#Preview(traits: .sizeThatFitsLayout) {
    SettingsLabelView(labelText: "Frutus", labelImage: "info.circle")
        .padding()
}
