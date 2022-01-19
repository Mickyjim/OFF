//
//  VideoView.swift
//  OFF
//
//  Created by Michael Favre on 08/01/2022.
//

import SwiftUI
import WebKit

struct VideoView: UIViewRepresentable {
    
    let videoID = "UCAld0IerluAfKROSyAjuFOg"
    
    func makeUIView(context: Context) -> WKWebView {
        return WKWebView()
    }
    
    func updateUIView(_ uiView: WKWebView, context: Context) {
        guard let youtubeURL = URL(string: "https://youtube.com/channel/\(videoID)") else { return }
        uiView.scrollView.isScrollEnabled = false
        uiView.load(URLRequest(url: youtubeURL))
    }
}
