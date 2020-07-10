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
    @State var modalIsPresented = false
    
    var body: some View {
        
        VStack {
            PostListHeaderView(modalIsPresented: $modalIsPresented)
            List {
                ForEach(postHandler.posts) { index in
                    PostListRowView(post: self.$postHandler.posts[index])
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
