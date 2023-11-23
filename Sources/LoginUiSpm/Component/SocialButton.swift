//
//  SocialButton.swift
//  SwiftUIDemo
//
//  Created by Sourav Mishra on 20/11/23.
//

import Foundation
import SwiftUI

struct SocialButton: View {
    var imageName: String
    var buttonText: String
    var action: () -> Void
    
    var body: some View {
        Button(action: action) {
            HStack {
                Image(imageName)
                    .resizable()
                    .frame(width: 30, height: 30)
                    .padding()
                                
            }
        }.frame(width: 80, height: 60, alignment: .center)
            .overlay(
                RoundedRectangle(cornerRadius: 10)
                    .stroke(Color.gray.opacity(0.5), lineWidth: 1)
            )
    }
}
