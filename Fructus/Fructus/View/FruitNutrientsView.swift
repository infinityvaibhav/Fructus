//
//  FruitNutrientsView.swift
//  Fructus
//
//  Created by Vaibhav Upadhyay on 30/03/25.
//

import SwiftUI

struct FruitNutrientsView: View {
    //MARK: - Properties
    var fruit: Fruit
    let nutrients: [String] = ["Energy", "Sugar", "Fat", "Protein", "Vitamin", "Mineral"]
    
    //MARK: - Body
    var body: some View {
        GroupBox {
            DisclosureGroup("Nutritional value per 100g") {
                ForEach(Array(zip(nutrients.indices, nutrients)), id: \.0) { index, nutrient in
                    Divider()
                        .padding(.vertical, 2)
                    HStack {
                        Group {
                            Image(systemName: "info.circle")
                            Text(nutrient)
                        }
                        .foregroundStyle(fruit.gradientColors[1])
                        .font(.system(.body).bold())
                        Spacer(minLength: 25)
                        Text(fruit.nutrition[index])
                            .multilineTextAlignment(.trailing)
                    }
                }
            }
        }
    }
}

#Preview(traits: .fixedLayout(width: 375, height: 480)) {
    FruitNutrientsView(fruit: fruitsData[1])
        .preferredColorScheme(.dark)
        .padding()
}
