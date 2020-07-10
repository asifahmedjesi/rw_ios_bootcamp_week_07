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
                    .frame(width: 50, height: 50)
                    .padding(.leading, 16)
                Text("HOME").headterTitleStyle()
                Spacer()
            }
            
            Button(action: {
                self.modalIsPresented = true
            }) {
                Text("Create New Post").buttonTitleStyle()
            }
        }
        
    }
    
}

struct PostListHeaderView_Previews: PreviewProvider {
    static var previews: some View {
        PostListHeaderView(modalIsPresented: .constant(false))
    }
}
