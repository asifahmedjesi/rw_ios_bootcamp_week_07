//
//  PostView.swift
//  Birdui
//
//  Created by Asif Ahmed Jesi on 9/7/20.
//  Copyright © 2020 Razeware. All rights reserved.
//

import SwiftUI

struct PostListItemView: View {
    
    @Binding var post: MediaPost
    
    var body: some View {
        
        VStack(alignment: .leading) {
            
            HStack(alignment: .center) {
                
                Image("mascot_swift-badge")
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                    .frame(width: 50, height: 50)
                
                VStack(alignment: .leading) {
                    
                    Text(post.userName)
                        .foregroundColor(Color.black)
                        .font(.system(size: 20))
                    Text(post.timestamp.formatted)
                        .foregroundColor(Color.black)
                        .font(.system(size: 20))
                }
                
            }
            
            if post.textBody != nil {
                Text(post.textBody!)
                    .foregroundColor(Color.black)
                    .font(.system(size: 18))
            }
            if post.uiImage != nil {
                Image(uiImage: post.uiImage!)
                    .resizable()
                    .aspectRatio(contentMode: .fit)
            }
            
        }
        .padding()
        
    }
}

struct PostView_Previews: PreviewProvider {
    static var previews: some View {
        PostListItemView(post:
            .constant(
                MediaPost(textBody: "Went to the Aquarium today :]",
                          userName: "Audrey",
                          timestamp: Date(timeIntervalSinceNow: -9876),
                          uiImage: UIImage(named: "octopus")))
        )
    }
}
