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

    struct ButtonTextStyle: ViewModifier {
      func body(content: Content) -> some View {
        return content
          .padding(.leading, 16)
          .font(Font.custom("Arial Rounded MT Bold", size: 18))
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
      }
    }
    
    struct PostTitleStyle: ViewModifier {
      func body(content: Content) -> some View {
        return content
          .foregroundColor(Color.black)
          .font(.system(size: 18))
      }
    }
    
    
    
}