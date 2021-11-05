//
//  TitleView.swift
//  touchdown
//
//  Created by Silvio Nogueira Martins on 05/11/21.
//

import SwiftUI

struct TitleView: View {
    
    // Mark: - Preview
    
    var title: String
    
    // Mark: - Body
    
    var body: some View {
        HStack {
            Text(title)
                .font(.largeTitle)
                .fontWeight(.heavy)
            Spacer()
        } //: HStack
        .padding(.horizontal)
        .padding(.top, 15)
        .padding(.bottom, 10)
    }

}

struct TitleView_Previews: PreviewProvider {
    static var previews: some View {
        TitleView(title: "Helmet")
            .previewLayout(.sizeThatFits)
            .background(colorBackground)
    }
}
