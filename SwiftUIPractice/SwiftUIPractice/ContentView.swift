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
        VStack {
            Text(text)
                .padding()
            Button("ボタン"){
                print("ボタンが押された")
                text = "Hello, SwiftUI!"
            }
        }
        .padding()
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
