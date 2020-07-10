//
//  PostListHeaderView.swift
//  Birdui
//
//  Created by Asif Ahmed Jesi on 10/7/20.
//  Copyright © 2020 Razeware. All rights reserved.
//

import SwiftUI

struct PostListHeaderView: View {
    
    @Binding var modalIsPresented: Bool
    
    var body: some View {
        
        VStack(alignment: .leading) {
            
            HStack(alignment: .center) {
                
                Image("mascot_swift-badge")
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                    .frame(width: 60, height: 60)
                    .padding(.leading, 16)
                Text("HOME")
                    .foregroundColor(Color.black)
                    .font(Font.custom("Arial Rounded MT Bold", size: 26))
                Spacer()
            }
            
            Button(action: {
                self.modalIsPresented = true
            }) {
                Text("Create New Post")
                    .padding(.leading, 16)
                    .font(Font.custom("Arial Rounded MT Bold", size: 18))
            }
        }
        
    }
}

struct PostListHeaderView_Previews: PreviewProvider {
    static var previews: some View {
        PostListHeaderView(modalIsPresented: .constant(false))
    }
}
