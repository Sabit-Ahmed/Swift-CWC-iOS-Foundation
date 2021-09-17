//
//  ContentView.swift
//  M4L9Challenge
//
//  Created by Sabit Ahmed on 17/9/21.
//

import SwiftUI

struct ContentView: View {
    
    let locations = [
        "Mexico City",
        "New York City",
        "Los Angeles",
        "Toronto",
        "Chicago",
        "Houston",
        "Havana",
        "Montréal",
        "Ecatepec de Morelos",
        "Philadelphia"
    ]
    
    let menuItems = [
        "Sweet potato fries",
        "Nachos",
        "Grilled salmon salad",
        "Pad thai",
        "Fish tacos",
        "Turkey burger",
        "Poutine",
        "Potato leek soup"
    ]
    
    let times = [
        "5 pm",
        "6 pm",
        "7 pm",
        "8 pm",
        "9 pm"
    ]
    
    
    @State private var selectedLocation = 0
    @State private var selectedMenu = 2
    @State private var selectedTime = 4
    @State private var time = Date()
    
    var body: some View {
        VStack{
            Spacer()
            Text("Ottimo Ristorante")
                .font(.largeTitle)
                .fontWeight(.bold)
                .padding(/*@START_MENU_TOKEN@*/.all/*@END_MENU_TOKEN@*/)
                
            Spacer()
            HStack {
                Picker("Location: ", selection: $selectedLocation) {
                    ForEach(0..<locations.count) { i in
                        Text(locations[i]).tag(i)
                    }
                }
                .pickerStyle(MenuPickerStyle())
                
                Text(locations[selectedLocation])
            }
            
            Spacer()
            VStack(spacing: 0.0) {
                Text("Order: ")
                    .font(.headline)
                
                Picker("Order: ", selection: $selectedMenu) {
                    ForEach(0..<menuItems.count) { i in
                        Text(menuItems[i]).tag(i)
                    }
                }
            }
            
            Spacer()
            VStack {
                Text("Pickup time: ")
                    .font(.headline)
                
//                Picker("Pick Time", selection: $selectedTime) {
//                    ForEach(0..<times.count) { i in
//                        Text(times[i]).tag(i)
//                    }
//                }
//                .pickerStyle(SegmentedPickerStyle())
                
                DatePicker ("Pick time", selection: $time)
                
            }
            
            Spacer()
            
            Button(action: {
                selectedLocation = Int.random(in: 0..<locations.count)
                selectedMenu = Int.random(in: 0..<menuItems.count)
                selectedTime = Int.random(in: 0..<times.count)
            }, label: {
                Text("Pick for me!")
            })
            
            
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
