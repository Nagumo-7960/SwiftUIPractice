//
//  SecondView.swift
//  SwiftUIPractice
//
//  Created by なぐも on 2022/11/23.
//

import SwiftUI

struct SecondView: View {
    var body: some View {
        ZStack{
            Color(.red)
            Text("画面を遷移した")
        }
    }
}

struct SecondView_Previews: PreviewProvider {
    static var previews: some View {
        SecondView()
    }
}
