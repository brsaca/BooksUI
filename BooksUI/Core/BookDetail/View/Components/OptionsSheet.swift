//
//  OptionsSheet.swift
//  BooksUI
//
//  Created by Brenda Saavedra Cantu on 04/10/23.
//

import SwiftUI

struct OptionsSheet: View {
    // MARK: View Properties
    @Binding var colorSelected: ColorOption
    
    var body: some View {
        VStack(spacing: 40) {
            CustomSlider()
                .padding(.horizontal, 20)
                .padding(.top, 20)
            
            ColorSelection(colorSelected: $colorSelected)
        }
        .padding()
        .padding(.top, 25)
        .padding(.horizontal, 10)
        .padding(.bottom, 130)
        .frame(width: .infinity, alignment: .leading)
        .presentationCornerRadius(30)
        .presentationDetents( [.height(250)] )
    }
}

// MARK: - Previews
#Preview {
    OptionsSheet(colorSelected: .constant(.dark))
}
