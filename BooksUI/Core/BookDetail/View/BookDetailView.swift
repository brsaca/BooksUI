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
    @State private var isImageDisplayed = false
    @State private var offsetY: CGFloat = 0
    @State var colorSelected: ColorOption = .dark
    
    var body: some View {
        VStack(alignment: .leading) {
            // NavBar
            NavBar
            
            // Book Info
            BookInfo
            
            Spacer()
        }
        .sheet(isPresented: $showOptions, content: {
            OptionsSheet
        })
        .background(colorSelected.color)
    }
}

extension BookDetailView {
    var NavBar: some View {
        HStack {
            ZStack(alignment: .leading) {
                RoundedRectangle(cornerRadius: 25)
                    .fill(Color.darkPink.opacity(0.2))
                    .frame(width: isImageDisplayed ? 65 : 130, height: 60)
                
                HStack(alignment:.center, spacing: 30) {
                    if (!isImageDisplayed) {
                        Image(book.image)
                            .resizable()
                            .aspectRatio(contentMode: .fill)
                            .frame(width: 30, height: 20)
                    }
                    
                    Image(systemName: "xmark")
                        .resizable()
                        .frame(width: 15, height: 15)
                        .foregroundStyle(colorSelected.textColor)
                }
                .padding(.leading, 25)
            }
            .animation(.easeInOut(duration: 1.0), value: isImageDisplayed)
            
            Spacer()
            
            CustomIconButton(action: {}, iconName: "magnifyingglass", color: colorSelected.textColor)
                .padding(.trailing, 30)
            
            CustomIconButton(action: { showOptions.toggle() }, iconName: "ellipsis", color: colorSelected.textColor)
        }
        .padding(.leading, 30)
        .padding(.trailing, 40)
    }
    
    
    var OptionsSheet: some View {
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
    
    var BookInfo: some View {
        ScrollView(.vertical) {
            VStack(spacing: 25) {
                Image(book.image)
                    .resizable()
                    .scaledToFill()
                    .frame(width: 100, height: 300)
                    .onAppear {
                        isImageDisplayed.toggle()
                    }
                    .onDisappear {
                        isImageDisplayed.toggle()
                    }
                
                Text(book.title)
                    .font(.largeTitle)
                    .fontWeight(.semibold)
                    .foregroundStyle(colorSelected.textColor)
                
                Text(book.details)
                    .font(.footnote)
                    .kerning(3)
                    .lineSpacing(8)
                    .fontWeight(.regular)
                    .foregroundStyle(colorSelected.textColor)
            }
            .padding(.horizontal,30)
            .background {
                ScrollDetector { offset in
                    offsetY = -offset
                    isImageDisplayed = offsetY >= -320
                } onDraggingEnd: { offset, velocity in
                }
            }
        }
    }
}

// MARK: - Previews
#Preview {
    BookDetailView(book: Book.MOCK_BOOKS[0])
}