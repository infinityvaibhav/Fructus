//
//  FruitDetailView.swift
//  Fructus
//
//  Created by Vaibhav Upadhyay on 27/03/25.
//
import SwiftUI

struct FruitDetailView: View {
    //MARK: - Properties
    var fruit: Fruit
    //MARK: - Body
    var body: some View {
        NavigationStack {
            ScrollView(.vertical, showsIndicators: false) {
                VStack(alignment: .center, spacing: 20) {
                    //Header
                    FruitHeaderView(fruit: fruit)
                    
                    VStack(alignment: .leading, spacing: 20) {
                        //Title
                        Text(fruit.title)
                            .font(.largeTitle)
                            .fontWeight(.heavy)
                            .foregroundStyle(fruit.gradientColors[1])
                        
                        //Headline
                        Text(fruit.headline)
                            .font(.headline)
                            .multilineTextAlignment(.leading)
                        
                        //Nutrition
                        FruitNutrientsView(fruit: fruit)
                        
                        //SubHeadline
                        Text("Learn more about \(fruit.title)".uppercased())
                            .fontWeight(.bold)
                            .foregroundStyle(fruit.gradientColors[1])
                        
                        //Description
                        Text(fruit.description)
                            .multilineTextAlignment(.leading)
                        
                        //Link
                        SourceLinkView()
                            .padding(.top, 10)
                            .padding(.bottom, 40)
                    }//VStack
                    .padding(20)
                    .frame(maxWidth: 640, alignment: .center)
                }
                .navigationBarTitle(fruit.title, displayMode: .inline)
            }
            .ignoresSafeArea(.all)
        }
    }
}

#Preview {
    FruitDetailView(fruit: fruitsData[0])
}
