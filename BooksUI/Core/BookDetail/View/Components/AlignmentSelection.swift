//
//  AlignmentSelection.swift
//  BooksUI
//
//  Created by Brenda Saavedra Cantu on 04/10/23.
//

import SwiftUI

enum AlignmentOption: CaseIterable {
    case left
    case center
    case right
   // case justify
    
    var image: String {
        switch self {
        case .left: return "text.alignleft"
        case .center: return "text.aligncenter"
        case .right: return "text.alignright"
      //  case .justify: return "text.justify"
        }
    }
    
    var value: TextAlignment {
        switch self {
        case .left: return TextAlignment.leading
        case .center: return TextAlignment.center
        case .right: return TextAlignment.trailing
     //   case .justify: return TextAlignment.
        }
    }
}

struct AlignmentSelection: View {
    // MARK: View Properties
    @Binding var alignmentSelelected: AlignmentOption
    
    var body: some View {
        LazyHStack(spacing: 40) {
            ForEach(AlignmentOption.allCases, id:\.self) { alignment in
                Image(systemName: alignment.image)
                    .resizable()
                    .scaledToFit()
                    .frame(width: 30, height: 30)
                    .foregroundStyle(Color.darkPurple)
                    .onTapGesture {
                        alignmentSelelected = alignment
                    }
            }
        }
        .frame(height: 50)
    }
}

// MARK: - Previews
#Preview {
    AlignmentSelection(alignmentSelelected: .constant(.left))
}
