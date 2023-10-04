//
//  FontSelection.swift
//  BooksUI
//
//  Created by Brenda Saavedra Cantu on 04/10/23.
//

import SwiftUI

struct FontSelection: View {
    // MARK: View Properties
    //@Binding var fontSelected: UIFont
    private let allFontNames = UIFont.familyNames.flatMap{ UIFont.fontNames(forFamilyName: $0) }
    
    var body: some View {
        HStack {
            Image(systemName: "minus")
            
            ScrollView(.horizontal) {
                LazyHStack(spacing: 10) {
                    ForEach(allFontNames, id:\.self) {
                        name in
                        Text(name)
                            .font(Font.custom(name, size: 20))
                            .foregroundStyle(.black)
                    }
                }
                .scrollTargetLayout()
            }
            .frame(width: 200)
            .scrollTargetBehavior(.viewAligned)
            .safeAreaPadding(.horizontal, 40)
            
            Image(systemName: "plus")
        }
        .foregroundStyle(Color.darkPurple)
        .frame(height: 50)
    }
}

// MARK: - Previews
#Preview {
    FontSelection()
}
