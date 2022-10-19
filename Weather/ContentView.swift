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
                            Gradient(colors: [.blue, Color("lightBlue")]), startPoint: .topLeading, endPoint: .bottomTrailing)
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
                .padding(.bottom, 50)
                
                HStack(spacing: 20) {
                 WeatherDayView(dayOfWeek: "TUE",
                                imageName: "cloud.sun.fill",
                                temperature: 15)
                    
                    WeatherDayView(dayOfWeek: "Wed",
                                   imageName: "cloud.rain.fill",
                                   temperature: 10)
                    WeatherDayView(dayOfWeek: "THU",
                                   imageName: "cloud.sun.rain.fill",
                                   temperature: 17)
                    WeatherDayView(dayOfWeek: "FRI",
                                   imageName: "moon.fill",
                                   temperature: 4)
                    WeatherDayView(dayOfWeek: "SAT",
                                   imageName: "cloud.sun.fill",
                                   temperature: 4)
                    
                 
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

/*
 This is similar to methods in java
 */
struct WeatherDayView: View {
    var dayOfWeek: String
    var imageName: String
    var temperature: Int
    var body: some View {
        VStack{
            Text(dayOfWeek)
                .font(.system(size: 16 ,weight: .medium))
                .foregroundColor(.white)
            Image(systemName: imageName)
                .renderingMode(.original)
                .resizable()
                .aspectRatio(contentMode: .fit)
                .frame(width: 40, height: 40)
            Text("\(temperature)°")
                .font(.system(size: 16 ,weight: .medium))
                .foregroundColor(.white)
        }
    }
}
