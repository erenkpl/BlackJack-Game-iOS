//
//  cardRandomizer.swift
//  BlackJack
//
//  Created by Eren Küpeli on 7.03.2024.
//

import Swift

let fnt = GameScreen()

// Eldeki mevcut kartlarin toplam puani için score ogelerini tanimladik.
var playerScore = 0
var cpuScore = 0

// Destedeki tum kartlari ozelliklerine gore ayirip tanimladik.
var cardType = ["k", "l", "m", "n", "p", "x"]
var cardK = [2, 3, 4, 5, 6, 7, 8, 9, 10]
var cardL = [2, 3, 4, 5, 6, 7, 8, 9, 10]
var cardM = [2, 3, 4, 5, 6, 7, 8, 9, 10]
var cardN = [2, 3, 4, 5, 6, 7, 8, 9, 10]
var cardP = [1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12]
var cardX = [1, 2, 3, 4]

// Oyuncuda ve CPU için ellerinde AS olup olmadığını takip edebilmek için ayrı ayrı variable tanımladık.
var playerAS : Bool = false
var cpuAS : Bool = false

func cardRandomizer(score: String) -> String{
    var temp = ""
    var card = ""
    var num = 0
    temp = cardType.randomElement()!
    
    //Sinek kartlari icin
    if temp == "k"{
        if cardK.isEmpty{
            if let i = cardType.firstIndex(of: "k") {
                cardType[i] = "Kout"
            }
            temp = cardType.randomElement()!
        }
        else{
            num = Int.random(in: 0...(cardK.count-1))
            if score == "p"{
                playerScore += cardK[num]
            }
            else{
                cpuScore += cardK[num]
            }
            card = temp + String(cardK[num])
            cardK.remove(at: num)
        }
    }
    
    //Karo kartlari icin.
    if temp == "l"{
        if cardL.isEmpty{
            if let i = cardType.firstIndex(of: "l") {
                cardType[i] = "Lout"
            }
            temp = cardType.randomElement()!
        }
        else{
            num = Int.random(in: 0...(cardL.count-1))
            if score == "p"{
                playerScore += cardL[num]
            }
            else{
                cpuScore += cardL[num]
            }
            card = temp + String(cardL[num])
            cardL.remove(at: num)
        }
    }
    
    //Kupa kartlari icin.
    if temp == "m"{
        if cardM.isEmpty{
            if let i = cardType.firstIndex(of: "m") {
                cardType[i] = "Mout"
            }
            temp = cardType.randomElement()!
        }
        else{
            num = Int.random(in: 0...(cardM.count-1))
            if score == "p"{
                playerScore += cardM[num]
            }
            else{
                cpuScore += cardM[num]
            }
            card = temp + String(cardM[num])
            cardM.remove(at: num)
        }
    }
    
    // Maca kartlari icin.
    if temp == "n"{
        if cardN.isEmpty{
            if let i = cardType.firstIndex(of: "n") {
                cardType[i] = "Nout"
            }
            temp = cardType.randomElement()!
        }
        else{
            num = Int.random(in: 0...(cardN.count-1))
            if score == "p"{
                playerScore += cardN[num]
            }
            else{
                cpuScore += cardN[num]
            }
            card = temp + String(cardN[num])
            cardN.remove(at: num)
        }
    }
    
    //Ozel kartlar (K,Q,J) icin.
    if temp == "p"{
        if cardP.isEmpty{
            if let i = cardType.firstIndex(of: "p") {
                cardType[i] = "Pout"
            }
            temp = cardType.randomElement()!
        }
        else{
            num = Int.random(in: 0...(cardP.count-1))
            if score == "p"{
                playerScore += 10
            }
            else{
                cpuScore += 10
            }
            card = temp + String(cardP[num])
            cardP.remove(at: num)
        }
    }
    
    //As kartlari icin
    if temp == "x"{
        if cardX.isEmpty{
            if let i = cardType.firstIndex(of: "x") {
                cardType[i] = "Xout"
            }
            temp = cardType.randomElement()!
        }
        else{
            num = Int.random(in: 0...(cardX.count-1))
            if score == "p"{
                playerScore += 11
                playerAS = true
            }
            else{
                cpuScore += 11
                cpuAS = true
            }
            card = temp + String(cardX[num])
            cardX.remove(at: num)
        }
    }
    
    // AS kartları için özel denetim.
    if playerAS && playerScore > 21{
        playerScore -= 10
        playerAS = false
    }
    if cpuAS && cpuScore > 21{
        cpuScore -= 10
        cpuAS = false
    }
    
    return card
}
