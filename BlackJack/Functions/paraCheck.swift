//
//  paraCheck.swift
//  BlackJack
//
//  Created by Eren Küpeli on 8.03.2024.
//

import Swift

func paraCheck(no durum: Int, g: GlobalVariables){
    if durum == 1{ //player'ın puanı daha fazla ise
        g.playerPuan = g.playerPuan + 1
        g.para = g.para + (g.bahis * 2)
    }
    else if durum == 2{ //cpu'nun puanı daha fazla ise
        g.cpuPuan = g.cpuPuan + 1
    }
    else if durum == 3{ //cpu 21 puanı geçti ise
        g.playerPuan = g.playerPuan + 1
        g.para = g.para + (g.bahis * 2)
    }
    else if durum == 4{ //player 21 puanı geçti ise
        g.cpuPuan = g.cpuPuan + 1
    }
    else if durum == 5{ //player 21 puana erişti ise
        g.playerPuan = g.playerPuan + 1
        g.para = g.para + ((g.bahis)/2 * 3)
    }
    else if durum == 6{ //cpu 21 puana erişti ise
        g.cpuPuan = g.cpuPuan + 1
    }
    else if durum == 7{
        g.para = g.para + g.bahis
    }
}
