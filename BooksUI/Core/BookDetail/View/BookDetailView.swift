//
//  BookDetailView.swift
//  BooksUI
//
//  Created by Brenda Saavedra Cantu on 03/10/23.
//

import SwiftUI

struct BookDetailView: View {
    // MARK: View Properties
    let book: Book
    @State private var showOptions: Bool = false
    
    var body: some View {
        VStack(alignment: .leading) {
            // NavBar
            NavBar
            
            // Book Info
            Spacer()
        }
        .sheet(isPresented: $showOptions, content: {
            GeometryReader(content: { geometry in
                let size = geometry.size
                OptionsSheet(size)
            })
        })
        .background(Color.darkPurple)
    }
}

extension BookDetailView {
    var NavBar: some View {
        HStack {
            ZStack(alignment: .leading) {
                RoundedRectangle(cornerRadius: 25)
                    .fill(Color.darkPink.opacity(0.2))
                    .frame(width: 130, height: 60)
                
                HStack(alignment:.center, spacing: 30) {
                    Image(book.image)
                        .resizable()
                        .aspectRatio(contentMode: .fill)
                        .frame(width: 30, height: 20)
                    
                    Image(systemName: "xmark")
                        .resizable()
                        .frame(width: 15, height: 15)
                        .foregroundStyle(.white)
                }
                .padding(.leading, 25)
            }
            
            Spacer()
            
            CustomIconButton(action: (), iconName: "magnifyingglass", color: .white)
                .padding(.trailing, 30)
            
            CustomIconButton(action: (), iconName: "ellipsis", color: .white)
        }
        .padding(.leading, 30)
        .padding(.trailing, 40)
    }
    
    @ViewBuilder
    func OptionsSheet(_ size: CGSize) -> some View {
        VStack {
            HStack {
                Image(systemName: "sun.min")
                    .resizable()
                    .frame(width: 20, height: 20)
                    .foregroundStyle(Color.darkPurple)
            }
            

        }
    }
}

// MARK: - Previews
#Preview {
    BookDetailView(book: Book.MOCK_BOOKS[0])
}
