//
//  CustomPasswordTextField.swift
//  SwiftUIDemo
//
//  Created by Sourav Mishra on 20/11/23.
//

import Foundation
import SwiftUI

struct CustomPasswordTextField: View {
    var imageName: String
    var placeholder: String
    @Binding var isPasswordVisible: Bool
    @Binding var text: String
    
    var body: some View {
        VStack(alignment: .leading, spacing: 10) {
            HStack {
                Image(systemName: imageName)
                    .resizable()
                    .frame(width: 12, height: 16)
                    .foregroundColor(.black)
                if isPasswordVisible {
                    TextField(placeholder, text: $text).foregroundColor(.black).font(.system(size: 15, weight: .medium))
                } else {
                    SecureField(placeholder, text: $text)
                        .foregroundColor(.black).font(.system(size: 15, weight: .medium))
                }
                Button(action: {
                    isPasswordVisible.toggle()
                }) {
                    Image(systemName: isPasswordVisible ? "eye.slash.fill" : "eye.fill")
                        .foregroundColor(.black)
                }
            }
            
            Divider()
                .background(Color.black)
        }
        .padding(.vertical, 10)
    }
}
