//
//  ContentView.swift
//  GoogleGeminiSwift
//
//  Created by Sunil Gurung on 9/8/2024.
//

import SwiftUI
import Geminis

struct ContentView: View {

    var body: some View {
        GeminiView(apiKey: APIKeyManager.default)
    }
}

#Preview {
    ContentView()
}
