//
//  ContentView.swift
//  FadingRandomCharacterText
//
//  Created by Vadiraj Hippargi on 5/29/21.
//

import SwiftUI

struct ContentView: View {
    
    @State var opacityManager = false
    
    var body: some View {
        HStack(spacing: 0){
        Text("W")
            .font(.title)
           
            .opacity(opacityManager ? 1 : 0.2)
            .animation(
                Animation.easeInOut(duration: 1.5)
                    .delay(0.9)
                    .repeatForever()
            )
            Text("O")
                .font(.title)
              
                .opacity(opacityManager ? 1 : 0.4)
                .animation(
                    Animation.easeInOut(duration: 1)
                        .delay(1.5)
                        .repeatForever()
                )
            Text("R")
                .font(.title)
                
                .opacity(opacityManager ? 1 : 0.3)
                .animation(
                    Animation.easeInOut(duration: 2)
                        .delay(1.25)
                        .repeatForever()
                )
            Text("L")
                .font(.title)
               
                .opacity(opacityManager ? 1 : 0.1)
                .animation(
                    Animation.easeInOut(duration: 1.8)
                        .delay(1)
                        .repeatForever()
                )
            Text("D")
                .font(.title)
                
                .opacity(opacityManager ? 1 : 0.2)
                .animation(
                    Animation.easeInOut(duration: 0.8)
                        .delay(0.8)
                        .repeatForever()
                )
            
            }.onAppear{
                withAnimation {
                    opacityManager.toggle()
                }
            }.padding()
        .background(Color.yellow)
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
