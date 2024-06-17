//
//  FrameworkListView.swift
//  SwiftUI-AppleFrameworks
//
//  Created by Daehoon Lee on 4/11/24.
//

import SwiftUI

struct FrameworkListView: View {
    
    @StateObject var viewModel: FrameworkViewModel
    
    var body: some View {
        NavigationView {
            List {
                ForEach(MockData.frameworks) { framework in
                    NavigationLink {
                        FrameworkDetailListView(framework: framework,
                                                contentType: viewModel.contentType)
                    } label: {
                        FrameworkTitleView(framework: framework, 
                                           contentType: viewModel.contentType)
                    }
                }
            }
            .listStyle(.plain)
            .navigationTitle("🍎 Frameworks")
            .toolbar {
                Button {
                    viewModel.contentType = .grid
                } label: {
                    Image(systemName: "square.grid.3x3.fill")
                }
            }
        }
        .tint(Color(.label))
    }
}

#Preview {
    FrameworkListView(viewModel: FrameworkViewModel(contentType: .list))
        .preferredColorScheme(.dark)
}
