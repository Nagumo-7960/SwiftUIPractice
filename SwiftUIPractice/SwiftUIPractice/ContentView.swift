//
//  ContentView.swift
//  SwiftUIPractice
//
//  Created by なぐも on 2022/11/22.
//

import SwiftUI

struct ContentView: View {
    let result = ["おみくじ", "大吉", "中吉", "吉","小吉","末吉", "凶", "大凶"]
    @State var randomNumber = 0
    @State var isShowSecondView = false
    

    
    var body: some View {
        
        let bounds = UIScreen.main.bounds
        let width = CGFloat(bounds.width)
        let height = CGFloat(bounds.height)
        
        VStack{
            Button(action: {
                print("おみくじを引いた")
                randomNumber = Int.random(in: 1...result.count-1)
                isShowSecondView = true
                
            }){
                    Text("おみくじを引く")
                        .padding()
                        .frame(width: width-50, height: width/2)
                        .background(.orange)
                        .foregroundColor(.black)
                        .cornerRadius(10)
                
                        .sheet(isPresented: $isShowSecondView){
                            SecondView(isShowSecondView: $isShowSecondView, omikujiResult: result[randomNumber])
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
