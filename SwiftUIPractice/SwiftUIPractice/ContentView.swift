//
//  ContentView.swift
//  SwiftUIPractice
//
//  Created by なぐも on 2022/11/22.
//

import SwiftUI

struct ContentView: View {
    @State var result = ["大吉", "中吉", "吉", "凶"]
    var body: some View {
        VStack{
            Text(result.first!).font(.largeTitle)
                .padding()
            
            Button(action: {
                print("おみくじを引いた")}){
                    Text("おみくじを引く")
                        .padding()
                        .background(.orange)
                        .foregroundColor(.black)
                        .cornerRadius(10)
                }
        }
    }
}


struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
