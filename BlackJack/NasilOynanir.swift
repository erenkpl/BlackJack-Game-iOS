//
//  NasilOynanir.swift
//  BlackJack
//
//  Created by Eren Küpeli on 13.03.2024.
//

import SwiftUI

// Oyun kurallarının yazılı olduğu ve giriş ekranında farklı sekmede görünen bir "Nasıl Oynanır?" ekranı.
struct NasilOynanir: View {
    var body: some View {
        ZStack{
            Color(red: 219/255, green: 84/255, blue: 88/255).ignoresSafeArea()
            ScrollView{
                VStack(){
                    Spacer()
                    Text("Nasıl Oynanır?").bold().italic().font(.largeTitle).padding().foregroundColor(Color(red: 200/255, green: 240/255, blue: 240/255))
                    Text("Amaç").bold().font(.title).offset(x:-140, y:5).foregroundColor(Color(red: 200/255, green: 240/255, blue: 240/255))
                    Text("    Her turda, kart toplamı 21'i geçmeden kasadan daha fazla toplam puan elde etmek için kart çekerek 21'e ulaşmaya çalışmak ve böylece ortaya konulan bahsi almaktır.").font(.title3).italic().padding().foregroundColor(Color(red: 255/255, green: 252/255, blue: 234/255)).offset(y:-5)
                    Text("Kartlar").bold().font(/*@START_MENU_TOKEN@*/.title/*@END_MENU_TOKEN@*/).offset(x:-136, y:5).foregroundColor(Color(red: 200/255, green: 240/255, blue: 240/255))
                    Text("    Kartlar 'BET' tuşuna bastığınız anda dağıtılmaya başlanacak. İlk turda kasaya biri açık biri kapalı iki kart, oyuncuya ise ikisi de açık kart verilir. ").font(.title3).italic().padding().foregroundColor(Color(red: 255/255, green: 252/255, blue: 234/255)).offset(y:-5)
                    Text("Kart Puanları").bold().font(/*@START_MENU_TOKEN@*/.title/*@END_MENU_TOKEN@*/).offset(x:-100, y:5).foregroundColor(Color(red: 200/255, green: 240/255, blue: 240/255))
                    Text("    Kartlar arasından Papaz, Kız ve Vale 10 puandır. As kartları oyuncunun isteğine göre 1 veya 11 olarak kullanılabilir. Geriye kalan sayı kartları ise üzerindeki yazan sayı kadar puana sahiptirler. ").font(.title3).italic().padding().foregroundColor(Color(red: 255/255, green: 252/255, blue: 234/255)).offset(y:-5)
                    Text("Kurallar").bold().font(.title).offset(x:-130, y:5).foregroundColor(Color(red: 200/255, green: 240/255, blue: 240/255))
                    Text("    Oyuncu oyunu kazanmak için 21 puana ulaşmalı ya da kasanın puanını geçmelidir. Oyuncu 21 puanı geçerse kasanın puanına bakmaksızın oyuncu oyunu kaybeder. Oyuncu elindeki kart ile beklemeyi seçmişse, kasa oyuncuyu geçmek için kart çekmeye başlar. Kasa 16 puanın üzerindeyse kart çekemez ve mevcut durumdaki puanlar değerlendirilir. Kasa 16 puanın altındaysa kart çekebilir, fakat 21 puanı aştıysa, oyuncunun puanına bakılmaksızın oyuncu oyunu kazanır. ").font(.title3).italic().padding().foregroundColor(Color(red: 255/255, green: 252/255, blue: 234/255)).offset(y:-5)
                    Text("Bahis").bold().font(/*@START_MENU_TOKEN@*/.title/*@END_MENU_TOKEN@*/).offset(x:-145, y:5).foregroundColor(Color(red: 200/255, green: 240/255, blue: 240/255))
                    Text("    Bahis ekranında gösterilen toplam 4 farklı çipten istediğinizi, bahis olarak koymak istediğiniz para miktarı kadar seçin. Daha sonrasında 'BET' tuşuna basarak bahsinizi onaylayın.").font(.title3).italic().padding().foregroundColor(Color(red: 255/255, green: 252/255, blue: 234/255)).offset(y:-5)
                    Text("Tuşlar").bold().font(/*@START_MENU_TOKEN@*/.title/*@END_MENU_TOKEN@*/).offset(x:-141, y:5).foregroundColor(Color(red: 200/255, green: 240/255, blue: 240/255))
                    Text("    Oyun başladığında, iki adet tuş görünecek. 'ÇEK' tuşu ile kart isteyebilir, 'BEKLE' tuşu ile kart almayı bırakabilirsiniz.  ").font(.title3).italic().padding(15).foregroundColor(Color(red: 255/255, green: 252/255, blue: 234/255)).offset(y:-5)
                    Text("Banka").bold().font(/*@START_MENU_TOKEN@*/.title/*@END_MENU_TOKEN@*/).offset(x:-141, y:5).foregroundColor(Color(red: 200/255, green: 240/255, blue: 240/255))
                    Text("    Oyundaki mevcut paranızı görüntülemektedir. Bahis ekranındayken masaya koyduğunuz bahis eş zamanlı olarak bankadan düşmektedir.  ").font(.title3).italic().padding(15).foregroundColor(Color(red: 255/255, green: 252/255, blue: 234/255)).offset(y:-5)
                    Text("Kazanma Oranları").bold().font(/*@START_MENU_TOKEN@*/.title/*@END_MENU_TOKEN@*/).offset(x:-65, y:5).foregroundColor(Color(red: 200/255, green: 240/255, blue: 240/255))
                    Text("    Oyuncunun puanı kasanın puanına eşit ise, oyuncu yatırdığı bahsi geri alır. Oyuncunun puanı kasanın puanından fazla ise ya da kasa 21'i geçtiyse, oyuncu yatırdığı yatırdığı bahsin iki katını alır. Oyuncunun elinde BlackJack varsa, yatırdığı bahsin üç katını alır. Kasanın kazandığı her durumda oyuncu yatırdığı bahsi kaybeder. ").font(.title3).italic().padding().foregroundColor(Color(red: 255/255, green: 252/255, blue: 234/255)).offset(y:-5)
                }
            }.toolbarBackground(.hidden, for: .navigationBar)
        }
    }
}

#Preview {
    NasilOynanir()
}
