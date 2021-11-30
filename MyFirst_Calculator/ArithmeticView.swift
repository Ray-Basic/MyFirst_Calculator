//
//  ArithmeticView.swift
//  MyFirst_Calculator
//
//  Created by 이승우 on 2021/11/29.
//

import SwiftUI

struct ArithmeticView: View {
    var body: some View {
        ZStack {
            VStack(/*alignment: .center, spacing: 10*/) {
                Text("사칙연산")
                    .padding()
                Mybutton1(iconName1: "divide")
                    .padding()
                //Spacer().frame(height:20)
                Mybutton1(iconName1: "multiply")
                    .padding()
                Mybutton1(iconName1: "minus")
                    .padding()
                Mybutton1(iconName1: "plus")
                    .padding()
                Mybutton1(iconName1: "equal")
                    .padding()
            }
        }
    }
}

struct ArithmeticView_Previews: PreviewProvider {
    static var previews: some View {
        ArithmeticView()
    }
}

struct Mybutton1: View {
    //var title: String
    var iconName1: String
    
    var body: some View {
        Button(action: {
            print("사칙연산")
        }) {
            VStack() {
                Image(systemName: iconName1)
 //                   .resizable(capInsets: EdgeInsets(top: 50.0, leading: 5.0, bottom: 10.0, trailing: 5.0))
                    .aspectRatio(contentMode: .fill)
                    .frame(width: 45.0, height: 45.0, alignment: .center)
                    .font(.title)
                    //.spacing()
                    //.font(.system(size: 35))
                    //.minimumScaleFactor(0001)

            }
            .padding()
            //Spacer().frame(height:5)
            .foregroundColor(.white)
            .background(Color.orange)
            .mask(Circle())
            .frame(width: 45.0, height: 45.0, alignment: .center)
        }
    }
}
