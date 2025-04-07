//
//  SettingsRowView.swift
//  Fructus
//
//  Created by Vaibhav Upadhyay on 31/03/25.
//

import SwiftUI

struct SettingsRowView: View {
    //MARK: - Properties
    
    var name: String
    var content: String? = nil
    var linkLabel: String? = nil
    var linkDestination: String? = nil
    
    //MARK: - Body
    var body: some View {
        VStack {
            Divider().padding(.vertical, 4)
            HStack {
                Text(name)
                    .foregroundStyle(.gray)
                Spacer()
                if let content {
                    Text(content)
                } else if let linkLabel, let linkDestination {
                    Link(linkLabel, destination: URL(string: "https://\(linkDestination)")!)
                    Image(systemName: "arrow.up.right.square").foregroundStyle(.pink)
                } else {
                    EmptyView()
                }
            }
        }
    }
}

#Preview(traits: .fixedLayout(width: 375, height: 60)) {
    SettingsRowView(name: "Developer", content: "John / Jane")
        .padding()
}

#Preview(traits: .fixedLayout(width: 375, height: 60)) {
    SettingsRowView(name: "Developer", linkLabel: "link", linkDestination: "wikiperia.com")
        .padding()
}
