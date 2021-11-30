//
//  ContentView.swift
//  MyFirst_Calculator
//
//  Created by 이승우 on 2021/11/24.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        ZStack {
                ArithmeticView()
                //.padding(.trailing)
                EtcfuncView()
                //배경 색 검정으로 하기
    }
  }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
