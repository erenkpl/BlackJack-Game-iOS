//
//  checkThirds.swift
//  BlackJack
//
//  Created by Eren Küpeli on 8.03.2024.
//

import SwiftUI

func checkCpu3rd(g: GlobalVariables){
    // 3. kartın arkası dönükse, o kartı çek
    if g.cpuCard3 == BlackJackApp().theme {
        g.cpuCard3 = cardRandomizer(score: "c")
    }
    // Yoksa, 4. kartın arkası dönükse, o kartı çek
    else if g.cpuCard4 == BlackJackApp().theme {
        g.cpuCard4 = cardRandomizer(score: "c")
    }
    // Yoksa 5. kartı çek
    else{
        g.cpuCard5 = cardRandomizer(score: "c")
    }
}

func checkPlayer3rd(g: GlobalVariables){
    // 3. kartın arkası dönükse, o kartı çek
    if g.playerCard3 == BlackJackApp().theme {
        g.playerCard3 = cardRandomizer(score: "p")
    }
    // Yoksa, 4. kartın arkası dönükse, o kartı çek
    else if g.playerCard4 == BlackJackApp().theme {
        g.playerCard4 = cardRandomizer(score: "p")
    }
    // Yoksa 5. kartı çek
    else{
        g.playerCard5 = cardRandomizer(score: "p")
    }
    // Kart çektikten sonra "oyuncunun eli 21 yapıyor mu?" kontrolü
    if playerScore<22 && g.elSayisi > 1{
        if playerScore == 21{
            check(g: g)
        }
    }
    else{
        winner(g: g)
    }
}
