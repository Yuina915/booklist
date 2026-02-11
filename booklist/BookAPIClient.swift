//
//  BookAPIClient.swift
//  booklist
//
//  Created by 岡島結南 on 2026/02/11.
//

import SwiftUI

class BooksAPIClient: ObservableObject {
    @Published var books: BookResponse?
    private let apiClient = APIClient()
    
    func fetchBooks(queryString: String) {
        Task { @MainActor in
            self.books = await apiClient.fetchData(from: "https://www.googleapis.com/books/v1/volumes?q=\(queryString)", responseType: BookResponse.self
            )
        }
    }
}
