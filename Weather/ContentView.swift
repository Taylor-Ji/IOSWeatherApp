//
//  ContentView.swift
//  Weather
//
//  Created by Taylor Ji on 2022-10-16.
//

import SwiftUI

struct ContentView: View {// create and destroy all the time
    
    @State private var isNight = false
    
    var body: some View {
        ZStack{ // maximum 10 views are allowed
            backGroundView(isNight: $isNight)
            VStack{
                CityTextView(cityName: "Vancouver, BC")
                
                mainWeatherStatusView(ImageName: isNight ?
                                      "moon.stars.fill" :
                                      "cloud.sun.fill", temperature: 23)
                
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
                Button{
                    isNight.toggle()
                } label: {
                    weatherButton(title: "Change Day Time", textColor: .blue, backgroundColor: .white)
                }
                
                Spacer()
               
               
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

struct backGroundView: View {
    
    @Binding var isNight: Bool
    
    
    var body: some View {
      
        
        LinearGradient(gradient:
                        Gradient(colors: [isNight ? .black : .blue, isNight ? .gray : Color("lightBlue")]), startPoint: .topLeading, endPoint: .bottomTrailing)
            .edgesIgnoringSafeArea(.all
            )
    }
}

struct CityTextView: View {
    var cityName: String
    var body: some View {
        Text(cityName)
            .font(.system(size: 32, weight: .medium, design: .default))
            .foregroundColor(.white)
            .padding()
    }
}

struct mainWeatherStatusView: View {
    var ImageName: String
    var temperature: Int
    
    var body: some View{
        VStack (spacing: 12){
            Image(systemName: ImageName)
                .renderingMode(.original)
                .resizable()
                .aspectRatio(contentMode: .fit)
                .frame(width: 180, height: 180)
            
            Text ("\(temperature)°")
                .font(.system(size: 70 ,weight: .medium))
                .foregroundColor(.white)
       
           
        }
        .padding(.bottom, 40)
    }
}

