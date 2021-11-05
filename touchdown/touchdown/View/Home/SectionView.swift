//
//  SectionView.swift
//  touchdown
//
//  Created by Silvio Nogueira Martins on 04/11/21.
//

import SwiftUI

struct SectionView: View {
    // Mark: Property
    @State var rotateClockwise: Bool
    
    // Mark: Body
    
    var body: some View {
        VStack(spacing: 0) {
            Spacer()
            Text("Categories".uppercased())
                .font(.footnote)
                .fontWeight(.bold)
                .foregroundColor(.white)
                .rotationEffect(Angle(degrees: rotateClockwise ? 90 : -90))
            Spacer()
        } //: VStack
        .background(colorGray.cornerRadius(12))
        .frame(width: 85)
    }
}

// Mark: - Preview

struct SectionView_Previews: PreviewProvider {
    static var previews: some View {
        SectionView(rotateClockwise: false)
            .previewLayout(.fixed(width: 120, height: 240))
            .padding()
            .background(colorBackground)
    }
}