//
//  ContentView.swift
//  Weather
//
//  Created by Taylor Ji on 2022-10-16.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        ZStack{
            LinearGradient(gradient:
                            Gradient(colors: [.blue, .white]), startPoint: .topLeading, endPoint: .bottomTrailing)
                .edgesIgnoringSafeArea(.all
                )
            VStack{
                Text("Vancouver, BC")
                    .font(.system(size: 32, weight: .medium, design: .default))
                    .foregroundColor(.white)
                    .padding()
                
                VStack (spacing: 12){
                    Image(systemName: "cloud.sun.fill")
                        .renderingMode(.original)
                        .resizable()
                        .aspectRatio(contentMode: .fit)
                        .frame(width: 180, height: 180)
                    
                    Text ("19°")
                        .font(.system(size: 70 ,weight: .medium))
                        .foregroundColor(.white)
                }
                
                Spacer()// move the text to the top, fill the entire space
               
                   
            }
        }
       
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
