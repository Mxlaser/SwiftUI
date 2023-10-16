//
//  ContentView.swift
//  TD1
//
//  Created by goldorak on 12/09/2023.
//

import SwiftUI



struct ContentView: View {
    @State private var bouton = true
    var body: some View {
        ZStack {
            Color.black
            
            VStack {
                Image("BugsBunny")
                    .resizable()
                    .aspectRatio(contentMode: .fill)
                    .frame(width: 200, height: 150, alignment: .center)
                    .clipShape(Circle())
                    .padding(10)	
                Text("Jean Dupont")
                    .foregroundColor(.white)
                    .fontWeight(.bold)
                    .font(.largeTitle)
                    .padding(5)
                Text("Développeur IOS")
                    .foregroundColor(.gray)
                    .padding(5)
                    .font(.system(size: 22))
                
                if(!bouton)
                    {
                        Text("Email : jean.dupont@example.com")
                            .foregroundColor(.gray)
                            .font(.system(size: 13))
                        Text("Téléphone : +33 6 58 46 13 45")
                            .foregroundColor(.gray)
                            .font(.system(size: 13))
                    Toggle("Masquer détails", isOn: $bouton.animation())
                            .toggleStyle(.button)
                    }
                else
                    {
                    Toggle("Montrer détails", isOn: $bouton.animation())
                            .toggleStyle(.button)
                }
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
       ContentView()
    }
}
