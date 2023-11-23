//
//  CustomTextField.swift
//  SwiftUIDemo
//
//  Created by Sourav Mishra on 20/11/23.
//

import Foundation
import SwiftUI

struct CustomTextField: View {
    var imageName: String
    var placeholder: String
    @Binding var text: String
    
    var body: some View {
        VStack(alignment: .leading, spacing: 10) {
            HStack {
                Image(systemName: imageName)
                    .resizable()
                    .frame(width: 16, height: 16)
                    .foregroundColor(.black)
                
                TextField(placeholder, text: $text)
                    .foregroundColor(.black).font(.system(size: 15,weight: .medium))
            }
            
            Divider()
                .background(Color.black)
        }
        .padding(.vertical, 10)
    }
}
