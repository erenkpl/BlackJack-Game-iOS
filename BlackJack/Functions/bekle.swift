//
//  bekle.swift
//  BlackJack
//
//  Created by Eren Küpeli on 8.03.2024.
//

import SwiftUI

// Bekle tuşuna basıldığında olması gerekenler için bir fonksiyon
func bekle(g: GlobalVariables){
    g.bekleme = true
    if g.elSayisi > 0{
        // CPU'un ikinci kartı açık değilse açmak için kondisyon
        if g.cpuCard2 == BlackJackApp().theme{
            g.animasyonDenetimi = false
            g.cpuCard2 = cardRandomizer(score: "c")
            g.elSayisi += 1
        }
        g.elSayisi += 1
        // CPU ve oyuncu puanları toplam 16 üzerindeyse kart çekne işlemini durdur. Kazananı hesapla.
        if cpuScore == playerScore && cpuScore > 16{
            winner(g: g)
        }
        else if playerScore < cpuScore && cpuScore < 22{
            winner(g: g)
        }
        // CPU kartları 17 den düşükse, kart çekmeye devam et.
        else if cpuScore < 17{
            DispatchQueue.main.asyncAfter(deadline: .now() + 0.4){
                checkCpu3rd(g: g)
                bekle(g: g)
            }
        }
        else{
            winner(g: g)
        }
    }
}
