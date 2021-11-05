//
//  NavigationBarView.swift
//  touchdown
//
//  Created by Silvio Nogueira Martins on 01/11/21.
//

import SwiftUI

struct NavigationBarView: View {
    // Mark: - Properties
    
    @State private var isAnimated: Bool = false
    
    // Mark: - Body
    var body: some View {
        HStack{
            Button(action: {}, label: {
                Image(systemName: "magnifyingglass")
                    .font(.title)
                    .foregroundColor(.black)
            }) //: Button
            
            Spacer()
        
            LogoView()
                .opacity(isAnimated ? 1 : 0)
                .offset(x: 0, y: isAnimated ? 0 : -25)
                .onAppear(perform: {withAnimation(.easeOut(duration:  0.5)){
                    isAnimated.toggle()
                }})
            
            Spacer()
            
            Button(action: {}, label: {
                ZStack {
                    Image(systemName: "cart")
                        .font(.title)
                    .foregroundColor(.black)
                    Circle()
                        .fill(Color.red)
                        .frame(width: 14, height: 14, alignment: .center)
                        .offset(x: 13, y: -10)
                }
            })
        }//: HStack
    }
}

struct NavigationBarView_Previews: PreviewProvider {
    static var previews: some View {
        NavigationBarView()
            .previewLayout(.sizeThatFits)
            .padding()
    }
}
