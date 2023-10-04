//
//  CustomSlider.swift
//  BooksUI
//
//  Created by Brenda Saavedra Cantu on 03/10/23.
//

import SwiftUI

struct CustomSlider: View {
    // MARK: View Properties
    @State var width1:CGFloat = 30
    var totalWidth = UIScreen.main.bounds.width - 180
    
    var body: some View {
        HStack (alignment: .center, spacing: 20){
            Image(systemName: "sun.min")
                .resizable()
                .frame(width: 20, height: 20)
                .foregroundStyle(Color.darkPurple)
            
            ZStack(alignment: .leading ){
                //first rectangle
                Rectangle()
                    .fill(Color.myDarkOrange.opacity(0.3))
                    .frame(width:totalWidth, height: 6)
                //second rectangle
                Rectangle()
                    .fill(Color.myDarkOrange)
                    .frame(width: self.width1,height: 6)
                
                Circle()
                    .stroke(Color.myDarkOrange, lineWidth: 10 )
                    .fill(Color.white)
                    .frame(width: 18,height: 18)
                    .offset(x:self.width1)
                    .gesture(
                        DragGesture()
                            .onChanged( { (value) in
                                if value.location.x <= totalWidth-10 && value.location.x >= 0{
                                    self.width1 = value.location.x
                                }
                            })
                    )
            }
            
            Image(systemName: "sun.max")
                .resizable()
                .frame(width: 30, height: 30)
                .foregroundStyle(Color.darkPurple)
            
        }
    }
}

// MARK: - Previews
#Preview {
    CustomSlider()
}
