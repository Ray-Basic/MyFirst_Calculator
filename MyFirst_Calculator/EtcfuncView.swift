//
//  EtcfuncView.swift
//  MyFirst_Calculator
//
//  Created by 이승우 on 2021/11/29.
//

import SwiftUI

struct EtcfuncView: View {
    var body: some View {
        VStack() {
                Text("위에 나머지 3개 기능")
                    .padding()
            HStack() {
                Mybutton2_Text(title1: "AC")
                    .padding()
                Mybutton2(iconName2: "plus.forwardslash.minus")
                    .padding()
                Mybutton2(iconName2: "percent")
                    .padding()
            }
        }
    }
}

struct EtcfuncView_Previews: PreviewProvider {
    static var previews: some View {
        EtcfuncView()
    }
}

struct Mybutton2_Text: View{
    var title1: String
    
    var body: some View {
        Button(action: {
            print("All clear")
        }) {
            VStack() {
                Text(title1)
                    .aspectRatio(contentMode: .fill)
                    .frame(width: 45.0, height: 45.0, alignment: .center)
                    .font(.title)
            }
            .padding()
            .foregroundColor(.black)
            .background(Color(hue: 1.0, saturation: 0.045, brightness: 0.473, opacity: 0.272))
            .mask(Circle())
            .frame(width: 45.0, height: 45.0, alignment: .center)
        }
    }
}

struct Mybutton2: View {
    var iconName2: String
    
    var body: some View {
        Button(action: {
            print("부가기능")
        }) {
            VStack() {
                Image(systemName: iconName2)
                    .aspectRatio(contentMode: .fill)
                    .frame(width: 45.0, height: 45.0, alignment: .center)
                    .font(.title)
            }
            .padding()
            .foregroundColor(.black)
            .background(Color(hue: 1.0, saturation: 0.045, brightness: 0.473, opacity: 0.272))
            .mask(Circle())
            .frame(width: 45.0, height: 45.0, alignment: .center)
        }
    }
}
