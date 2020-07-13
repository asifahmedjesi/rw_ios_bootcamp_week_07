//
//  View+Extension.swift
//  Birdui
//
//  Created by Asif Ahmed Jesi on 10/7/20.
//  Copyright © 2020 Razeware. All rights reserved.
//

import SwiftUI

extension View {
    
    func headerTextStyle() -> some View {
        self.modifier(AppStyles.HeaderTextStyle())
    }
    func postTextStyle() -> some View {
        self.modifier(AppStyles.PostTextStyle())
    }
    func postTitleStyle() -> some View {
        self.modifier(AppStyles.PostTitleStyle())
    }
    func postSubTitleStyle() -> some View {
        self.modifier(AppStyles.PostSubTitleStyle())
    }
    func buttonTitleStyle() -> some View {
        self.modifier(AppStyles.ButtonTitleStyle())
    }
    func profileNameStyle() -> some View {
        self.modifier(AppStyles.ProfileNameStyle())
    }
}
