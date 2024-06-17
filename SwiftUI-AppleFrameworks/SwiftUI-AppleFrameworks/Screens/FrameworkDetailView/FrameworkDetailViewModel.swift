//
//  FrameworkDetailViewModel.swift
//  SwiftUI-AppleFrameworks
//
//  Created by Daehoon Lee on 4/23/24.
//

import Foundation

final class FrameworkDetailViewModel: ObservableObject {
    
    let framework: Framework
//    @Binding var isShowingDetailView: Bool
    @Published var contentType: ContentType
    @Published var isShowingSafariView = false
    
    init(framework: Framework, contentType: ContentType) {
        self.framework = framework
        self.contentType = contentType
    }
}
