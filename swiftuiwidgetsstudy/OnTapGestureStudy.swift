//
//  OnTapGestureStudy.swift
//  swiftuiwidgetsstudy
//
//  Created by kenan on 23.07.2024.
//

import SwiftUI

struct OnTapGestureStudy: View {
    var body: some View {
        VStack(spacing:100){
            Text("Click").onTapGesture {
                print("Clicked")
            }
            
            Text("Double Click").onTapGesture (count:2){
                print("Double cliked")
            }
        }
    }
}

#Preview {
    OnTapGestureStudy()
}
