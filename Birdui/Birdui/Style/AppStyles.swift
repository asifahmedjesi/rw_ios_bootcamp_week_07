//
//  AppModifiers.swift
//  Birdui
//
//  Created by Asif Ahmed Jesi on 10/7/20.
//  Copyright © 2020 Razeware. All rights reserved.
//

import SwiftUI

class AppStyles {
    
    struct HeaderTextStyle: ViewModifier {
        func body(content: Content) -> some View {
            return content
                .foregroundColor(Color.black)
                .modifier(Shadow())
                .font(Font.custom("Arial Rounded MT Bold", size: 26))
        }
    }
    
    struct ButtonTitleStyle: ViewModifier {
        func body(content: Content) -> some View {
            return content
                .padding(.leading, 16)
                .font(Font.custom("Arial Rounded MT Bold", size: 18))
                .accentColor(Color("accent"))
        }
    }
    
    struct Shadow: ViewModifier {
        func body(content: Content) -> some View {
            return content
                .shadow(color: Color.black, radius: 2, x: 1, y: 1)
        }
    }
    
    struct PostTextStyle: ViewModifier {
        func body(content: Content) -> some View {
            return content
                .foregroundColor(Color.black)
                .font(.system(size: 15.0))
                .fixedSize(horizontal: false, vertical: true)
        }
    }
    
    struct PostTitleStyle: ViewModifier {
        func body(content: Content) -> some View {
            return content
                .font(.system(size: 20.0))
        }
    }
    
    struct PostSubTitleStyle: ViewModifier {
        func body(content: Content) -> some View {
            return content
                .font(.caption)
                .foregroundColor(Color("accent"))
        }
    }
    
    struct ImageStyle: ViewModifier {
        var image: Image
        
        func body(content: Content) -> some View {
            return image
                .resizable()
                .aspectRatio(contentMode: .fit)
        }
    }
    
    struct ImageStyleWithFrame: ViewModifier {
        var image: Image
        var width: CGFloat
        var height: CGFloat
        
        func body(content: Content) -> some View {
            return image
                .modifier(ImageStyle(image: image))
                .frame(width: width, height: height)
        }
    }
    
    struct HeaderImageStyle: ViewModifier {
        var image: Image
        var width: CGFloat
        var height: CGFloat
        
        func body(content: Content) -> some View {
            return image
                .modifier(ImageStyleWithFrame(image: image, width: width, height: height))
                .padding(.leading, 16)                
        }
    }
    
    
}
