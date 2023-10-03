//
//  ContentView.swift
//  BooksUI
//
//  Created by Brenda Saavedra Cantu on 02/10/23.
//

import SwiftUI

struct ContentView: View {
    // MARK: View Properties
    
    var body: some View {
        VStack {
            Image(systemName: "globe")
                .imageScale(.large)
                .foregroundStyle(.tint)
            Text("Hello, world!")
        }
        .padding()
    }
}

// MARK: - Previews
#Preview {
    ContentView()
}
