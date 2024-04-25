//
//  notification.swift
//  BlackJack
//
//  Created by Eren Küpeli on 8.03.2024.
//

import SwiftUI

func notificationReminder(g: GlobalVariables) -> Alert {
    
    // Player kazanınca
    if g.whoWin == "Player"{
        Alert(
            title: Text("Oyun Bitti"),
            message: Text("Player kazandı. \nPlayer score " + String(playerScore) + "\nCpu score " + String(cpuScore)),
            primaryButton: .cancel(
                        Text("Tekrar Başla"),
                        action:{
                            viewChangerGiris(g: g)  // Yeni tura başlamak için
                        }
                    ),
                    secondaryButton: .destructive(
                        Text("Ana Menüye Dön"),
                        action:{
                            viewChangerContent(g: g) // Ana menüye dönmek için
                        }
                    ))
    }
    
    // CPU kazanınca
    else if g.whoWin == "Cpu"{
        Alert(
            title: Text("Oyun Bitti"),
            message: Text("Cpu kazandı. \nPlayer score " + String(playerScore) + "\nCpu score " + String(cpuScore)),
            primaryButton: .cancel(
                        Text("Tekrar Başla"),
                        action:{
                            viewChangerGiris(g: g)  // Yeni tura başlamak için
                        }
                    ),
                    secondaryButton: .destructive(
                        Text("Ana Menüye Dön"),
                        action:{
                            viewChangerContent(g: g)  // Ana menüye dönmek için
                        }
                    ))
    }
    
    // Para bitince
    else if g.para <= 0{
        Alert(
            title: Text("Oyun Bitti"),
            message: Text("Para Bitti!"),
            primaryButton: .cancel(
                        Text("Tekrar Başla"),
                        action:{
                            viewChangerGiris(g: g)  // Yeni tura başlamak için
                        }
                    ),
                    secondaryButton: .destructive(
                        Text("Ana Menüye Dön"),
                        action:{
                            viewChangerContent(g: g)  // Ana menüye dönmek için
                        }
                    ))
    }
    
    // Berabere bitince
    else{
        Alert(
            title: Text("Oyun Bitti"),
            message: Text("Berabere \nPlayer score " + String(playerScore) + "\ncpu score " + String(cpuScore)),
            primaryButton: .cancel(
                        Text("Tekrar Başla"),
                        action:{
                            viewChangerGiris(g: g)  // Yeni tura başlamak için
                        }
                    ),
                    secondaryButton: .destructive(
                        Text("Ana Menüye Dön"),
                        action:{
                            viewChangerContent(g: g)  // Ana menüye dönmek için
                        }
                    ))
    }
}
