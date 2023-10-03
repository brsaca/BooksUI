//
//  Book.swift
//  BooksUI
//
//  Created by Brenda Saavedra Cantu on 02/10/23.
//

import Foundation

struct Book {
    let id = UUID()
    let name: String
    let author: String
    let image: String
    let title: String
    let details: String
}

extension Book {
    static let MOCK_BOOKS = [
        Book(name: "Never Split the Difference", author: "Chris Voss", image: "book1", title: "Chapter 1", details: "A former FBI hostage negotiator offers a new, field-tested approach to negotiating – effective in any situation.\nAfter a stint policing the rough streets of Kansas City, Missouri, Chris Voss joined the FBI, where his career as a kidnapping negotiator brought him face-to-face with bank robbers, gang leaders, and terrorists. Never Split the Difference takes you inside his world of high-stakes negotiations, revealing the nine key principles that helped Voss and his colleagues succeed when it mattered the most – when people’s lives were at stake.\nRooted in the real-life experiences of an intelligence professional at the top of his game, Never Split the Difference will give you the competitive edge in any discussion."),
        Book(name: "The Lonely Hearts Book Club", author: "Lucy Gilmore", image: "book2", title: "Chapter 1", details: "Sloane Parker lives a small, contained life as a librarian in her small, contained town. She never thinks of herself as lonely...but still she looks forward to that time every day when old curmudgeon Arthur McLachlan comes to browse the shelves and cheerfully insult her. Their sparring is such a highlight of Sloane's day that when Arthur doesn't show up one morning, she's instantly concerned. And then another day passes, and another.\nAnxious, Sloane tracks the old man down only to discover him all but bedridden...and desperately struggling to hide how happy he is to see her. Wanting to bring more cheer into Arthur's gloomy life, Sloane creates an impromptu book club. Slowly, the lonely misfits of their sleepy town begin to find each other, and in their book club, find the joy of unlikely friendship. Because as it turns out, everyone has a special book in their heart—and a reason to get lost (and eventually found) within the pages."),
        Book(name: "El Castillo rojo", author: "Pablo De Santis", image: "book3", title: "Chapter 1", details: "Los muertos pueden volver. El servicio de inmortalidad crea una copia de la persona muerta y la guarda para cuando el original “ya no esté”. Pero algo salió mal: las empresas que ofrecían el servicio quebraron, y las copias escaparon, deseosas de reemplazar sin aviso a quien estuviera faltando. Eso les dio su nombre: intrusos.\nLa doctora Marcus, neopsiquiatra, tiene una tarea difícil: neutralizar a los intrusos. Pero cada caso, cada historia, la arrastra hacia la conexión que parece haber entre todos: el castillo rojo.\n De Santis y San Juan nos traen una historia llena de drama y suspenso, en esta amalgama de ciencia ficción y policia"),
        Book(name: "I Used to Have a Plan: But Life Had Other Ideas", author: "Alessandra Olanow", image: "book4", title: "Chapter 1", details: "Balm for the soul—Alessandra Olanow offers advice, inspiration, and encouragement for anyone who needs a shoulder to lean on during a difficult time."),
        Book(name: "You Are Here (For Now): A Guide to Finding Your Way", author: "Adam J. Kurtz", image: "book5", title: "Chapter 1", details: "Part advice, part personal narrative, and part artwork — full of reflections, encouragements, and insights on personal transformation to help you nurture and celebrate yourself."),

    ]
}
