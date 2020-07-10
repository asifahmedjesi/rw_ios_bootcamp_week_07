//
//  PostListHeaderView.swift
//  Birdui
//
//  Created by Asif Ahmed Jesi on 10/7/20.
//  Copyright © 2020 Razeware. All rights reserved.
//

import SwiftUI

struct PostListHeaderView: View {
    
    var body: some View {
        
        VStack(alignment: .leading) {
            
            HStack(alignment: .center) {
                
                Image("mascot_swift-badge")
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                    .frame(width: 100, height: 100)
                Text("HOME")
                    .foregroundColor(Color.black)
                    .font(Font.custom("Arial Rounded MT Bold", size: 35))
                Spacer()
            }
            
            Button(action: {
                
            }) {
                Text("Create New Post")
                    .padding()
                    .font(Font.custom("Arial Rounded MT Bold", size: 22))
            }
        }
        
    }
}

struct PostListHeaderView_Previews: PreviewProvider {
    static var previews: some View {
        PostListHeaderView()
    }
}
