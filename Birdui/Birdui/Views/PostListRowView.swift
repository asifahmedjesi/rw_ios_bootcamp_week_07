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
        
        VStack(alignment: .leading) {

            HStack(alignment: .center) {
                Image("mascot_swift-badge").imageStyle(width: 50, height: 50)
                VStack(alignment: .leading) {
                    Text(post.userName).postTitleStyle()
                    Text(post.timestamp.formatted).postTitleStyle()
                }
            }
            if post.textBody != nil {
                Text(post.textBody!).postTextStyle()
            }
            if post.uiImage != nil {
                Image(uiImage: post.uiImage!).imageStyle()
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
                          uiImage: UIImage(named: "octopus")))
        )
    }
}
