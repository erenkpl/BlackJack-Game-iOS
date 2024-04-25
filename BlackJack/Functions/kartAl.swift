//
//  kartAl.swift
//  BlackJack
//
//  Created by Eren Küpeli on 8.03.2024.
//

import SwiftUI

// Kasadan kart çekmek için oluşturulmuş bir fonksiyon
func kartAl(g: GlobalVariables){
    if g.elSayisi > 0{
        g.elSayisi += 1
        checkPlayer3rd(g: g)
    }
}
