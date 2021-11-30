//
//  NumberView.swift
//  MyFirst_Calculator
//
//  Created by 이승우 on 2021/11/29.
//

import SwiftUI

struct NumberView: View {
    var body: some View {
        VStack() {
                Text("숫자")
                    .padding()
            HStack() {
                Mybutton3(title2: "1")
                    .padding()
                Mybutton3(title2: "2")
                    .padding()
                Mybutton3(title2: "3")
                    .padding()
            }
            HStack() {
                Mybutton3(title2: "4")
                    .padding()
                Mybutton3(title2: "5")
                    .padding()
                Mybutton3(title2: "6")
                    .padding()
            }
            HStack() {
                Mybutton3(title2: "7")
                    .padding()
                Mybutton3(title2: "8")
                    .padding()
                Mybutton3(title2: "9")
                    .padding()
            }
            HStack() {
                Mybutton3_Zero(title2_Zero: "0")
                    .padding()
                //Spacer().frame(height:5)
                Mybutton3(title2: ".")
                    .padding()
            }
        }
    }
}

struct NumberView_Previews: PreviewProvider {
    static var previews: some View {
        NumberView()
    }
}

struct Mybutton3: View {
    var title2: String

    var body: some View {
        Button(action: {
            print("숫자")
        }) {
            HStack() {
                Text(title2)
                    .aspectRatio(contentMode: .fill)
                    .frame(width: 45.0, height: 45.0, alignment: .center)
                    .font(.title)
            }
            .padding()
            .foregroundColor(.white)
            .background(Color(hue: 1.0, saturation: 0.142, brightness: 0.082, opacity: 0.456))
            .mask(Circle())
            .frame(width: 45.0, height: 45.0, alignment: .center)
        }
    }
}

struct Mybutton3_Zero: View {
    var title2_Zero: String

    var body: some View {
        Button(action: {
            print("0")
        }) {
            HStack() {
                Text(title2_Zero)
                    .aspectRatio(contentMode: .fill)
                    .frame(width: 120.0, height: 45.0, alignment: .center)
                    .font(.title)
            }
            .padding()
            .foregroundColor(.white)
            .background(Color(hue: 1.0, saturation: 0.142, brightness: 0.082, opacity: 0.456))
            //.mask(Circle())
            .cornerRadius(40)
            .frame(width: 45.0, height: 45.0, alignment: .center)
        }
    }
}
