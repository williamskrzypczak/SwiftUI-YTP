//
//  ContentView.swift
//  YT Test
//
//  Created by Bill Skrzypczak on 11/7/23.
//

import SwiftUI
import WebKit

struct YoutubeVideoView: UIViewRepresentable {
    var youtubeVideoID: String
    
    func makeUIView(context: Context) -> WKWebView {
        WKWebView()
    }
    
    func updateUIView(_ uiView: WKWebView, context: Context) {
        let path = "https://www.youtube.com/embed/\(youtubeVideoID)"
        guard let url = URL(string: path) else { return }
        uiView.scrollView.isScrollEnabled = false
        uiView.load(.init(url: url))
    }
}

struct ContentView: View {
    var body: some View {
        YoutubeVideoView(youtubeVideoID: "fmWzy6LVebA")
            
    }
}
