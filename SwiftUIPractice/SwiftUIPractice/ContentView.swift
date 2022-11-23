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
                    .navigationTitle("画面1")
                }
            }
        }
        .padding()
    }


struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
