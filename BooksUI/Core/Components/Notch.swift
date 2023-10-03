//
//  Notch.swift
//  BooksUI
//
//  Created by Brenda Saavedra Cantu on 03/10/23.
//

import SwiftUI

struct Notch: View {
    //MARK: View Properties
    let color: Color
    
    var body: some View {
        HStack {
            Spacer()
            Rectangle()
                .fill(color)
                .frame(width: 70, height: 5)
                .cornerRadius(5)
            Spacer()
        }
    }
}

// MARK: - Previews
#Preview {
    Notch(color: Color.lightPink)
}
