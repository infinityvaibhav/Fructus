//
//  SourceLinkView.swift
//  Fructus
//
//  Created by Vaibhav Upadhyay on 30/03/25.
//
import SwiftUI

struct SourceLinkView: View {
    var body: some View {
        GroupBox {
            HStack {
                Text("Content source")
                Spacer()
                Link("Wikipedia", destination: URL(string: "https://wikipedia.com")!)
                Image(systemName: "arrow.up.right.square")
            }
            .font(.footnote)
        }
    }
}

#Preview(traits: .sizeThatFitsLayout) {
    SourceLinkView()
        .padding()
}
