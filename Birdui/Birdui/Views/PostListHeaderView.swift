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
            HStack {
                Spacer()
            }
            HStack(alignment: .center) {
                Image("mascot_swift-badge").headerImageStyle(width: 50, height: 50)
                Text("HOME").headterTitleStyle()
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
