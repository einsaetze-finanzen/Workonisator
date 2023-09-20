//
//  Textfeld.swift
//  
//
//  Created by Paul Brendtner on 03.07.23.
//

import SwiftUI

struct TextFeld: View {
    let icon: String
    let placeholder: String
    @Binding var text: String

    public init(icon: String, placeholder: String, text: Binding<String>){
        self.icon = icon
        self.placeholder = placeholder
        self._text = text
    }
    
    var body: some View {
        VStack {
            HStack{
                Image(systemName: icon)
                    .resizable()
                    .scaledToFit()
                    .frame(width: 20, height: 20)
                    .foregroundColor(Color(.darkGray))
                TextField(placeholder, text: $text)
                    .autocorrectionDisabled()
            }
            Divider()
                .background(Color(.darkGray))
        }
    }
}
