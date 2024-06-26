//
//  GameScreen.swift
//  BlackJack
//
//  Created by Eren Küpeli on 4.01.2024.
//

import SwiftUI

// Oyun ekranı.
struct GameScreen : View{
    
    @EnvironmentObject private var g : GlobalVariables
    
    var body: some View {
        
        ZStack{
            Image(g.table) // Masa
                .resizable()
                .ignoresSafeArea()
            if g.viewChecker == "Content"{  // Ana Menüye dönebilmek için.
                ContentView().transition(AnyTransition.opacity.animation(.easeInOut(duration: 0.3).delay(0.5))).environmentObject(g)
            }
            else{
                //Banka ve para bilgileri icin.
                HStack(alignment: .firstTextBaseline, content: {
                    Text("Banka")
                        .font(.title2)
                        .bold()
                        .foregroundColor(.white)
                        .position(CGPoint(x: 305.0, y: 0.0))
                        .animation(.ripple(index: 1).delay(g.animasyonDenetimi ? 0.3 : 0))
                        .padding()
                    Text("Para: " + String(Int(g.para)))
                        .font(.title3)
                        .italic()
                        .foregroundColor(.white)
                        .offset(x : -10, y : 25)
                        .animation(.ripple(index: 1).delay(g.animasyonDenetimi ? 0.3 : 0))
                        .padding()
                })
                
                // Cpu kartlari icin.
                HStack{
                    Image(g.cpuCard1)
                        .resizable()
                        .aspectRatio(contentMode: .fit)
                        .frame(width: 90)
                        .shadow(radius: 20)
                        .offset(x : g.kartDenetimi ? -55 : 265, y: g.kartDenetimi ? -220 : -90)
                        .animation(.ripple(index: 1).delay(g.animasyonDenetimi ? 0.3 : 0))
                        .overlay(Image(g.cpuCard2)
                            .resizable()
                            .aspectRatio(contentMode: .fit)
                            .frame(width: 90)
                            .shadow(radius: 20)
                            .offset(x : g.kartDenetimi ? 43 : 270, y: g.kartDenetimi ? -220 : -90)
                            .animation(.ripple(index: 1).delay(g.animasyonDenetimi ? 0.5 : 0)))
                    Image(g.cpuCard3)
                        .resizable()
                        .aspectRatio(contentMode: .fit)
                        .frame(width: 90)
                        .shadow(radius: 20)
                        .offset(x : g.cpuCard3 == BlackJackApp().theme ? 165 : 42, y : g.cpuCard3 == BlackJackApp().theme ? -90 : -220)
                        .animation(.ripple(index: 1))
                        .overlay(Image(g.cpuCard4)
                            .resizable()
                            .frame(width: 90)
                            .shadow(radius: 20)
                            .offset(x : g.cpuCard4 == BlackJackApp().theme ? 170 : 42, y : g.cpuCard4 == BlackJackApp().theme ? -90 : -220)
                            .offset(CGSize(width: g.cpuCard4 == BlackJackApp().theme ? 0.0 : 10.0, height: g.cpuCard4 == BlackJackApp().theme ? 0.0 : 10.0))
                            .animation(.ripple(index: 1)))
                        .overlay(Image(g.cpuCard5)
                                .resizable()
                                .frame(width: 90)
                                .shadow(radius: 20)
                                .offset(x : g.cpuCard5 == BlackJackApp().theme ? 175 : 42, y : g.cpuCard5 == BlackJackApp().theme ? -90 : -220)
                                .offset(CGSize(width: g.cpuCard5 == BlackJackApp().theme ? 0.0 : 20.0, height: g.cpuCard5 == BlackJackApp().theme ? 0.0 : 20.0))
                                .animation(.ripple(index: 1)))
                }
                
                // Player kartları için
                HStack{
                    Image(g.playerCard1)
                        .resizable()
                        .aspectRatio(contentMode: .fit)
                        .frame(width: 90)
                        .shadow(radius: 20)
                        .offset(x : g.kartDenetimi ? -55 : 265, y: g.kartDenetimi ? 40 : -90)
                        .animation(.ripple(index: 1).delay(g.animasyonDenetimi ? 0.7 : 0))
                        .overlay(Image(g.playerCard2)
                            .resizable()
                            .aspectRatio(contentMode: .fit)
                            .frame(width: 90)
                            .shadow(radius: 20)
                            .offset(x : g.kartDenetimi ? 43 : 270, y: g.kartDenetimi ? 40 : -90)
                            .animation(.ripple(index: 1).delay(g.animasyonDenetimi ? 0.9 : 0)))
                    Image(g.playerCard3)
                        .resizable()
                        .aspectRatio(contentMode: .fit)
                        .frame(width: 90)
                        .shadow(radius: 20)
                        .offset(x : g.playerCard3 == BlackJackApp().theme ? 165 : 42, y : g.playerCard3 == BlackJackApp().theme ? -90 : 40)
                        .animation(.ripple(index: 1))
                        .overlay(Image(g.playerCard4)
                            .resizable()
                            .frame(width: 90)
                            .shadow(radius: 20)
                            .offset(x : g.playerCard4 == BlackJackApp().theme ? 170 : 42, y : g.playerCard4 == BlackJackApp().theme ? -90 : 40)
                            .offset(CGSize(width: g.playerCard4 == BlackJackApp().theme ? 0.0 : 10.0, height: g.playerCard4 == BlackJackApp().theme ? 0.0 : 10.0))
                            .animation(.ripple(index: 1)))
                            .overlay(Image(g.playerCard5)
                                .resizable()
                                .frame(width: 90)
                                .shadow(radius: 20)
                                .offset(x : g.playerCard5 == BlackJackApp().theme ? 175 : 42, y : g.playerCard5 == BlackJackApp().theme ? -90 : 40)
                                .offset(CGSize(width: g.playerCard5 == BlackJackApp().theme ? 0.0 : 20.0, height: g.playerCard5 == BlackJackApp().theme ? 0.0 : 20.0))
                                .animation(.ripple(index: 1)))
                }
                if g.bahiskontrol{ //Bahis ekranı
                    VStack{
                        // Bahis ekranı için
                        Spacer()
                        Text("Lütfen Bahsinizi Belirleyin")
                            .font(.title2)
                            .italic()
                            .foregroundColor(.gray)
                            .offset(y: -220)
                        Text("Bahis: " + String(Int(g.bahis)))
                            .font(.title3)
                            .foregroundStyle(.purple)
                            .animation(.default.delay(0))
                        
                        //chip animasyonlari
                        HStack{
                            if g.chip1{
                                if g.chip1count == 1{
                                    chipimage(chip: "chips1").resizable().aspectRatio(contentMode: .fit)
                                        .frame(width: 40).shadow(radius: 20)
                                }
                                else{
                                    chipimage(chip: "chips1").resizable().aspectRatio(contentMode: .fit)
                                        .frame(width: 40).shadow(radius: 20).overlay(ForEach(2...g.chip1count, id: \.self){i in
                                            chipimage(chip: "chips1").resizable().aspectRatio(contentMode: .fit)
                                                .frame(width: 40).shadow(radius: 20).offset(CGSize(width: 3 * i, height: 3 * i))
                                        })
                                }
                            }
                            if g.chip2{
                                if g.chip2count == 1{
                                    chipimage(chip: "chips2").resizable().aspectRatio(contentMode: .fit)
                                        .frame(width: 40).shadow(radius: 20)
                                }
                                else{
                                    chipimage(chip: "chips2").resizable().aspectRatio(contentMode: .fit)
                                        .frame(width: 40).shadow(radius: 20).overlay(ForEach(2...g.chip2count, id: \.self){i in
                                            chipimage(chip: "chips2").resizable().aspectRatio(contentMode: .fit)
                                                .frame(width: 40).shadow(radius: 20).offset(CGSize(width: 3 * i, height: 3 * i))
                                        })
                                }
                            }
                            if g.chip3{
                                if g.chip3count == 1{
                                    chipimage(chip: "chips3").resizable().aspectRatio(contentMode: .fit)
                                        .frame(width: 40).shadow(radius: 20)
                                }
                                else{
                                    chipimage(chip: "chips3").resizable().aspectRatio(contentMode: .fit)
                                        .frame(width: 40).shadow(radius: 20).overlay(ForEach(2...g.chip3count, id: \.self){i in
                                            chipimage(chip: "chips3").resizable().aspectRatio(contentMode: .fit)
                                                .frame(width: 40).shadow(radius: 20).offset(CGSize(width: 3 * i, height: 3 * i))
                                        })
                                }
                            }
                            if g.chip4{
                                if g.chip4count == 1{
                                    chipimage(chip: "chips4").resizable().aspectRatio(contentMode: .fit)
                                        .frame(width: 40).shadow(radius: 20)
                                }
                                else{
                                    chipimage(chip: "chips4").resizable().aspectRatio(contentMode: .fit)
                                        .frame(width: 40).shadow(radius: 20).overlay(ForEach(2...g.chip4count, id: \.self){i in
                                            chipimage(chip: "chips4").resizable().aspectRatio(contentMode: .fit)
                                                .frame(width: 40).shadow(radius: 20).offset(CGSize(width: 3 * i, height: 3 * i))
                                        })
                                }
                            }
                        }
                        .padding()
                        
                        //chip butonlar
                        HStack{
                            Image("chips1").resizable().aspectRatio(contentMode: .fit)
                                .frame(width: 70)
                                .shadow(radius: 20)
                                .overlay(Button("    ", action: {
                                    paraEkle(bahisMiktarı: 10, g: g)
                                    if 10 < g.para{
                                        g.chip1 = true
                                        g.chip1count += 1
                                    }
                                }).padding(15).font(.title3)).foregroundColor(.white).buttonStyle(ScaleButtonStyle()).animation(.ripple(index: 1).delay(0.8)).shadow(radius: /*@START_MENU_TOKEN@*/10/*@END_MENU_TOKEN@*/)
                            
                            Image("chips2").resizable().aspectRatio(contentMode: .fit)
                                .frame(width: 70)
                                .shadow(radius: 20)
                                .overlay(Button("    ", action: {
                                    paraEkle(bahisMiktarı: 25, g: g)
                                    if 25 < g.para{
                                        g.chip1 = true
                                        g.chip1count += 1
                                    }
                                }).padding(15)
                                    .font(.title3).foregroundColor(.white).buttonStyle(ScaleButtonStyle())).animation(.ripple(index: 1).delay(0.9)).shadow(radius: /*@START_MENU_TOKEN@*/10/*@END_MENU_TOKEN@*/)
                            
                            Image("chips3").resizable().aspectRatio(contentMode: .fit)
                                .frame(width: 70)
                                .shadow(radius: 20)
                                .overlay(Button("    ", action: {
                                    paraEkle(bahisMiktarı: 100, g: g)
                                    if 100 < g.para{
                                        g.chip1 = true
                                        g.chip1count += 1
                                    }
                                }).padding(15)
                                    .font(.title3).foregroundColor(.white).buttonStyle(ScaleButtonStyle())).animation(.ripple(index: 1).delay(1)).shadow(radius: /*@START_MENU_TOKEN@*/10/*@END_MENU_TOKEN@*/)
                            
                            Image("chips4").resizable().aspectRatio(contentMode: .fit)
                                .frame(width: 70)
                                .shadow(radius: 20)
                                .overlay(Button("    ", action: {
                                    paraEkle(bahisMiktarı: 500, g: g)
                                    if 500 < g.para{
                                        g.chip1 = true
                                        g.chip1count += 1
                                    }
                                }).padding(15)
                                    .font(.title3).foregroundColor(.white).buttonStyle(ScaleButtonStyle())).animation(.ripple(index: 1).delay(1.1)).shadow(radius: /*@START_MENU_TOKEN@*/10/*@END_MENU_TOKEN@*/)
                        }
                        Button("Bet", action: bahisKontrolEt).padding(15)
                            .font(.title).foregroundColor(.white).background(.gray)
                            .clipShape(Circle()).shadow(radius: 5).buttonStyle(ScaleButtonStyle()).animation(.ripple(index: 1).delay(1.3))
                    }
                    .animation(.smooth)
                    .offset(x: g.offset)
                        .onAppear(perform: {
                            withAnimation(.linear(duration: 10).repeatForever()) {
                                g.offset = 0
                            }
                        })
                        .padding()
                }
                else{  //Oyunun başladığı ekran
                    VStack{
                        Text("CPU")
                            .font(.title)
                            .foregroundColor(Color(red: 255/255, green: 252/255, blue: 234/255))
                        
                        // Oyun içindeki anlık bilgiler için.
                        if !g.ilkeldenetimi{
                            Text("CPU Score: " + String(cpuScore))
                                .font(.title2)
                                .position(x:100)
                                .foregroundColor(Color(red: 255/255, green: 252/255, blue: 234/255))
                            Text("Player Score: " + String(playerScore))
                                .font(.title2)
                                .position(x:100)
                                .foregroundColor(Color(red: 255/255, green: 252/255, blue: 234/255))
                        }
                        
                        Text("Player")
                            .font(.title)
                            .foregroundColor(Color(red: 255/255, green: 252/255, blue: 234/255))
                        
                        Text("CPU Puan: " + String(g.cpuPuan))
                            .font(.title3)
                            .foregroundColor(.yellow)
                        Text("Player Puan: " + String(g.playerPuan))
                            .font(.title3)
                            .foregroundColor(.yellow)
                        
                        HStack{
                            Text("Bahis: " + String(Int(g.bahis)))
                                .font(.title3)
                                .foregroundStyle(.purple)
                                .animation(.default.delay(0))
                        }
                        
                        // Oyun butonlari icin
                        HStack{
                                Button("Çek", action:{
                                    kartAl(g: g)
                                }).padding(15)
                                    .font(.title).foregroundColor(.white).background(.green)
                                    .clipShape(Circle()).shadow(radius: 5).buttonStyle(ScaleButtonStyle()).animation(.ripple(index: 1).delay(g.ilkeldenetimi ? 0.9 : 0))
                                Button("Bekle", action:{
                                    bekle(g: g)
                                }).padding(15)
                                    .font(.title).foregroundColor(.white).background(.red)
                                    .clipShape(Circle()).shadow(radius: 5).buttonStyle(ScaleButtonStyle()).animation(.ripple(index: 1).delay(g.ilkeldenetimi ? 1.0 : 0))
                        }
                    } //Vstack Sonu
                    .animation(.smooth)
                    .offset(x: g.offset)
                        .onAppear(perform: {
                            withAnimation(.linear(duration: 10).repeatForever()) {
                                g.offset = 0
                            }
                        })
                }
            }
        } // ZStack sonu
        .alert(isPresented: $g.showAlert,
               content: { notificationReminder(g: g) })
    }
    
    func bahisKontrolEt(){
        g.bahiskontrol.toggle()
        initi(g: g)
    }
    
    func chipimage(chip : String) -> Image{
        return Image(chip)
    }
}

#Preview {
    GameScreen()
}

