//
//  ContentView.swift
//  SwiftUIPractice
//
//  Created by なぐも on 2022/11/22.
//

import SwiftUI

struct ContentView: View {
    let opposeJankenHands = ["hand.thumbsup", "hand.point.up", "hand.raised"]
    @State var randomNumber = 0
    @State var isShowSecondView = false
    
    
    
    var body: some View {
        
        let bounds = UIScreen.main.bounds
        let width = CGFloat(bounds.width)
        let height = CGFloat(bounds.height)
        
        VStack{
            Button(action: {
                           isShowSecondView = true
                randomNumber = Int.random(in: 1...opposeJankenHands.count-1)
                       }){
                           Image(systemName: "hand.thumbsup")
                               .resizable()
                                   .scaledToFit()
                                   .frame(width: UIScreen.main.bounds.width/5)
                                   .padding()
                           
                               .sheet(isPresented: $isShowSecondView){
                                   SecondView(isShowSecondView: $isShowSecondView, myJankenHands: "hand.thumbsup", opposeJankenHands: opposeJankenHands[randomNumber])
                               }
                       }
            
            HStack{
                Button(action: {
                               isShowSecondView = true
                    randomNumber = Int.random(in: 1...opposeJankenHands.count-1)
                           }){
                               Image(systemName: "hand.point.up")
                                   .resizable()
                                       .scaledToFit()
                                       .frame(width: UIScreen.main.bounds.width/5)
                                       .padding()
                               
                                   .sheet(isPresented: $isShowSecondView){
                                       SecondView(isShowSecondView: $isShowSecondView, myJankenHands: "hand.point.up", opposeJankenHands: opposeJankenHands[randomNumber])
                                   }
                           }

                Button(action: {
                               isShowSecondView = true
                    randomNumber = Int.random(in: 1...opposeJankenHands.count-1)
                           }){
                               Image(systemName: "hand.raised")
                                   .resizable()
                                       .scaledToFit()
                                       .frame(width: UIScreen.main.bounds.width/5)
                                       .padding()
                               
                                   .sheet(isPresented: $isShowSecondView){
                                       SecondView(isShowSecondView: $isShowSecondView, myJankenHands: "hand.raised", opposeJankenHands: opposeJankenHands[randomNumber])
                                   }
                           }
            }
                Text("じゃんけんしよう").font(.largeTitle)
                    .padding()
                    .frame(width: width-50, height: width/4)
                    .foregroundColor(.black)
            
        }
    }
}


struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
