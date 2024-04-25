//
//  GlobalVariables.swift
//  BlackJack
//
//  Created by Eren Küpeli on 8.03.2024.
//

import SwiftUI

class GlobalVariables : ObservableObject{
    //Oyun ici parayi ve mevcut bahisi her yerden kontrol edebilmek adina, global variable olusturduk.
    @AppStorage("para") var para : Double = 100
    @Published var bahis : Double = 0
    
    // Masada farkli assetler kullanabilmek icin variable olusturduk.
    @AppStorage("Masa") var table = "table_green"
    
    
    // Kartlari initialize ettik.
    @Published var playerCard1 = BlackJackApp().theme
    @Published var playerCard2 = BlackJackApp().theme
    @Published var playerCard3 = BlackJackApp().theme
    @Published var playerCard4 = BlackJackApp().theme
    @Published var playerCard5 = BlackJackApp().theme
    @Published var cpuCard1 = BlackJackApp().theme
    @Published var cpuCard2 = BlackJackApp().theme
    @Published var cpuCard3 = BlackJackApp().theme
    @Published var cpuCard4 = BlackJackApp().theme
    @Published var cpuCard5 = BlackJackApp().theme
    
    // Chip'leri initialize ettik.
    @Published var chip1 : Bool = false
    @Published var chip2 : Bool = false
    @Published var chip3 : Bool = false
    @Published var chip4 : Bool = false
    
    // Chip'lerin ne kadar kullanildigini anlamak icin, her biri icin count tanimladik.
    @Published var chip1count = 0
    @Published var chip2count = 0
    @Published var chip3count = 0
    @Published var chip4count = 0
    
    // Kazanan ve kaybeden puanlari icin puan ogelerini tanimladik.
    @Published var playerPuan = 0
    @Published var cpuPuan = 0
    
    @Published var bahiskontrol : Bool = true
    
    //Toplamda oynanan el sayilarini tuttugumuz variable.
    @Published var elSayisi = 0
    @Published var ilkeldenetimi = true
    
    // Animasyonlar icin kartin gelip gelmedigi kontrolu.
    @Published var kartDenetimi : Bool = false
    
    // Bekle tusu kontrol variable'i.
    @Published var bekleme = false
    
    // Animasyonun baslayip baslamadigi kontrolu.
    @Published var animasyonDenetimi : Bool = false
    
    //Kimin kazandigini tuttugumuz variable.
    @Published var whoWin = ""
    
    //Oyun sonu gosterilecek ekran kontrolu icin.
    @Published var showAlert = false
    
    // Oyun sonu ekraninda view degistirmek icin variable.
    @Published var viewChecker = ""
    
    // Animasyonlar icin tanimli offset degeri.
    @Published var offset: CGFloat = -300
}
