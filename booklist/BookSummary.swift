//
//  BookSummary.swift
//  booklist
//
//  Created by 岡島結南 on 2026/02/11.
//

import SwiftData

@Model
final class BookSummary {
    @Attribute(.unique) var id: String
    var title: String
    var thumbnail: String?
    
    init(id: String, title: String, thumbnail: String? = nil){
        self.id = id
        self.title = title
        self.thumbnail = thumbnail
    }
}
