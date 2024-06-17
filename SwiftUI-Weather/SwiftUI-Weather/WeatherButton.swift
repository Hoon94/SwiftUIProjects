//
//  WeatherButton.swift
//  SwiftUI-Weather
//
//  Created by Daehoon Lee on 4/8/24.
//

import SwiftUI

struct WeatherButton: View {
    let title: String
    let textColor: Color
    let backgroundColor: Color
    
    var body: some View {
        Text(title)
            .frame(width: 280, height: 50)
            .foregroundStyle(textColor)
            .background(backgroundColor.gradient)
            .font(.system(size: 20, weight: .bold, design: .default))
            .clipShape(RoundedRectangle(cornerRadius: 10))
    }
}

#Preview {
    WeatherButton(title: "Test", textColor: .blue, backgroundColor: .lightBlue)
}
