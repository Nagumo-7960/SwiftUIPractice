//
//  ContentView.swift
//  SwiftUIPractice
//
//  Created by なぐも on 2022/11/22.
//

import SwiftUI

struct ContentView: View {
    let myJankenHands = ["hand.thumbsup", "hand.point.up", "hand.raised"]
    @State var randomNumber = 0
    @State var isShowSecondView = false
    
    
    
    var body: some View {
        
        let bounds = UIScreen.main.bounds
        let width = CGFloat(bounds.width)
        let height = CGFloat(bounds.height)
        
        VStack{
            Button(action: {
                           isShowSecondView = true
                       }){
                           Image(systemName: "hand.thumbsup")
                               .resizable()
                                   .scaledToFit()
                                   .frame(width: UIScreen.main.bounds.width/5)
                                   .padding()
                           
                               .sheet(isPresented: $isShowSecondView){
                                   SecondView(isShowSecondView: $isShowSecondView, myJankenHands: myJankenHands[randomNumber])
                               }
                       }
            
            HStack{
                Button(action: {
                               isShowSecondView = true
                           }){
                               Image(systemName: "hand.point.up")
                                   .resizable()
                                       .scaledToFit()
                                       .frame(width: UIScreen.main.bounds.width/5)
                                       .padding()
                               
                                   .sheet(isPresented: $isShowSecondView){
                                       SecondView(isShowSecondView: $isShowSecondView, myJankenHands: myJankenHands[randomNumber])
                                   }
                           }

                Button(action: {
                               isShowSecondView = true
                           }){
                               Image(systemName: "hand.raised")
                                   .resizable()
                                       .scaledToFit()
                                       .frame(width: UIScreen.main.bounds.width/5)
                                       .padding()
                               
                                   .sheet(isPresented: $isShowSecondView){
                                       SecondView(isShowSecondView: $isShowSecondView, myJankenHands: myJankenHands[randomNumber])
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
