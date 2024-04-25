//
//  initi.swift
//  BlackJack
//
//  Created by Eren Küpeli on 8.03.2024.
//

import SwiftUI

// Oyun için tur başlangıcında yapılması gerekenlerin olduğu fonksiyon
func initi(g: GlobalVariables){
    g.kartDenetimi.toggle()
    g.animasyonDenetimi.toggle()
    if g.elSayisi == 0{
        g.ilkeldenetimi = false
        g.elSayisi = 1
        kartDagit(g: g)
    }
    else{
        sifirla(g: g)
        DispatchQueue.main.asyncAfter(deadline: .now() + 0.3){
            initi(g: g)
        }
    }
}
