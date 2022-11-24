//
//  ContentView.swift
//  SwiftUIPractice
//
//  Created by なぐも on 2022/11/22.
//

import SwiftUI

struct ContentView: View {
    @State var text = "Hello, world!"
    var body: some View {
    
            NavigationView{
                VStack{
                    Text("画面1")
                        .padding()
                    NavigationLink(destination: SecondView().navigationTitle("画面2")){
                        Text("画面2へ")
                    }
                }
                .navigationTitle("画面1")
            }
        }
    }


struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
