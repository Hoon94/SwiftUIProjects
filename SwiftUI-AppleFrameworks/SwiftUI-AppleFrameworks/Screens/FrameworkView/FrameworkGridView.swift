//
//  FrameworkGridView.swift
//  SwiftUI-AppleFrameworks
//
//  Created by Daehoon Lee on 4/11/24.
//

import SwiftUI

struct FrameworkGridView: View {
    
    @StateObject var viewModel: FrameworkViewModel
    
    var body: some View {
        NavigationStack {
            ScrollView {
                LazyVGrid(columns: viewModel.columns) {
                    ForEach(MockData.frameworks) { framework in
                        NavigationLink(value: framework) {
                            FrameworkTitleView(framework: framework,
                                               contentType: viewModel.contentType)
                        }
//                            .onTapGesture {
//                                viewModel.selectedFramework = framework
//                            }
                    }
                }
            }
            .navigationTitle("🍎 Frameworks")
            .toolbar {
                Button {
                    viewModel.contentType = .list
                } label: {
                    Image(systemName: "list.bullet")
                }
            }
            .navigationDestination(for: Framework.self, destination: { framework in
                FrameworkDetailGridView(viewModel: FrameworkDetailViewModel(framework: framework, contentType: viewModel.contentType))
            })
//            .sheet(isPresented: $viewModel.isShowingDetailView) {
//                FrameworkDetailGridView(framework: viewModel.selectedFramework!,
//                                        isShowingDetailView: $viewModel.isShowingDetailView,
//                                        contentType: viewModel.contentType)
//            }
            .tint(Color(.label))
        }
    }
}

#Preview {
    FrameworkGridView(viewModel: FrameworkViewModel(contentType: .grid))
        .preferredColorScheme(.dark)
}
