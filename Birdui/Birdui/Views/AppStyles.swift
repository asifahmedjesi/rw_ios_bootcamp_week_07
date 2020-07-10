//
//  AppModifiers.swift
//  Birdui
//
//  Created by Asif Ahmed Jesi on 10/7/20.
//  Copyright © 2020 Razeware. All rights reserved.
//

import SwiftUI

class AppStyles {
    
    static let darkOrange = Color(red: 247.0/255.0, green: 133.0/255.0, blue: 56.0/255.0)
    
    struct HeaderTextStyle: ViewModifier {
        func body(content: Content) -> some View {
            return content
                .foregroundColor(Color.black)
                .modifier(Shadow())
                .font(Font.custom("Arial Rounded MT Bold", size: 26))
        }
    }
    
    struct ButtonTextStyle: ViewModifier {
        func body(content: Content) -> some View {
            return content
                .padding(.leading, 16)
                .font(Font.custom("Arial Rounded MT Bold", size: 18))
                .accentColor(darkOrange)
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
                .font(.system(size: 17))
                .fixedSize(horizontal: false, vertical: true)
        }
    }
    
    struct PostTitleStyle: ViewModifier {
        func body(content: Content) -> some View {
            return content
                .foregroundColor(Color.black)
                .font(.system(size: 14))
        }
    }
    
    struct PostSubTitleStyle: ViewModifier {
        func body(content: Content) -> some View {
            return content
                .foregroundColor(Color.gray)
                .font(.system(size: 12))
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
