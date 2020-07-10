//
//  Image+Extension.swift
//  Birdui
//
//  Created by Asif Ahmed Jesi on 10/7/20.
//  Copyright © 2020 Razeware. All rights reserved.
//

import SwiftUI

extension Image {
    
    func imageStyle() -> some View {
        self.modifier(AppStyles.ImageStyle(image: self))
    }
    func imageStyle(width: CGFloat, height: CGFloat) -> some View {
        self.modifier(AppStyles.ImageStyleWithFrame(image: self, width: width, height: height))
    }
    func headerImageStyle(width: CGFloat, height: CGFloat) -> some View {
        self.modifier(AppStyles.HeaderImageStyle(image: self, width: width, height: height))
    }
    func postTextStyle() -> some View {
        self.modifier(AppStyles.PostTextStyle())
    }
    func postTitleStyle() -> some View {
        self.modifier(AppStyles.PostTitleStyle())
    }
    func buttonTitleStyle() -> some View {
        self.modifier(AppStyles.ButtonTextStyle())
    }
}
