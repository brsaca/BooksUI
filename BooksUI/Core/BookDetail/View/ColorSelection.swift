//
//  ColorSelection.swift
//  BooksUI
//
//  Created by Brenda Saavedra Cantu on 03/10/23.
//

import SwiftUI

enum ColorOption: CaseIterable {
    case none
    case light
    case dark
    
    var color: Color {
        switch self {
        case .none: return Color.white
        case .light: return Color.myLightPurple
        case .dark: return Color.darkPurple
        }
    }
    
    var textColor: Color {
        switch self {
        case .none: return Color.black
        case .light: return Color.black.opacity(0.7)
        case .dark: return Color.myLightPurple
        }
    }
}

struct ColorSelection: View {
    //MARK: View Properties
    @Binding var colorSelected: ColorOption
    
    var body: some View {
        HStack(spacing: 20) {
            ForEach(ColorOption.allCases, id:\.self) { option in
                colorButton(for: option)
            }
        }
    }
}

extension ColorSelection {
    @ViewBuilder
    func colorButton(for option: ColorOption) -> some View {
        ZStack(alignment: .leading ){
            if (colorSelected.color == option.color) {
                //second rectangle
                RoundedRectangle(cornerRadius: 20)
                    .stroke(Color.darkPurple, lineWidth: 10 )
                    .fill(.white)
                    .frame(width: 100, height: 50)
            }
            
            //first rectangle
            RoundedRectangle(cornerRadius: 20)
                .fill(option.color)
                .stroke(option.color == .white ? Color.myLightPurple : option.color,  lineWidth: 0.5)
                .frame(width: 95, height: 45)
                .offset(x:2)
        }
        .onTapGesture {
            colorSelected = option
        }
    }
}

// MARK: - Previews
#Preview("None") {
    ColorSelection(colorSelected: .constant(.none))
}

#Preview("Light") {
    ColorSelection(colorSelected: .constant(.light))
}

#Preview("Dark") {
    ColorSelection(colorSelected: .constant(.dark))
}

