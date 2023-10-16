//
//  ContentView.swift
//  TD2
//
//  Created by goldorak on 12/09/2023.
//

import SwiftUI

struct ContentView: View {
    var body: some View {

        NavigationView {
            ZStack {
                Color.black
                VStack {
                    Text("Galerie d'Arts")
                        .font(.largeTitle)
                        .foregroundColor(.white)
                        .frame(maxWidth: .infinity, alignment: .topLeading)
                    NavigationLink(destination: VStack {
                        Image("Chambre")
                            .resizable()
                            .aspectRatio(contentMode: .fill)
                        Text("Voila le lit")
                    }) {
                        Text("Chambre")
                            .foregroundColor(.white)
                            .frame(maxWidth: .infinity, alignment: .topLeading)
                    }
                    .padding(1)
                    NavigationLink(destination: VStack {
                        Image("Portrait")
                            .resizable()
                            .aspectRatio(contentMode: .fill)
                        Text("Voila une femme")
                    }) {
                        Text("Portrait")
                            .foregroundColor(.white)
                            .frame(maxWidth: .infinity, alignment: .topLeading)
                    }
                    .padding(1)
                    NavigationLink(destination: VStack {
                        Image("Nuit")
                            .resizable()
                            .aspectRatio(contentMode: .fill)
                        Text("Voilà la nuit")
                    }) {
                        Text("Nuit")
                            .foregroundColor(.white)
                            .frame(maxWidth: .infinity, alignment: .topLeading)
                    }
                    .padding(1)
                    
                    Spacer()
                }
            }
        }
        
        /*ZStack
        {
            Color.black
            VStack {
                Text("Galerie d'Art")
                    .bold()
                    .foregroundColor(.white)
                    .font(.system(size:30))
                    .frame(maxWidth: .infinity, alignment: .topLeading)
                Text("Chambre")
                    .foregroundColor(.white)
                    
            }
            .padding()
        }*/
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
