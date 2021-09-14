//
//  ContentView.swift
//  lesson2Challenge
//
//  Created by Sabit Ahmed on 1/9/21.
//

import SwiftUI

struct ContentView: View {
    @State private var deck:[PlayingCard] = [PlayingCard]()
    @State private var comboArray:[String] = [String]()
    @State private var label:String = ""
    private let numberArray:[String] = ["Ace", "2","3","4","5","6","7","8","9","10","Jack","Queen","King"]
    private let suitArray:[String] = ["Spades", "Clubs", "Hearts", "Diamonds"]
    
    var body: some View {
        ZStack {
            VStack {
                Text(label)
                    .padding(.all)
                
                HStack {
                    Button(action: {
                        setCard()
                        
                    }, label: {
                        Text("Button 1")
                    })
                    
                    Button(action: {
                        getCard()
                        
                    }, label: {
                        Text("Button 2")
                    })
                }
            }
        }
    }
    
    func setCard () {
        var instancePlayingCard:PlayingCard = PlayingCard()
        instancePlayingCard.number = Int.random(in: 0...12)
        instancePlayingCard.suit = Int.random(in: 0...3)
        
        let numberSuitCombo = numberArray[instancePlayingCard.number] + suitArray[instancePlayingCard.suit]
        
        if comboArray.contains(numberSuitCombo) {
            label = "Generated duplicate card."
        }
        else {
            comboArray.append(numberSuitCombo)
            deck.append(instancePlayingCard)
            label = "Generated a \(numberArray[instancePlayingCard.number]) of \(suitArray[instancePlayingCard.suit])"
        }
    }
    
    func getCard () {
        if deck.count == 0 {
            label = "No cards in the deck."
        }
        else {
            let randomInstance = deck.randomElement()
            label = "Drew a \(numberArray[randomInstance!.number]) of \(suitArray[randomInstance!.suit])"
        }
        
    }
}


struct PlayingCard {
    var number:Int = 0
    var suit:Int = 0
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
