//
//  WebView.swift
//  M5L7Challenge
//
//  Created by Sabit Ahmed on 4/10/21.
//

import SwiftUI
import WebKit

struct WebView: UIViewRepresentable {
    
    func makeUIView(context: Context) -> WKWebView {
        let webView = WKWebView()
        // Read URL path
        let myUrl = URL(string: "https://codewithchris.com")
        // Create request and load it
        if myUrl != nil {
            let request = URLRequest(url: myUrl!)
            webView.load(request)
        }

        return webView
    }
    
    func updateUIView(_ uiView: WKWebView, context: Context) {
        // Update view if needed
    }
}

struct WebView_Previews: PreviewProvider {
    static var previews: some View {
        WebView()
    }
}
