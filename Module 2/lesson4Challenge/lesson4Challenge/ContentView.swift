//
//  ContentView.swift
//  lesson4Challenge
//
//  Created by Sabit Ahmed on 6/9/21.
//

import SwiftUI

struct ContentView: View {
    @State var myList:[Int] = [Int]()
    
    var body: some View {
        
        NavigationView {
            VStack {
                List (myList, id: \.self) {element in
                    Text(String(element))
                }.navigationTitle("Lesson 4 Challenge")
                
                Button(action: {
                    button1Action ()
                }, label: {
                    Text("Button 1")
                })
                Button(action: {
                    button2Action()
                }, label: {
                    Text("Button 2")
                })
                Button(action: {
                    button3Action()
                }, label: {
                    Text("Button 3")
                })
            }
            
        }
    }
    
    private func button1Action () {
        var randN = 0
        repeat {
            randN = Int.random(in: 1...10)
            print(randN)
            myList.append(randN)
        } while randN != 7
    }
    
    private func button2Action () {
        if myList.count != 0 {
            for i in 0...myList.count - 1 {
                myList [i] += 1
            }
        }
    }
    
    private func button3Action() {
        myList.removeAll()
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
