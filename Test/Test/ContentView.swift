//
//  ContentView.swift
//  Test
//
//  Created by Uma
//

import SwiftUI

struct ContentView: View {
    
    @State var numeric1 = 1
    @State var numeric2 = 1
    @State var resulta = "Start"
    
    var body: some View {
        ZStack {
            Image ("Sky")
            VStack {
                HStack {
                    NumberView (d: numeric1)
                        .background(Color.yellow)
                    NumberView (d: numeric2)
                        .background(Color.blue)
                }
                Text(resulta)
                    .font(.system(size: 50))
                    .fontWeight(.heavy)
                    .foregroundColor(.black)
                    .padding(.horizontal)
                Button(action: {
                    self.numeric1 =
                    Int.random(in: 1...6)
                    self.numeric2 = Int.random(in: 1...6)
                    self.resulta = df(numeric1,numeric2)
                }){
                    Text("Click")
                        .font(.system(size: 50))
                        .fontWeight(.heavy)
                        .foregroundColor(.white)
                        .padding(.horizontal)
                }.background(Color.green)
            }
        }
    }
}
struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
struct NumberView: View {
    let d: Int
    var body: some View {
        Text("\(d)")
            .font(.system(size: 150))
            .fontWeight(.heavy)
            .foregroundColor(.black)
            .padding(.horizontal)
    }
}
func df (_ a : Int, _ b: Int) -> String {
    var fas = ""
    if a == b {
        fas = "Repeat"
    } else if a > b {
        fas = "Yellow" }
    else if a < b {
        fas = "Blue"
    }
    return fas
}
