//
//  SecondView.swift
//  SwiftUIPractice
//
//  Created by なぐも on 2022/11/23.
//

import SwiftUI

struct SecondView: View {
    @Binding var isShowSecondView:Bool
    var myJankenHands:String
    let opposeJankenHands = ["hand.thumbsup", "hand.point.up", "hand.raised"]
    
    var body: some View {
        VStack{
            Text("相手の手")
                .padding(10)
            Image(systemName: opposeJankenHands.randomElement() ?? "")
                .resizable()
                    .scaledToFit()
                    .frame(width: UIScreen.main.bounds.width/5)
                    .padding(50)
            Text("自分の手")
                .padding(10)
            Image(systemName: myJankenHands)
                .resizable()
                    .scaledToFit()
                    .frame(width: UIScreen.main.bounds.width/5)
                    .padding(50)
            Button(action:{
                isShowSecondView = false
            }){
                Text("戻る")
                    .padding()
            }
        }
    }
}

//struct SecondView_Previews: PreviewProvider {
//    static var previews: some View {
//        SecondView()
//    }
//}
