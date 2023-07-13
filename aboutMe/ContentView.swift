//
//  ContentView.swift
//  aboutMe
//
//  Created by Scholar on 7/13/23.
//hey nat

import SwiftUI

struct ContentView: View {
    @State private var textTitle = "Hi, I'm Nat"
    @State private var info = ""
    @State private var button = "Hi Nat"
    @State private var numClicks = 0
    @State private var jenevieve = ""
//    @State private var jenevieve = Image("jenevieve")
    var body: some View {
        ZStack {
            Color("oliveGreen").ignoresSafeArea()
            VStack {
                Text("\(textTitle)")
                    .font(.largeTitle)
                    .fontWeight(.bold)
                    .foregroundColor(Color("lightGreen"))
                    .padding()
                
                Text("\(info)")
                    .font(.title)
                    .fontWeight(.bold)
                    .foregroundColor(Color("lightGreen"))
                    .padding(.horizontal, 30.0)
                //the "$" before the variable "name" tells swift to read the value of the property and to update it if any changes happen
//                Image("\(jenevieve)")
                Image(jenevieve)
                
                Button("\(button)") {
                    numClicks += 1
                    print(numClicks)
                    if (numClicks == 1) {
                        withAnimation(.easeIn(duration: 1.0)) {
                            textTitle = "Click to learn more about me...(Don't click when button is blank)"
                            button = "Learn more..."
                        }
                    }
                    else if (numClicks == 2) {
                        withAnimation(.easeIn(duration: 1.0)) {
                            textTitle = ""
                            button = ""
                            info = "I love playing Sims 4...I've clocked  about 1600 hours over the last four years D:"
                        }
                        withAnimation(.easeIn(duration: 1.0).delay(3.5)) {
                            textTitle = "Want to learn even more?"
                            button = "Sure!"
                            info = ""
                        }
                    }
                    else if (numClicks == 3) {
                        withAnimation(.easeIn(duration: 1.0)) {
                            textTitle = "Huh. Okay!"
                            button = ""
                        }
                        withAnimation(.easeIn(duration: 1.0).delay(1.5)) {
                            textTitle = ""
                            info = "My favorite artist right now is Jenevieve, but Lady Gaga has a special place in my heart..."
                        }
                        withAnimation(.easeIn(duration: 1.0).delay(3.5)) {
                            button = "Who's Jenevieve?"
                        }
                    }
                    else if (numClicks == 4) {
                       withAnimation(.easeIn(duration: 1.0)) {
                            textTitle = "You're kidding..."
                            info = ""
                            button = "..."
                        }
                    }
                    else if (numClicks == 5) {
                        withAnimation(.easeIn(duration: 1.0)) {
                            jenevieve = "jenevieve2"
                            textTitle = "This is Jenevieve! ...the more you know...?"
                            button = "Cool! It was nice to learn more about you :)"
                        }
                    }
                    else if (numClicks == 6) {
                        withAnimation(.easeIn(duration: 3.0)) {
                            textTitle = "It was cool to be learned about. Have a swaggy day!"
                            jenevieve = ""
                            button = ""
                        }
                        withAnimation(.easeIn(duration:1.0).delay(3.5)) {
                            textTitle = ""
                        }
                    }
                }
                .font(.title2)
                .buttonStyle(.borderedProminent)
                .tint(Color("lightGreen"))
                .foregroundColor(Color("oliveGreen"))
                .padding()
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
