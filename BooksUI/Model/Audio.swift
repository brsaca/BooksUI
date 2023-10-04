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
    let formattedDuration: String
    let formattedProgress: String
}

extension Audio {
    static let MOCK_AUDIOS = [
        Audio(name: "The Hard Things About Hard Things", author: "Ben Horowitz", image: "audio1", progress: 0.45, formattedDuration: "5:00:00", formattedProgress: "02:25:03"),
        Audio(name: "Deja de ser tú", author: "Joe Dispenza", image: "audio2", progress: 0.22, formattedDuration: "5:00:00", formattedProgress: "02:25:03"),
        Audio(name: "Steve Jobs", author: "Walter Isaccson", image: "audio3", progress: 0.89, formattedDuration: "5:00:00", formattedProgress: "02:25:03"),
        Audio(name: "Hábitos Atómicos", author: "James Clear", image: "audio4", progress: 0.70, formattedDuration: "5:00:00", formattedProgress: "02:25:03")
    ]
    
    static let CURRENT_AUDIO = Audio(name: "The Power Of NOW", author: "Eckhart Tolle", image: "audio5", progress: 1.0, formattedDuration: "8:07:50", formattedProgress: "8:07:50")
}
