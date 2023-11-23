//
//  SocialLoginView.swift
//  SwiftUIDemo
//
//  Created by Sourav Mishra on 20/11/23.
//

import Foundation
import SwiftUI

struct SocialLoginView: View {
    var body: some View {
        HStack(spacing: 16) {
            SocialButton(imageName: "facebook", buttonText: "Facebook") {
                print("Facebook login tapped")
            }
            
            SocialButton(imageName: "apple", buttonText: "Apple") {
                print("Apple login tapped")
            }
            
            SocialButton(imageName: "google", buttonText: "Google") {
                print("Google login tapped")
            }
        }.padding(5)
    }
}
