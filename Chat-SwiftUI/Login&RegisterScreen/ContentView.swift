//
//  ContentView.swift
//  Chat-SwiftUI
//
//  Created by 3bdo on 6/13/20.
//  Copyright © 2020 3bdo. All rights reserved.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        
        ZStack{
            LinearGradient(gradient: Gradient( colors: [Color("Color1"), Color("Color2")]) , startPoint: .top, endPoint: .bottom).edgesIgnoringSafeArea(.all)
            
            if UIScreen.main.bounds.height > 800 {
                Home()
            } else {
                ScrollView(.vertical, showsIndicators: false){
                    Home()
                }
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

struct Home: View {
    var body: some View {
        VStack {
            VStack {
                Image("gorilla")
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                    .frame(width: 150, height: 150, alignment: .center)
                    .clipShape(Circle())
            }
            selectState()
        }.padding(.bottom, 50)
    }
}





