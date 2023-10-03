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
        VStack(alignment: .leading)  {
            // NavBar
            NavBar
            
            Text("My Books")
                .font(.largeTitle)
                .fontWeight(.bold)
                .foregroundColor(Color.darkPurple)
                .padding(.vertical, 40)
                .padding(.leading, 60)
            
            // Books
            BooksSection
            
            // Audio
            
            
            
            // Current Play
            
            Spacer()
            
        }
    }
}

extension ContentView {
    var NavBar: some View {
        HStack {
            CustomIconButton(action: (), iconName: "square.grid.2x2", color: Color.darkPurple)
            
            Spacer()
            
            CustomIconButton(action: (), iconName: "magnifyingglass", color: Color.darkPurple)
            
            Image("user")
                .resizable()
                .scaledToFill()
                .frame(width: 55, height: 55)
                .clipShape(RoundedRectangle(cornerRadius: 20))
                .padding(.leading, 30)
        }
        .padding(.leading, 60)
        .padding(.trailing, 30)
    }
    
    var BooksSection: some View {
        HStack(alignment: .top) {
            Text("\(Book.MOCK_BOOKS.count) items" ).rotationEffect(Angle(degrees: -90))
                .foregroundColor(Color.darkPurple)
                .font(.subheadline)
                .padding(.top, 25)
            
            ScrollView(.horizontal, showsIndicators: false){
                LazyHStack(spacing: 40, content: {
                    ForEach(Book.MOCK_BOOKS, id: \.id) { book in
                        Image(book.image)
                            .resizable()
                            .aspectRatio(contentMode: .fill)
                            .frame(width: 160, height: 240)
                    }
                })
            }
            .frame(height: 250)
        }
        .padding(.leading, 10)
    }
}

// MARK: - Previews
#Preview {
    ContentView()
}
