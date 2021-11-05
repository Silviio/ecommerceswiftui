//
//  CategoryGridView.swift
//  touchdown
//
//  Created by Silvio Nogueira Martins on 04/11/21.
//

import SwiftUI

struct CategoryGridView: View {
    
    // Mark: - Property
    
    // Mark: - Body
    
    var body: some View {
        ScrollView(.horizontal, showsIndicators: false, content: {
            LazyHGrid(rows: gridLayout, alignment: .center, spacing: columnSpacing, pinnedViews: [], content: {
                Section(
                    header: SectionView(rotateClockwise: false),
                    footer: SectionView(rotateClockwise: true)) {
                    ForEach(categories) {category in
                        CategoryItemView(category: category)
                    }
                }
            }) //: Grid
                .frame(height: 140)
                .padding(.horizontal, 15)
                .padding(.vertical, 10)
        }) //: Scroll
    }
}

// Mark: - Preview

struct CategoryGridView_Previews: PreviewProvider {
    static var previews: some View {
        CategoryGridView()
            .previewLayout(.sizeThatFits)
            .padding()
            .background(colorBackground)
    }
}
