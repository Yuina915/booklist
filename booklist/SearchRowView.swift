//
//  SearchRowView.swift
//  booklist
//
//  Created by 岡島結南 on 2026/02/11.
//

import SwiftUI

struct SearchRowView: View {
    @State var issaved: Bool = false
    
    let imageUrl: String?
    let title: String?
    let publisher: String?
    
    var body: some View {
        HStack {
            if let thumbnailUrl = imageUrl {
                AsyncImage(url: URL(string: thumbnailUrl)) { image in
                    image
                        .resizable()
                        .scaledToFit()
                        .frame(width: 100,height: 100)
                } placeholder: {
                    ProgressView()
                }
            }
            
            VStack(alignment: .leading){
                Text(title ?? "")
                    .font(.headline)
                    .bold()
                Text(publisher ?? "")
                    .font(.caption)
            }
            
            Spacer()
            
            Button(action: {
                guard !issaved else { return }
                let newBook = BookSummary(id: UUID().uuidString, title: title ?? "",thumbnail: imageUrl)
                SwiftDataManager().saveItem(data: newBook)
                issaved = true
            }, label: {
                Image(systemName: issaved ? "checkmark.circle.fill" : "plus.circle")
            })
        }
        .frame(minHeight: 100)
    }
}

#Preview {
    SearchRowView(
        imageUrl: sampleImageUrl,
        title: "本のタイトル",
        publisher: "出版社"
    )
}
