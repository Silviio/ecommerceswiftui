//
//  CategoryItemView.swift
//  touchdown
//
//  Created by Silvio Nogueira Martins on 04/11/21.
//

import SwiftUI

struct CategoryItemView: View {
    
    // Mark: - Property
    let category: CategoryModel
    
    // Mark: - Body
    
    var body: some View {
        Button(action: {}, label: {
            HStack(alignment: .center, spacing: 6.0){
                Image(category.image)
                    .renderingMode(.template)
                    .resizable()
                    .scaledToFit()
                    .frame(width: 30.0, height: 30.0, alignment: .center)
                    .foregroundColor(.gray)
                
                Text(category.name.uppercased())
                    .fontWeight(.light)
                    .foregroundColor(.gray)
                
                Spacer()
            }
            .padding()
            .background(Color.white.cornerRadius(12.0))
            .background(
                RoundedRectangle(cornerRadius: 12.0)
                    .stroke(Color.gray, lineWidth: 1.0)
            )
        }) //: Button
    }
}

// Mark: - Preview

struct CategoryItemView_Previews: PreviewProvider {
    static var previews: some View {
        CategoryItemView(category: categories[0])
            .previewLayout(.sizeThatFits)
            .padding()
            .background(colorBackground)
    }
}
