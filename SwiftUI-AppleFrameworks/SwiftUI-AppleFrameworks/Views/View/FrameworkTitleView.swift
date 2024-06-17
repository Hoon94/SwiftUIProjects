//
//  FrameworkTitleView.swift
//  SwiftUI-AppleFrameworks
//
//  Created by Daehoon Lee on 4/11/24.
//

import SwiftUI

struct FrameworkTitleView: View {
    
    let framework: Framework
    let contentType: ContentType
    
    var body: some View {
        switch contentType {
        case .grid:
            VStack {
                Image(framework.imageName)
                    .resizable()
                    .frame(width: 90, height: 90)
                    .scaledToFit()
                
                Text(framework.name)
                    .font(.title2)
                    .fontWeight(.semibold)
                    .foregroundStyle(Color(.label))
                    .scaledToFit()
                    .minimumScaleFactor(0.6)
            }
            .padding()
        case .list:
            HStack {
                Image(framework.imageName)
                    .resizable()
                    .frame(width: 70, height: 70)
                    .scaledToFit()
                
                Text(framework.name)
                    .font(.title2)
                    .fontWeight(.semibold)
                    .scaledToFit()
                    .minimumScaleFactor(0.6)
                    .padding()
            }
        }
    }
}

#Preview {
    FrameworkTitleView(framework: MockData.sampleFramework,
                       contentType: .grid)
    .preferredColorScheme(.dark)
}
