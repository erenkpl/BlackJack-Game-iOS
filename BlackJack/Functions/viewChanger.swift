//
//  viewChanger.swift
//  BlackJack
//
//  Created by Eren Küpeli on 8.03.2024.
//

import SwiftUI

//Giriş ekranı ve oyun ekranı arasında geçiş için fonksiyon

func viewChangerContent(g: GlobalVariables){
    sifirla(g: g)
    g.viewChecker = "Content"
}

func viewChangerGiris(g: GlobalVariables){
    sifirla(g: g)
    g.viewChecker = "Bahis"
}
