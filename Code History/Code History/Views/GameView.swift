//
//  ContentView.swift
//  Code History
//
//  Created by Raj on 6/11/23.
//

import SwiftUI

struct GameView: View {//sets up view for each question
    //makes question constant from question model
    let question = Question(
        questionText: "What was the first computer bug?",
        possibleAnswers: ["Ant", "Beetle", "Moth", "Fly"],
        correctAnswerIndex: 2)
    
    //@State allows mainColor to change
    //@StateObject allows changes of viewModel and updates it to the game view model
    @StateObject var viewModel = GameViewModel()
    var body: some View {
        ZStack{
            GameColor.mainColor.ignoresSafeArea() //expands game background to farthest point of screen
            VStack{
                Text(viewModel.questionProgressText).font(.callout).multilineTextAlignment(.leading).padding()//shows user progress
                QuestionView(question: viewModel.currentQuestion)//displays question
            }.foregroundColor(.white)
                .navigationBarHidden(true)
                .environmentObject(viewModel)
        }//.navigationDestination(isPresented: $viewModel.isOver){
            //ScoreView(viewModel: ScoreViewModel(correctGuesses: viewModel.correctGuesses, incorrectGuesses: viewModel.incorrectGuesses))
        //}
    }
}



struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        GameView()
    }
}
