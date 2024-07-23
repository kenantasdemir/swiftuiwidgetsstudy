//
//  ToggleSwitchStudy.swift
//  swiftuiwidgetsstudy
//
//  Created by kenan on 23.07.2024.
//

import SwiftUI

struct ToggleSwitchStudy: View {
    @State private var switchState = false
    var body: some View {
        VStack{
            Toggle("Switch",isOn: $switchState)
                .onChange(of: switchState){ state in
                    print("Switch \(state)")
                }
                .toggleStyle(SwitchToggleStyle(tint: .red))
                .padding()
            
            Button("Show"){
                print("Switch State : \(switchState)")
            }
        }
    }
}

#Preview {
    ToggleSwitchStudy()
}
