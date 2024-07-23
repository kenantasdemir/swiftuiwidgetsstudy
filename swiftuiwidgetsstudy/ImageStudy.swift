//
//  ImageStudy.swift
//  swiftuiwidgetsstudy
//
//  Created by kenan on 23.07.2024.
//

import SwiftUI

struct ImageStudy: View {
    @State private var imageName = "mutlu"
    var body: some View {
        VStack(spacing:100){
            Image(imageName).resizable().frame(width: /*@START_MENU_TOKEN@*/100/*@END_MENU_TOKEN@*/,height: 100)
            
            Button("Happy"){
                imageName = "mutlu"
            }
            Button("Sad"){
                imageName = "uzgun"
            }
        }
    }
}

#Preview {
    ImageStudy()
}
