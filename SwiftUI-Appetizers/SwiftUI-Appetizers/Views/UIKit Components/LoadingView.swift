//
//  LoadingView.swift
//  SwiftUI-Appetizers
//
//  Created by Daehoon Lee on 4/17/24.
//

import SwiftUI

struct ActivityIndicator: UIViewRepresentable {
    
    func makeUIView(context: Context) -> UIActivityIndicatorView {
        let activityIndicatorView = UIActivityIndicatorView(style: .large)
        activityIndicatorView.color = UIColor(resource: .brandPrimary)
        activityIndicatorView.startAnimating()
        
        return activityIndicatorView
    }
    
    func updateUIView(_ uiView: UIActivityIndicatorView, context: Context) {}
}

struct LoadingView: View {
    
    var body: some View {
        ZStack {
            Color(.systemBackground)
                .ignoresSafeArea()
            
//            ActivityIndicator()
            
            ProgressView()
//                .progressViewStyle(CircularProgressViewStyle(.brandPrimary))
                .progressViewStyle(CircularProgressViewStyle())
                .tint(.brandPrimary)
//                .tint(.accent)
                .scaleEffect(2)
        }
    }
}
