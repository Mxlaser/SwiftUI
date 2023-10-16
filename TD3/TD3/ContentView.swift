//
//  ContentView.swift
//  TD3
//
//  Created by goldorak on 12/09/2023.
//

import SwiftUI

struct ContentView: View {
    
    @State var nouvelleTache = ""
    @State var liste = [""]
    
    func addList(){
        liste.append(nouvelleTache)
        //ForEach
    }

    var body: some View {
        VStack {
            HStack {
                TextField("Nouvelle tâche", text: $nouvelleTache)
                    .padding(10)
                    .overlay(RoundedRectangle(cornerRadius: 10).stroke(Color.white, lineWidth: 3))
                Button(action: addList){
                    Text("Ajouter")
                        .foregroundColor(.white)
                }
            }
        Spacer()
        }
        .padding()
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
