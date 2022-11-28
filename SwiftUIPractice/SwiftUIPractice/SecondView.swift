//
//  SecondView.swift
//  SwiftUIPractice
//
//  Created by なぐも on 2022/11/23.
//

import SwiftUI

struct SecondView: View {
    @Binding var isShowSecondView:Bool
    var body: some View {
        ZStack{
            Color(.red)
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
