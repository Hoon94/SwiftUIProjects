//
//  FrameworkView.swift
//  SwiftUI-AppleFrameworks
//
//  Created by Daehoon Lee on 4/9/24.
//

import SwiftUI

struct FrameworkView: View {
    
    @StateObject var viewModel = FrameworkViewModel(contentType: .grid)
    
    var body: some View {
        switch viewModel.contentType {
        case .grid:
            FrameworkGridView(viewModel: viewModel)
        case .list:
            FrameworkListView(viewModel: viewModel)
        }
    }
}

#Preview {
    FrameworkView()
        .preferredColorScheme(.dark)
}



