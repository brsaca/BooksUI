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
    //@Binding var fontSelected: UIFont
    @Binding var alignmentSelelected: AlignmentOption
    
    var body: some View {
        VStack(spacing: 40) {
            CustomSlider()
                .padding(.horizontal, 20)
                .padding(.top, 20)
            
            ColorSelection(colorSelected: $colorSelected)
            
            FontSelection()
            
            AlignmentSelection(alignmentSelelected: $alignmentSelelected)
        }
        .padding()
        .padding(.top, 25)
        .padding(.horizontal, 10)
        .padding(.bottom, 20)
        .frame(width: .infinity, alignment: .leading)
        .presentationCornerRadius(30)
        .presentationDetents( [.height(350)] )
    }
}

// MARK: - Previews
#Preview {
    OptionsSheet(colorSelected: .constant(.dark), alignmentSelelected: .constant(.left))
}
