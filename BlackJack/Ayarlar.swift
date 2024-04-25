//
//  Ayarlar.swift
//  BlackJack
//
//  Created by Eren Küpeli on 12.03.2024.
//

import SwiftUI

// Ayarlar ekranı.
struct Ayarlar: View {
    @EnvironmentObject private var g : GlobalVariables
    let tables = ["Green", "Red", "Blue"]
    @State private var selection = "Red"
    var body: some View {
        ZStack{
            Color(red: 219/255, green: 84/255, blue: 88/255).ignoresSafeArea()
            // Masa rengi seçimi için menü.
            Menu {
                Button {
                    table_selecter(type: "Green")
                } label: {
                    Text("Green")
                }
                Button {
                    table_selecter(type: "Red")
                } label: {
                    Text("Red")
                }
                Button {
                    table_selecter(type: "Blue")
                } label: {
                    Text("Blue")
                }
            } label: {
                 Text("Masa Rengi")
                 Image(systemName: "tag.circle")
            }.padding()
            
            // Kart teması seçimi için menü.
            Menu {
                Button {
                    theme_selecter(type: "Default")
                } label: {
                    Text("Default")
                }
                Button {
                    theme_selecter(type: "PixelArt")
                } label: {
                    Text("PixelArt")
                }
                Button {
                    theme_selecter(type: "Elegance")
                } label: {
                    Text("Elegance")
                }
                Button {
                    theme_selecter(type: "Fancy")
                } label: {
                    Text("Fancy")
                }
            } label: {
                 Text("Kart Teması")
                 Image(systemName: "")
            }.offset(y:50)
        }
        
    }
    
    // Masa renklerinin menüye eklenmesi.
    func table_selecter(type : String){
        if type == "Green"{
            g.table = "table_green"
        }
        else if type == "Red"{
            g.table = "table_red"
        }
        else if type == "Blue"{
            g.table = "table_blue"
        }
    }
    
    // Kart temalarının menüye eklenmesi.
    func theme_selecter(type : String){
        if type == "Default"{
            BlackJackApp().theme = "Default"
        }
        else if type == "PixelArt"{
            BlackJackApp().theme = "PixelArt"
        }
        else if type == "Elegance"{
            BlackJackApp().theme = "Elegance"
        }
        else if type == "Fancy"{
            BlackJackApp().theme = "Fancy"
        }
        sifirla(g: g)
    }
}

#Preview {
    Ayarlar()
}
