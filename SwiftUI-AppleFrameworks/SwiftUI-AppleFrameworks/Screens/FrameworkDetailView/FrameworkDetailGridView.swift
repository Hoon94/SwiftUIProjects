//
//  FrameworkDetailGridView.swift
//  SwiftUI-AppleFrameworks
//
//  Created by Daehoon Lee on 4/11/24.
//

import SwiftUI

struct FrameworkDetailGridView: View {
    
    @ObservedObject var viewModel: FrameworkDetailViewModel
    
    var body: some View {
        VStack {
//            HStack {
//                Spacer()
//                
//                Button {
//                    isShowingDetailView = false
//                } label: {
//                    Image(systemName: "xmark")
//                        .foregroundStyle(Color(.label))
//                        .imageScale(.large)
//                        .frame(width: 44, height: 44)
//                }
//            }
//            .padding()
            
            FrameworkTitleView(framework: viewModel.framework, contentType: viewModel.contentType)
            
            Text(viewModel.framework.description)
                .font(.body)
                .padding()
            
            Spacer()
            
            Link(destination: URL(string: viewModel.framework.urlString)!) {
                AFButton(title: "Learn More")
            }
            .padding()
            
//            Button {
//                viewModel.isShowingSafariView = true
//            } label: {
////                AFButton(title: "Learn More")
//                Label("Learn More", systemImage: "book.fill")
//            }
//            .buttonStyle(.bordered)
//            .controlSize(.large)
//            .buttonBorderShape(.roundedRectangle(radius: 20))
//            .tint(.yellow)
//            .padding()
        }
//        .fullScreenCover(isPresented: $viewModel.isShowingSafariView, content: {
//            SafariView(url: URL(string: viewModel.framework.urlString)!)
//                .ignoresSafeArea()
//        })
    }
}

#Preview {
    FrameworkDetailGridView(viewModel: FrameworkDetailViewModel(framework: MockData.sampleFramework, contentType: .grid))
    .preferredColorScheme(.dark)
}
