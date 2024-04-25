//
//  ContentView.swift
//  BlackJack
//
//  Created by Eren Küpeli on 3.01.2024.
//

import SwiftUI
import Observation

//Butonlarda kullanılan ve yumusak bir gecis saglayan animasyon.
extension Animation {
    static func ripple(index: Double) -> Animation {
        Animation.spring(dampingFraction: 0.5)
            .speed(2)
            .delay(0.03 * Double(index))
    }
}

//Butonların etkilesim ile birlikte buyumesi icin. 
struct ScaleButtonStyle: ButtonStyle {
    func makeBody(configuration: Self.Configuration) -> some View {
        configuration.label
            .scaleEffect(configuration.isPressed ? 1.2 : 1)
    }
}

struct ContentView: View {
    @EnvironmentObject private var g : GlobalVariables
    @State var check = false
    @State var animasyon = 2.0 //baslangic animasyon degerimiz.
    @State var selected = false
    var body: some View{
        NavigationView{
            ZStack{
                Color(red: 219/255, green: 84/255, blue: 88/255).ignoresSafeArea()
                Image("logo3")
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                    .offset(x:0, y:-230)
                    .shadow(radius: 10)
                VStack{
                    if check{ //Giris ekraninda butona basilirsa oyun ekranina yonlendirmek icin.
                        GameScreen().transition(AnyTransition.opacity.animation(.easeInOut(duration: 0.3).delay(0.5))).environmentObject(g)
                    }
                    if !check{
                        Button("Oyna"){
                            withAnimation(.easeIn(duration: 0.3)){
                                animasyon += 1
                                selected.toggle()
                                check = true
                                //print(BlackJackApp().theme)
                                g.viewChecker = ""
                            }
                        }
                        .padding(EdgeInsets(top: 20, leading: 40, bottom: 20, trailing: 40))
                        .background(Color(red: 255/255, green: 252/255, blue: 234/255))
                        .foregroundColor(Color(red: 219/255, green: 84/255, blue: 88/255))
                        .clipShape(Capsule())
                        .shadow(radius: 20)
                        .buttonStyle(ScaleButtonStyle())
                        .animation(.ripple(index: 1))
                        .offset(y:80)
                        NavigationLink(destination: Ayarlar()){
                            Text("Ayarlar")
                            .padding(EdgeInsets(top: 20, leading: 35, bottom: 20, trailing: 35))
                            .background(Color(red: 255/255, green: 252/255, blue: 234/255))
                            .foregroundColor(Color(red: 219/255, green: 84/255, blue: 88/255))
                            .clipShape(Capsule())
                            .shadow(radius: 20)
                            .animation(.ripple(index: 1.5))
                            .environmentObject(g)
                        }.offset(y:85)
                        NavigationLink(destination: NasilOynanir()){
                            Text("Nasıl Oyanır?")
                            .padding(EdgeInsets(top: 20, leading: 15, bottom: 20, trailing: 15))
                            .background(Color(red: 255/255, green: 252/255, blue: 234/255))
                            .foregroundColor(Color(red: 219/255, green: 84/255, blue: 88/255))
                            .clipShape(Capsule())
                            .shadow(radius: 20)
                            .animation(.ripple(index: 2))
                        }.offset(y:90)
                    } //if sonu
                } //Vstack sonu
            } //Zstack sonu
        }.accentColor(Color(red: 50/255, green: 70/255, blue: 70/255)) //NavigationView sonu
    } //Body sonu
} //View sonu

#Preview {
    ContentView()
}
