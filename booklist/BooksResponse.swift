//
//  BookResponse.swift
//  booklist
//
//  Created by 岡島結南 on 2026/02/11.
//
struct BookResponse: Codable {
    var totalItems: Int
    var items: [Item]
}

struct Item: Codable {
    var kind: String
    var id: String
    var selfLink: String
    var volumeInfo: VolumeInfo
}

struct VolumeInfo: Codable {
    var title: String?
    var authors:[String]?
    var description: String?
    var publisher: String?
    var imageLinks: ImageLinks?
}

struct ImageLinks: Codable {
    var smallThumbnail: String?
    var thumbnail: String?
}

