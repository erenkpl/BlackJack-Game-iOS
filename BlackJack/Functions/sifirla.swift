//
//  sifirla.swift
//  BlackJack
//
//  Created by Eren Küpeli on 8.03.2024.
//

import SwiftUI

// Tanımlanan tüm variable'ları yeni tura başlamadan önce gerekli kondisyonlara getirmek için gerekli fonksiyon.
func sifirla(g: GlobalVariables){
    g.playerCard1 = BlackJackApp().theme
    g.playerCard2 = BlackJackApp().theme
    g.playerCard3 = BlackJackApp().theme
    g.playerCard4 = BlackJackApp().theme
    g.playerCard5 = BlackJackApp().theme
    g.cpuCard1 = BlackJackApp().theme
    g.cpuCard2 = BlackJackApp().theme
    g.cpuCard3 = BlackJackApp().theme
    g.cpuCard4 = BlackJackApp().theme
    g.cpuCard5 = BlackJackApp().theme
    playerScore = 0
    cpuScore = 0
    g.elSayisi = 0
    g.bahis = 0
    g.ilkeldenetimi = true
    g.bahiskontrol = true
    g.kartDenetimi = false
    g.chip1 = false
    g.chip2 = false
    g.chip3 = false
    g.chip4 = false
    g.chip1count = 0
    g.chip2count = 0
    g.chip3count = 0
    g.chip4count = 0
    cardType = ["k", "l", "m", "n", "p", "x"]
    cardK = [2, 3, 4, 5, 6, 7, 8, 9, 10]
    cardL = [2, 3, 4, 5, 6, 7, 8, 9, 10]
    cardM = [2, 3, 4, 5, 6, 7, 8, 9, 10]
    cardN = [2, 3, 4, 5, 6, 7, 8, 9, 10]
    cardP = [1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12]
    cardX = [1, 2, 3, 4]
    playerAS = false
    cpuAS = false
}
