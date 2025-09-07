//
//  Book.swift
//  FavoriteBooks
//
//  Created by Hardik on 25/08/25.
//

import Foundation

struct Book{
    var title: String
    var author: String
    var genre: String
    var length: Int
}

var books: [Book] = [
    Book(title: "The Alchemist", author: "Paulo Coelho", genre: "Fantasy", length: 220),
    Book(title: "To Kill a Mockingbird", author: "Harper Lee", genre: "Fiction", length: 330),
    Book(title: "1984", author: "George Orwell", genre: "Dystopian", length: 320),
    Book(title: "The Great Gatsby", author: "F. Scott Fitzgerald", genre: "Fiction", length: 220),
    Book(title: "The Hobbit", author: "J.R.R. Tolkien", genre: "Fantasy", length: 310)
]
