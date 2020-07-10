//
//  PostView.swift
//  Birdui
//
//  Created by Asif Ahmed Jesi on 9/7/20.
//  Copyright © 2020 Razeware. All rights reserved.
//

import SwiftUI

struct PostListRowView: View {
    
    @Binding var post: MediaPost
    
    var body: some View {
        
        VStack {
            VStack(alignment: .leading) {
                HStack {
                    Spacer()
                }
                HStack(alignment: .center) {
                    Image("mascot_swift-badge").imageStyle(width: 50, height: 50)
                    VStack(alignment: .leading) {
                        Text(post.userName).postTitleStyle()
                        Text(post.timestamp.formatted).postSubTitleStyle()
                    }
                    Picker("Reaction", selection: $post.reaction) {
                      ForEach(Reaction.allCases, id: \.self) { reaction in
                        Text(reaction.rawValue).tag(reaction)
                      }
                    }
                    .pickerStyle(SegmentedPickerStyle())
                }
                if post.textBody != nil {
                    Text(post.textBody!).postTextStyle()
                }
            }
            VStack(alignment: .center) {
                if post.uiImage != nil {
                    
                    Image(uiImage: post.uiImage!).imageStyle(width: 200, height: 200)
                }
            }
        }
        
    }
}

struct PostView_Previews: PreviewProvider {
    static var previews: some View {
        PostListRowView(post:
            .constant(
                MediaPost(textBody: "Went to the Aquarium today :]",
                          userName: "Audrey",
                          timestamp: Date(timeIntervalSinceNow: -9876),
                          uiImage: UIImage(named: "octopus"),
                          reaction: Reaction.allCases.randomElement()!))
        )
    }
}
