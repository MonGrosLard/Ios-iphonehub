import SwiftUI

struct ContentView: View {
    @State private var ip16 = false
    @State private var ip15 = false
    @State private var para = false
    @State private var ip14 = false
    @State private var ipse = false
    var body: some View {
        VStack {
            HStack {

                Text("IPhoneHub")
                    .foregroundColor(.orange)
                    .bold()
                    .font(.largeTitle)
                Spacer()
                Button {
                    para.toggle()
                } label: {

                    Image(systemName: "gearshape")
                        .padding()
                        .font(.titl)
                        .foregroundColor(.orange)
                }.sheet(isPresented: $para) {
                    paraView()
                }
            }
            .padding()
            List {
                Button {
                    ip16.toggle()
                } label: {
                    Text("IPhone 16")
                        .bold()
                        .font(.title)
                    Image("16")
                        .resizable()
                        .scaledToFit()
                        .cornerRadius(10)
                }.sheet(isPresented: $ip16) {
                    ip16View()
                }

                Button {
                    ip15.toggle()
                } label: {
                    Text("IPhone 15")
                        .bold()
                        .font(.titl)
                        .foregroundColor(.green)
                    Image("15")
                        .resizable()
                        .scaledToFit()
                        .cornerRadius(10)
                }.sheet(isPresented: $ip15) {
                    ip15View()
                }
                Button {
                    ip14.toggle()
                } label: {
                    Text("IPhone 14")
                        .bold()
                        .font(.titl)
                        .foregroundColor(.purple)
                    Image("14")
                        .resizable()
                        .scaledToFit()
                        .cornerRadius(10)
                }.sheet(isPresented: $ip14) {
                    ip14View()
                }

                Button {
                    ipse.toggle()
                } label: {
                    Text("IPhone SE")
                        .bold()
                        .font(.title)
                        .foregroundColor(.red)
                    Image("se")
                        .resizable()
                        .scaledToFit()
                        .cornerRadius(10)
                }.sheet(isPresented: $ipse) {
                    ipseView()
                }
            }
            Spacer()

        }
    }
}

