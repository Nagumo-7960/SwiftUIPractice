//
//  SecondView.swift
//  SwiftUIPractice
//
//  Created by なぐも on 2022/11/23.
//

import SwiftUI

struct SecondView: View {
    @Binding var isShowSecondView:Bool
    var omikujiResult:String
    var body: some View {
        ZStack{
            Text(omikujiResult)
                .font(.largeTitle)
                .padding()
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
