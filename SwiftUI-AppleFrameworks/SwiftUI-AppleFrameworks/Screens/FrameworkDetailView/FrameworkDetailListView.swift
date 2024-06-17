//
//  FrameworkDetailListView.swift
//  SwiftUI-AppleFrameworks
//
//  Created by Daehoon Lee on 4/11/24.
//

import SwiftUI

struct FrameworkDetailListView: View {
    
    var framework: Framework
    var contentType: ContentType
    @State private var isShowingSafariView = false
    
    var body: some View {
        VStack {
            FrameworkTitleView(framework: framework, contentType: contentType)
            
            Text(framework.description)
                .font(.body)
                .padding()
            
            Spacer()
            
            Button {
                isShowingSafariView = true
            } label: {
                Label("Learn More", systemImage: "book.fill")
            }
            .buttonStyle(.bordered)
            .controlSize(.large)
            .buttonBorderShape(.roundedRectangle(radius: 20))
            .tint(.yellow)
            .padding()
        }
        .fullScreenCover(isPresented: $isShowingSafariView, content: {
            SafariView(url: URL(string: framework.urlString)!)
                .ignoresSafeArea()
        })
    }
}

#Preview {
    FrameworkDetailListView(framework: MockData.sampleFramework, contentType: .list)
            .preferredColorScheme(.dark)
}
