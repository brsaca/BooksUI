//
//  Audio.swift
//  BooksUI
//
//  Created by Brenda Saavedra Cantu on 02/10/23.
//

import Foundation

struct Audio {
    let id = UUID()
    let name: String
    let author: String
    let image: String
    let progress: Double
}

extension Audio {
    static let MOCK_AUDIOS = [
        Audio(name: "The Hard Things About Hard Things", author: "Ben Horowitz", image: "audio1", progress: 0.45),
        Audio(name: "Deja de ser tú", author: "Joe Dispenza", image: "audio2", progress: 0.22),
        Audio(name: "Steve Jobs", author: "Walter Isaccson", image: "audio3", progress: 0.89),
        Audio(name: "Hábitos Atómicos", author: "James Clear", image: "audio4", progress: 0.70),
        Audio(name: "The Power Of NOW", author: "Eckhart Tolle", image: "audio5", progress: 1.0)
    ]
}
