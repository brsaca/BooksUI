//
//  CustomIconButton.swift
//  BooksUI
//
//  Created by Brenda Saavedra Cantu on 02/10/23.
//

import SwiftUI


struct CustomIconButton: View {
    // MARK: View Properties
    let action: () -> Void
    let iconName: String
    let color: Color
    
    var body: some View {
        Button {
            action()
        } label: {
            Image(systemName: iconName)
                .resizable()
                .scaledToFit()
                .frame(width: 20, height: 20)
                .foregroundColor(color)
        }
    }
}

// MARK: - Previews
#Preview {
    CustomIconButton(action: {}, iconName: "ellipsis", color: Color.darkPurple)
}

#Preview {
    CustomIconButton(action: {}, iconName: "magnifyingglass", color: Color.darkPurple)
}

