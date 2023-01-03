//
//  ContentView.swift
//  GuessTheNumber
//
//  Created by Dominik Kwiecien on 15/12/2022.
//

import SwiftUI

struct ContentView: View {
    @State private var showingAlert = false
    @State var sliderValue: Float = 50
    
    var roundedValue:Int = Int(round(sliderValue))
    var randomValue = Int.random(in: 1...100)
    var difference: Int = 0
    
    
    
    var body: some View {
        VStack {
            Text("Put the Bull's Eys as close as you can to: \(randomValue)")
            Slider(
                value:  $sliderValue,
                in: 1...100,
                minimumValueLabel: Text("1"),
                maximumValueLabel: Text("100"),
                label: {
                    Text("random number")
                }
            )
            
            Button("Hit me!") {
                print("Hit")
                showingAlert = true
                
                if randomValue > sliderValue {
                    
                }
                
            }
            .alert(isPresented: $showingAlert) {
                Alert(
                    title: Text("Hello World!"),
                    message: Text(
                        String(format:"The value of slider is now: " + "%.0f", sliderValue)
                        )
                    )
            }
            
            HStack(alignment: .bottom, spacing: 150){
                Button("Restart") {
                    print("Restart")
                }
                
                Text("Score:")
                Text("Round")
                
                Button("i") {
                    print("information")
                }
            }
            .padding(.top, 100.0)
        }
        
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