struct ip16View: View {
    var body: some View {
        Text("IPhone 16")
            .font(.title)
            .foregroundColor(.blue)
            .bold()
            .padding()
        List {

            Image("16")
                .resizable()
                .scaledToFit()
            Text(
                "L'iPhone 16 a été annoncé le 9 septembre 2024. Il est équipé d'un écran de 6,1 pouces Always On et d'un SoC Apple A18 gravé en 3 nm compatible avec Apple Intelligence. Il intègre un système avancé à deux caméras de 48 mégapixels et un ultra-grand-angle de 12 mégapixels ainsi qu'un nouveau bouton dédié à la commande de l'appareil photo. Il est annoncé à 969 euros avec 128 Go de stockage, 1099 euros avec 256 Go de stockage et 1349 euros avec 512 Go de stockage."
            )
            .bold()
            .multilineTextAlignment(.center)
        }
        Button {

        } label: {
            Link(
                destination: URL(
                    string: "https://www.apple.com"
            ) {
                Text("Buy IPhone 16")
                    .padding()
                    .foregroundColor(.white)
                    .background(Color.blue)
                    .cornerRadius(10)
                    .padding()
            }
        }
    }
}

struct ip15View: View {
    var body: some View {
        Text("IPhone 15")
            .font(.title)
            .foregroundColor(.green)
            .bold()
            .padding()
        List {

            Image("15")
                .resizable()
                .scaledToFit()
            Text(
                "L'iPhone 15 est un smartphone d'Apple annoncé le 12 septembre 2022. Il reprend la Dynamic Island introduite par l'iPhone 14 Pro et embarque un écran OLED de 6,1 pouces jusqu'à presque 2 fois plus lumineux (par rapport à la version précédente) avec un taux de rafraîchissement de 60 Hz et un SoC Apple A16. Il introduit également un nouveau capteur principal de 48 mégapixels et reprend le dos en verre dépoli de la version Pro."
            )
            .bold()
            .multilineTextAlignment(.center)
        }
        Button {

        } label: {
            Link(
                destination: URL(
                    string: "https://www.apple.com"
            ) {
                Text("Buy IPhone 15")
                    .padding()
                    .foregroundColor(.white)
                    .background(Color.blue)
                    .cornerRadius(10)
                    .padding()
            }

        }
    }
}

struct paraView: View {
    var body: some View {
        NavigationView {
            List {
                NavigationLink("À propos") {
                    Text(
                        "IPhoneHub est un hub pour IPhone, il regroupe tout les IPhones encore vendu sur le site d'Apple. Il a été fait pas un très grand fan d'Apple, et il y a une version web qui existe. Nous esperons que cette version mobile vous plaira, elle sera mise à jour régulièrement !"
                    )
                    .padding()
                    .font(.title3)
                    .multilineTextAlignment(.center)
                    Spacer()
                    Text("https://iphonehub-final.onrender.com/index.html#")
                        .padding()
                        .foregroundColor(.white)
                        .background(Color.gray)
                        .cornerRadius(10)
                        .padding()
                        .multilineTextAlignment(.center)
                }
                NavigationLink("Sources") {
                    Text(
                        "Merci au site << Frandroid >> qui nous a fourni toutes les informations à propos des IPhones présentés !"
                    )
                    .padding()
                    .font(.title3)
                    .multilineTextAlignment(.center)
                    Spacer()
                    Button {

                    } label: {
                        Text("https://www.frandroid.com")
                            .padding()
                            .foregroundColor(.white)
                            .background(Color.gray)
                            .cornerRadius(10)
                            .padding()
                    }
                    Spacer()
                }
            }
            .navigationTitle("Réglages")
        }
    }
}

struct ip14View: View {
    var body: some View {
        Text("IPhone 14")
            .font(.title)
            .foregroundColor(.purple)
            .bold()
            .padding()
        List {

            Image("14")
                .resizable()
                .scaledToFit()
            Text(
                "L'iPhone 14 est l'un des iPhone de la 16e génération du smartphone d'Apple annoncé le 7 septembre 2022. Il reprend la formule introduite par l'iPhone 13 avec un écran OLED de 6,1 pouces avec un taux de rafraîchissement de 60 Hz et un SoC Apple A15. Il introduit principalement de nouveaux capteurs photos de 12 mégapixels frontal et dorsaux avec un meilleur traitement logiciel et une meilleure autonomie."
            )
            .bold()
            .multilineTextAlignment(.center)
        }
        Button {

        } label: {
            Link(
                destination: 
                URL(
                    string: "https://www.apple.com")
            ) {
                Text("Buy IPhone 14")
                    .padding()
                    .foregroundColor(.white)
                    .background(Color.blue)
                    .cornerRadius(10)
                    .padding()
            }
        }
    }
}

struct ipseView: View {
    var body: some View {
        Text("IPhone SE")
            .font(.title)
            .foregroundColor(.red)
            .bold()
            .padding()
        List {

            Image("se")
                .resizable()
                .scaledToFit()
            Text(
                "L'iPhone SE 5G (2022) est un smartphone annoncé par Apple le 8 mars 2022. Troisième itération de la gamme iPhone SE, il conserve une apparence d'iPhone classique avec un écran de 4,7 pouces et un capteur Touch ID. Il intègre un SoC Apple A15 également présent sur l'iPhone 13. Il est annoncé à partir de 529 euros."
            )
            .bold()
            .multilineTextAlignment(.center)
        }
        Button {

        } label: {
            Link(
                destination: URL(
                    string: "https://www.apple.com")
            ) {
                Text("Buy IPhone SE")
                    .padding()
                    .foregroundColor(.white)
                    .background(Color.blue)
                    .cornerRadius(10)
                    .padding()
            }
        }
    }
}
