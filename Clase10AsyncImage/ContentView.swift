//
//  ContentView.swift
//  Clase10AsyncImage
//
//  Created by Escurra Colquis on 8/10/24.
//

import SwiftUI

struct ContentView: View {
    private let imageURL = URL(string: "https://m.media-amazon.com/images/S/pv-target-images/334f00b53cf3ef848ea7048b25711bc98e8236ce1685a096990c80d0965835ea.png")
    
    var body: some View {
        VStack {
            Text("Imagen asíncrona\nde Dragon Ball Super")
                .bold()
                .font(.system(size: 30))
                .multilineTextAlignment(.center)
            Spacer()
            AsyncImage(url: imageURL) { image in
                image
                    .resizable()
                    .scaledToFit()
                    .clipShape(.rect(cornerRadius: 40))
                    .overlay(
                        RoundedRectangle(cornerRadius: 40)
                            .stroke(lineWidth: 2))
                    .shadow(color: .gray, radius: 6, x: 5, y: 20)
                    .padding()
            } placeholder: {
                ProgressView()
                    .foregroundStyle(.gray)
            }
            Spacer()
        }
    }
}

#Preview {
    ContentView()
}
