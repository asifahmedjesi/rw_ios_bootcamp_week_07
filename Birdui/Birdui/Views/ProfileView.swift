//
//  ProfileView.swift
//  Birdui
//
//  Created by Danijela Vrzan on 2020-07-13.
//  Copyright © 2020 Razeware. All rights reserved.
//

import SwiftUI

struct ProfileView: View {
    
    @Binding var post: MediaPost
    @State private var modalIsPresented = false
    
    var body: some View {
        VStack {
            VStack {
                Image("profile-header-background")
                    .imageStyle()
                VStack {
                    Image("mascot_swift-badge")
                        .imageStyle(width: 150, height: 150)
                    Divider().padding(.horizontal, 80)
                    Text(post.userName).profileNameStyle()
                }
                .padding(.top, -85.0)
            }
            Spacer()
            EmptyView()
        }
    }
}

struct ProfileView_Previews: PreviewProvider {
    static var previews: some View {
        ProfileView(post:
            .constant(
                MediaPost(textBody: "Went to the Aquarium today :]",
                          userName: "Audrey",
                          timestamp: Date(timeIntervalSinceNow: -9876),
                          uiImage: UIImage(named: "octopus"),
                          reaction: Reaction.allCases.randomElement()!))
        )
    }
}
