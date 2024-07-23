//
//  InputTypesStudy.swift
//  swiftuiwidgetsstudy
//
//  Created by kenan on 23.07.2024.
//

import SwiftUI

struct InputTypesStudy: View {
    @State private var tf = ""
    @State private var tfPsssword = ""
    @State private var data = ""
    var body: some View {
      
        VStack{
            Text("Text Field Data is \(data)")
                .font(.headline)
                .foregroundStyle(.white)
                .background(.black.opacity(0.6))
                .bold()
            
            TextField("Your email: ",text: $tf)
                .textContentType(.emailAddress)
                .keyboardType(.emailAddress)
                .autocorrectionDisabled()
                .autocapitalization(.none)
                .textFieldStyle(RoundedBorderTextFieldStyle())
                .padding()
            TextField("Password",text:$tfPsssword).textFieldStyle(MyStyle())
                .padding()
                
            Button("Get Data"){
                data = tf
            }.foregroundColor(.white)
                .padding()
                .background(.red)
                .cornerRadius(8)
                .foregroundColor(.white)
        }
    }
}

struct MyStyle:TextFieldStyle{
    func _body(configuration:TextField<Self._Label>) -> some View{
        configuration.padding().background(.green).cornerRadius(20)
            .shadow(color:.gray,radius:10)
    }
}

#Preview {
    InputTypesStudy()
}
