//
//  FeaturedItemView.swift
//  touchdown
//
//  Created by Silvio Nogueira Martins on 01/11/21.
//

import SwiftUI

struct FeaturedItemView: View {
    // Mark: - Property
    
    let player: PlayerModel
    
    // Mark: - Body
    var body: some View {
        Image(player.image)
            .resizable()
            .scaledToFit()
            .cornerRadius(12)
    }
}

struct FeaturedItemView_Previews: PreviewProvider {
    static var previews: some View {
        FeaturedItemView(player: players[0])
            .previewLayout(.sizeThatFits)
            .padding()
            .background(colorBackground)
    }
}
