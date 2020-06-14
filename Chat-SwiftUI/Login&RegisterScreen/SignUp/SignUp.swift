//
//  LoginField.swift
//  Chat-SwiftUI
//
//  Created by 3bdo on 6/13/20.
//  Copyright © 2020 3bdo. All rights reserved.
//

import SwiftUI

struct SignUp: View {
    @State var mail = ""
    @State var pass = ""
    @State var rePass = ""
    @State var hide = true
    @State var hide2 = true
    
    var body: some View {
        VStack {
            VStack{
                HStack(spacing: 15){
                    Image(systemName: "envelope")
                        .foregroundColor(.black)
                        .frame(width: 25, height: 25)
                    TextField("Enter your mail", text: self.$mail)
                }.padding(.vertical, 20)
                    .padding(.top, 10)
                    .padding(.leading, 15)
                    .padding(.trailing, 10)
                
                Divider()
                HStack(spacing: 15){
                                   if !self.hide {
                                       Image(systemName: "lock")
                                           .resizable()
                                           .frame(width: 15, height: 18)
                                           .foregroundColor(.black)
                                       TextField("Enter your Password", text: self.$pass)
                                   }else {
                                       Image(systemName: "lock")
                                           .resizable()
                                           .frame(width: 15, height: 18)
                                           .foregroundColor(.black)
                                       SecureField("Enter your Password", text: self.$pass)
                                   }
                                   Button(action: {
                                       self.hide.toggle()
                                   }) {
                                       Image(systemName: "eye")
                                           .foregroundColor(self.hide ? .black : .green)
                                   }
                               }.padding(.vertical, 20)
                                   .padding(.bottom, 10)
                                   .padding(.leading, 20)
                                   .padding(.trailing, 10)
                
                Divider()
                
                HStack(spacing: 15){
                    if !self.hide2 {
                        Image(systemName: "lock")
                            .resizable()
                            .frame(width: 15, height: 18)
                            .foregroundColor(.black)
                        TextField("Enter your Password", text: self.$rePass)
                    }else {
                        Image(systemName: "lock")
                            .resizable()
                            .frame(width: 15, height: 18)
                            .foregroundColor(.black)
                        SecureField("Enter your Password", text: self.$rePass)
                    }
                    Button(action: {
                        self.hide2.toggle()
                    }) {
                        Image(systemName: "eye")
                            .foregroundColor(self.hide2 ? .black : .green)
                    }
                }.padding(.vertical, 20)
                    .padding(.bottom, 10)
                    .padding(.leading, 20)
                    .padding(.trailing, 10)
                
            }
            .padding(.bottom, 40)
            .background(Color.white)
            .cornerRadius(10)
            .padding(.horizontal, 20)
            

            Button(action: {
                
            }) {
                Text("Login")
                    .padding(.vertical)
                    .foregroundColor(Color.white)
                    .frame(width: (UIScreen.main.bounds.width - 100))
                    .font(Font.custom("", size: 24))
                    
            }
            .background(
                LinearGradient(gradient: Gradient(colors: [Color("Color1"),Color("Color2"),Color("Color1")]), startPoint: .leading, endPoint: .trailing)
            ).cornerRadius(10)
            .offset(y: -40)
                .shadow(radius: 20)
            
        }
        
    }
}

struct SignUp_Previews: PreviewProvider {
    static var previews: some View {
        SignUp().previewLayout(.sizeThatFits)
    }
}


