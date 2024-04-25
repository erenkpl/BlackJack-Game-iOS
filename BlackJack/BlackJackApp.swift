//
//  BlackJackApp.swift
//  BlackJack
//
//  Created by Eren Küpeli on 3.01.2024.
//

import SwiftUI

@main
struct BlackJackApp: App {
    @StateObject private var g = GlobalVariables()
    @AppStorage("Tema") var theme = "Default"
    var body: some Scene {
        WindowGroup { 
            ContentView().environmentObject(g)
        }
    }
}
