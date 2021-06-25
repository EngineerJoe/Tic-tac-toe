//
//  ContentView.swift
//  MessAround
//
//  Created by joe leadbeater on 24/06/2021.
//

import SwiftUI

struct ContentView: View {
    let icon = [Image(systemName: ""), Image(systemName: "xmark"), Image(systemName: "circle")]
    @State var turn = 1
    @State var topLeft = 0
    @State var topMiddle = 0
    @State var topRight = 0
    @State var middleLeft = 0
    @State var middleMiddle = 0
    @State var middleRight = 0
    @State var bottomLeft = 0
    @State var bottomMiddle = 0
    @State var bottomRight = 0
    
    private func resetGame(){
        topLeft = 0
        topMiddle = 0
        topRight = 0
        middleLeft = 0
        middleMiddle = 0
        middleRight = 0
        bottomLeft = 0
        bottomMiddle = 0
        bottomRight = 0
        
    }
    
    private func takeTurn() -> Int{
        if turn == 1{
            turn += 1
            return turn
        } else {
            turn = 1
            return turn
        }
    }
    
    var body: some View {
        VStack{
            Text("Tic-tac-toe")
                .font(.largeTitle)
                .fontWeight(.bold)
            Text("By Joe")
            HStack{
                Button(action: {topLeft = takeTurn()}) {
                    icon[topLeft]
                        .font(.system(size: 50))
                        .padding()
                        .frame(width: /*@START_MENU_TOKEN@*/100/*@END_MENU_TOKEN@*/, height: /*@START_MENU_TOKEN@*/100/*@END_MENU_TOKEN@*/, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
                        .border(Color.black, width: 6)
                    
                }
                
                Button(action: {topMiddle = takeTurn()}) {
                    icon[topMiddle]
                        .font(.system(size: 50))
                        .padding()
                        .frame(width: /*@START_MENU_TOKEN@*/100/*@END_MENU_TOKEN@*/, height: /*@START_MENU_TOKEN@*/100/*@END_MENU_TOKEN@*/, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
                        .border(Color.black, width: 6)
                }
                Button(action: {topRight = takeTurn()}) {
                    icon[topRight]
                        .font(.system(size: 50))
                        .padding()
                        .frame(width: /*@START_MENU_TOKEN@*/100/*@END_MENU_TOKEN@*/, height: /*@START_MENU_TOKEN@*/100/*@END_MENU_TOKEN@*/, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
                        .border(Color.black, width: 6)
                }
            }
            HStack{
                Button(action: {middleLeft = takeTurn()}) {
                    icon[middleLeft]
                        .font(.system(size: 50))
                        .padding()
                        .frame(width: /*@START_MENU_TOKEN@*/100/*@END_MENU_TOKEN@*/, height: /*@START_MENU_TOKEN@*/100/*@END_MENU_TOKEN@*/, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
                        .border(Color.black, width: 6)
                    
                }
                Button(action: {middleMiddle = takeTurn()}) {
                    icon[middleMiddle]
                        .font(.system(size: 50))
                        .padding()
                        .frame(width: /*@START_MENU_TOKEN@*/100/*@END_MENU_TOKEN@*/, height: /*@START_MENU_TOKEN@*/100/*@END_MENU_TOKEN@*/, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
                        .border(Color.black, width: 6)
                }
                Button(action: {middleRight = takeTurn()}) {
                    icon[middleRight]
                        .font(.system(size: 50))
                        .padding()
                        .frame(width: /*@START_MENU_TOKEN@*/100/*@END_MENU_TOKEN@*/, height: /*@START_MENU_TOKEN@*/100/*@END_MENU_TOKEN@*/, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
                        .border(Color.black, width: 6)
                }
            }
            HStack{
                Button(action: {bottomLeft = takeTurn()}) {
                    icon[bottomLeft]
                        .font(.system(size: 50))
                        .padding()
                        .frame(width: /*@START_MENU_TOKEN@*/100/*@END_MENU_TOKEN@*/, height: /*@START_MENU_TOKEN@*/100/*@END_MENU_TOKEN@*/, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
                        .border(Color.black, width: 6)
                    
                }
                Button(action: {bottomMiddle = takeTurn()}) {
                    icon[bottomMiddle]
                        .font(.system(size: 50))
                        .padding()
                        .frame(width: /*@START_MENU_TOKEN@*/100/*@END_MENU_TOKEN@*/, height: /*@START_MENU_TOKEN@*/100/*@END_MENU_TOKEN@*/, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
                        .border(Color.black, width: 6)
                }
                Button(action: {bottomRight = takeTurn()}) {
                    icon[bottomRight]
                        .font(.system(size: 50))
                        .padding()
                        .frame(width: /*@START_MENU_TOKEN@*/100/*@END_MENU_TOKEN@*/, height: /*@START_MENU_TOKEN@*/100/*@END_MENU_TOKEN@*/, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
                        .border(Color.black, width: 6)
                }
            }
            Button(action: {resetGame()}, label: {
                Text("Reset Game")
            })
            
        }
        
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
