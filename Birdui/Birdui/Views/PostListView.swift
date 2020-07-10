//
//  PostListView.swift
//  Birdui
//
//  Created by Asif Ahmed Jesi on 9/7/20.
//  Copyright © 2020 Razeware. All rights reserved.
//

import SwiftUI

struct PostListView: View {
    
    @ObservedObject var postHandler: PostViewModel
    @State private var modalIsPresented = false
    @State private var isFilteringLovedPosts: Bool = false
    
    var body: some View {
        
        VStack {
            PostListHeaderView(modalIsPresented: $modalIsPresented)            
            List {
                Toggle(isOn: $isFilteringLovedPosts) {
                    Text(verbatim: "Show only loved posts")
                }
                ForEach(postHandler.posts) { index in
                    if !self.isFilteringLovedPosts || self.postHandler.posts[index].reaction == .love {
                        PostListRowView(post: self.$postHandler.posts[index])
                    }
                }
                if self.isFilteringLovedPosts && self.postHandler.countLoveReactions() {
                    Image("empty-list").resizable().aspectRatio(contentMode: .fit)
                }
            }
        }
        .sheet(isPresented: $modalIsPresented) {
            NewPostView(postHandler: self.postHandler)
        }
    
    }
}

struct PostListView_Previews: PreviewProvider {
    static var previews: some View {
        PostListView(postHandler: PostViewModel())
    }
}
