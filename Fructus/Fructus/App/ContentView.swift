//
//  ContentView.swift
//  Fructus
//
//  Created by Vaibhav Upadhyay on 26/03/25.
//

import SwiftUI

struct ContentView: View {
    //MARK: - Properties
    
    @State private var isShowingSheet: Bool = false
    
    var fruits: [Fruit] = fruitsData
    
    var body: some View {
        NavigationStack {
            List {
                ForEach(fruits.shuffled()) { item in
                    NavigationLink(destination: FruitDetailView(fruit: item)) {
                        FruitRowView(fruit: item)
                            .padding(.vertical, 4)
                    }
                }
            }
            .navigationBarTitle("Fruits")
            .toolbar {
                ToolbarItem(placement: .topBarTrailing) {
                    Button {
                        isShowingSheet.toggle()
                    } label: {
                        Image(systemName: "slider.horizontal.3")
                    }
                    .sheet(isPresented: $isShowingSheet) {
                        SettingsView()
                    }
                }
            }
        }
    }
}

#Preview {
    ContentView()
}
