//
//  kartDagit.swift
//  BlackJack
//
//  Created by Eren Küpeli on 8.03.2024.
//

import SwiftUI

func kartDagit(g: GlobalVariables){
    
    // İlk el için oyuncuya 2 CPU'ya 1 adet olmak üzere toplam 3 adet açık kart dağıtılmasını sağlayan kondisyon.
    if g.elSayisi == 1{
        DispatchQueue.main.asyncAfter(deadline: .now() + 0.1){
            g.cpuCard1 = cardRandomizer(score: "c")
        }
        DispatchQueue.main.asyncAfter(deadline: .now() + 0.2){
            g.playerCard1 = cardRandomizer(score: "p")
        }
        DispatchQueue.main.asyncAfter(deadline: .now() + 0.3){
            g.playerCard2 = cardRandomizer(score: "p")
        }
        DispatchQueue.main.asyncAfter(deadline: .now() + 0.3){
            check(g: g)
        }
    }
}

// Kart dağıtımı sonrası oyuncu ve CPU için 21 yapma kontrolü
func check(g: GlobalVariables){
    if playerScore == 21{
        winner(g: g)
    } else if cpuScore == 21{
        winner(g: g)
    }
}
