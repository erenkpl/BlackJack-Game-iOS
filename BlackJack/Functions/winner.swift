//
//  winner.swift
//  BlackJack
//
//  Created by Eren Küpeli on 8.03.2024.
//

import Swift

func winner(g: GlobalVariables){
    g.animasyonDenetimi = false
    if g.cpuCard2 == BlackJackApp().theme{
        g.cpuCard2 = cardRandomizer(score: "c")
    }
    
    // 21 yapma kontrolü
    if playerScore == cpuScore && cpuScore == 21{
        g.whoWin = ""
        g.showAlert = true
    }
    else if playerScore == 21{
        g.whoWin = "Player"
        paraCheck(no: 5, g: g)
        g.showAlert = true
    }
    else if cpuScore == 21{
        g.whoWin = "Cpu"
        paraCheck(no: 6, g: g)
        g.showAlert = true
    }
    
    // 21 geçme kontrolü
    else if cpuScore > 21{
        g.whoWin = "Player"
        paraCheck(no: 3, g: g)
        g.showAlert  = true
    }
    else if playerScore > 21{
        g.whoWin = "Cpu"
        paraCheck(no: 4, g: g)
        g.showAlert  = true
    }
    else{
        if cpuScore > 16{
            
            // Player'ın puan geçerek kazanma kontrolü
            if playerScore > cpuScore && playerScore < 22{
                g.whoWin = "Player"
                paraCheck(no: 1, g: g)
                g.showAlert = true
            }
            
            // CPU'un puan geçerek kazanma kontrolü
            else if cpuScore > playerScore && cpuScore < 22{
                g.whoWin = "Cpu"
                paraCheck(no: 2, g: g)
                g.showAlert = true
            }
            
            // Beraberlik kontrolü
            else if cpuScore == playerScore{
                g.whoWin = ""
                paraCheck(no: 7, g: g)
                g.showAlert = true
            }
            
            // Error Kontrolü
            else{
                g.whoWin = "Hata!"
                g.showAlert = true
            }
        }
        
        // Bekleme tuşuna basıldığında kimin kazanacağı kontrolü
        else if g.bekleme{
            if playerScore < cpuScore{
                g.whoWin = "Cpu"
                paraCheck(no: 2, g: g)
                g.showAlert = true
            }
            else{
                g.whoWin = "Player"
                paraCheck(no: 1, g: g)
                g.showAlert = true
            }
        }
    }
}
