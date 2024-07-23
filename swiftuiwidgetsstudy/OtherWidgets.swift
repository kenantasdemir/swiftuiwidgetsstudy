//
//  OtherWidgets.swift
//  swiftuiwidgetsstudy
//
//  Created by kenan on 23.07.2024.
//

import SwiftUI

struct OtherWidgets: View {
    @State private var segmentedState = 0
    @State private var stepperState = 0
    @State private var sliderState = 30.0
    
    var body: some View {
        VStack(spacing:100){
            Picker("",selection: $segmentedState){
                Text("Food").tag(0)
                Text("Dessert").tag(1)
                Text("Drinks").tag(2)
            }
            .pickerStyle(.segmented)
            .onChange(of: segmentedState){ value in
            print("Segmented State is \(value)")
            }
            
            Button("Show State"){
                print("Segmented State \(segmentedState)")
            }
            
            VStack(spacing:20){
                Stepper("Stepper",value:$stepperState,in: 0...100).padding()
                Text("Result \(stepperState)")
                
                Button("Show"){
                    print("Stepper State is \(stepperState)")
                }
            }
            
   
            VStack{
                Slider(value:$sliderState,in: 0...100).padding()
                
                Text("Result \(sliderState)")
                Button("Show Slider State "){
                    print("Slider State is \(sliderState)")
                }
            }
            
            
        }
    }
}

#Preview {
    OtherWidgets()
}
