//
//  WelcomeView.swift
//  Code History
//
//  Created by Raj on 6/22/23.
//

import SwiftUI

struct WelcomeView: View {//introduces the user to the app
    
    var body: some View {
        NavigationView{
            ZStack{
                GameColor.mainColor.ignoresSafeArea()
                VStack{
                    Spacer()
                    VStack(alignment: .leading, spacing: 0){
                        Text("Ready for some Trivia? Select the correct answers to the following questions. Good luck!").font(.headline).bold().multilineTextAlignment(.leading).padding()
                    }
                    Spacer()
                    NavigationLink(destination: {//directs user to the game view
                        GameView()
                    }, label: {
                        BottomTextView(str: "Let's do this!")
                    })
                }.foregroundColor(.white)
            }
        }
    }
}

struct WelcomeView_Previews: PreviewProvider {
    static var previews: some View {
        WelcomeView()
    }
}
