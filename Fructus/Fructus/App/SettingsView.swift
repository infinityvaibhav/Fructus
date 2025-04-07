//
//  SettingsView.swift
//  Fructus
//
//  Created by Vaibhav Upadhyay on 30/03/25.
//

import SwiftUI

struct SettingsView: View {
    //MARK: - Properties
    @Environment(\.presentationMode) var presentationMode
    @AppStorage("isOnboarding") var isOnboarding: Bool = false
    
    var body: some View {
        NavigationStack {
            ScrollView(.vertical, showsIndicators: false) {
                VStack(spacing: 20) {
                    //MARK: - Section 1
                    GroupBox(label:
                                SettingsLabelView(labelText: "Frutus", labelImage: "info.circle")
                    ) {
                        Divider().padding(.vertical, 4)
                        
                        HStack(alignment: .center, spacing: 10) {
                            Image("logo")
                                .resizable()
                                .scaledToFit()
                                .frame(width: 80, height: 80)
                                .cornerRadius(9)
                            Text("Most fruits are naturally low in fat, sodium and calories. None have cholesterol. Fruits are sources of many essential nutrients, including potassium, dietary fiber, vitamin and much more.")
                                .font(.footnote)
                        }
                    }
                    //MARK: - Section 2
                    
                    GroupBox(
                        label: SettingsLabelView(labelText: "Customization", labelImage: "paintbrush")
                    ) {
                        Divider().padding(.vertical, 4)
                        
                        Text("If you wish, you can restart the application by toggle the switch in this box. That way it start the onboarding process and you will see the welcome screen again.")
                            .padding(.vertical, 8)
                            .frame(minWidth: 60)
                            .layoutPriority(1)
                            .font(.footnote)
                            .multilineTextAlignment(.leading)
                        
                        Toggle(isOn: $isOnboarding) {
                            if isOnboarding {
                                Text("Restart".uppercased())
                                    .fontWeight(.bold)
                                    .foregroundStyle(.green)
                            } else {
                                Text("Restart".uppercased())
                                    .fontWeight(.bold)
                                    .foregroundStyle(.secondary)
                            }
                        }
                        .padding()
                        .background(
                            Color(UIColor.tertiarySystemBackground)
                                .clipShape(RoundedRectangle(cornerRadius: 8, style: .continuous))
                        )
                    }
                    
                    //MARK: - Section 3
                    
                    GroupBox(
                        label: SettingsLabelView(labelText: "Application", labelImage: "apps.iphone")
                    ) {
                        SettingsRowView(name: "Developer", content: "Vaibhav")
                        SettingsRowView(name: "Designer", content: "Robert Petras")
                        SettingsRowView(name: "Compatibility", content: "iOS 18")
                        SettingsRowView(name: "Website", linkLabel: "SwiftUI master class", linkDestination: "SwiftUImasterclass.com")
                        SettingsRowView(name: "Twitter", linkLabel: "@Codebyvaibhav", linkDestination: "x.com/Codebyvaibhav")
                        SettingsRowView(name: "SwiftUI", content: "2.0")
                        SettingsRowView(name: "Version", content: "1.1.0")
                    }
                    
                } // VStack
                .navigationBarTitle("Settings", displayMode: .large)
                .toolbar {
                    ToolbarItem(placement: .topBarTrailing) {
                        Button {
                            presentationMode.wrappedValue.dismiss()
                        } label: {
                            Image(systemName: "xmark")
                        }
                    }
                }
                .padding()
            } //ScrollView
        } // NavigationStack
    }
}

#Preview {
    SettingsView()
}
