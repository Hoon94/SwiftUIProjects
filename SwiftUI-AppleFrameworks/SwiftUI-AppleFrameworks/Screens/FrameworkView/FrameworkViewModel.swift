//
//  FrameworkViewModel.swift
//  SwiftUI-AppleFrameworks
//
//  Created by Daehoon Lee on 4/11/24.
//

import SwiftUI

enum ContentType {
    case grid
    case list
}

final class FrameworkViewModel: ObservableObject {
    
//    @Published var isShowingDetailView = false
    @Published var contentType: ContentType
    
    init(contentType: ContentType) {
        self.contentType = contentType
    }
    
//    var selectedFramework: Framework? {
//        didSet {
//            isShowingDetailView = true
//        }
//    }
    
    let columns: [GridItem] = [GridItem(.flexible()),
                               GridItem(.flexible()),
                               GridItem(.flexible())]
}
