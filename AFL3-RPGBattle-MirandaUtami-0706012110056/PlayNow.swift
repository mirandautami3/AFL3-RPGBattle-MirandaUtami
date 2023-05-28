//
//  PlayNow.swift
//  AFL3-RPGBattle-MirandaUtami-0706012110056
//
//  Created by miranda on 27/04/23.
//

import SwiftUI

struct PlayNow: View {
    @State private var playerScore = 0
    @State private var golemScore = 0
    @State private var trollScore = 0
    
    var body: some View {
        VStack {
            Text("Golem vs Troll")
                .font(.largeTitle)
                .padding()
            
            Spacer()
            
            VStack {
                Text("Player")
                    .font(.title)
                Text("\(playerScore)")
                    .font(.title)
                    .padding()
                    .background(Color.blue)
                    .foregroundColor(.white)
                    .cornerRadius(10)
            }
            
            Spacer()
            
            HStack {
                VStack {
                    Text("Golem")
                        .font(.title)
                    Text("\(golemScore)")
                        .font(.title)
                        .padding()
                        .background(Color.orange)
                        .foregroundColor(.white)
                        .cornerRadius(10)
                }
                
                VStack {
                    Text("Troll")
                        .font(.title)
                    Text("\(trollScore)")
                        .font(.title)
                        .padding()
                        .background(Color.green)
                        .foregroundColor(.white)
                        .cornerRadius(10)
                }
            }
            
            Spacer()
            
            HStack {
                Button(action: {
                    self.attackGolem()
                }) {
                    Text("Attack Golem")
                        .font(.title)
                        .padding()
                        .background(Color.orange)
                        .foregroundColor(.white)
                        .cornerRadius(10)
                }
                
                Button(action: {
                    self.attackTroll()
                }) {
                    Text("Attack Troll")
                        .font(.title)
                        .padding()
                        .background(Color.green)
                        .foregroundColor(.white)
                        .cornerRadius(10)
                }
            }
        }
    }
    
    func attackGolem() {
        let playerDamage = Int.random(in: 1...10)
        let golemDamage = Int.random(in: 1...10)
        
        if golemDamage >= playerDamage {
            golemScore += 1
        } else {
            playerScore += 1
        }
    }
    
    func attackTroll() {
        let playerDamage = Int.random(in: 1...10)
        let trollDamage = Int.random(in: 1...10)
        
        if trollDamage >= playerDamage {
            trollScore += 1
        } else {
            playerScore += 1
        }
    }
}

struct PlayNow_Previews: PreviewProvider {
    static var previews: some View {
        PlayNow()
    }
}
