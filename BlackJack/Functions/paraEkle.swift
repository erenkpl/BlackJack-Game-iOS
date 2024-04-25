//
//  paraEkle.swift
//  BlackJack
//
//  Created by Eren Küpeli on 8.03.2024.
//

import Swift

//Mevcut bahis icin para ekleme fonksiyonu.
func paraEkle (bahisMiktarı : Double, g: GlobalVariables){
    
    // Bahis miktarı, mevcut parayı aşmıyorsa ekle.
    if bahisMiktarı < g.para{
        g.bahis += bahisMiktarı
        g.para -= bahisMiktarı
    }
}
