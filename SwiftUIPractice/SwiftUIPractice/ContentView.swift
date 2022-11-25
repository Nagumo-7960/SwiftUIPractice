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
        VStack{
            Button(action: {
                print("おみくじを引いた")}){
                    Text("おみくじを引く")
                }
        }
    }
}


struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
