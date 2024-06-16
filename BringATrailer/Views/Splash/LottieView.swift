//
//  LottieView.swift
//  BaT
//
//  Created by Wayne Dahlberg on 6/15/24.
//

import SwiftUI
import Lottie

struct LottieView: UIViewRepresentable {
  func makeUIView(context: Context) -> Lottie.LottieAnimationView {
    let animationView = LottieAnimationView(name: "BaT Splash")
    animationView.play()
    return animationView
  }
  
  func updateUIView(_ uiView: LottieAnimationView, context: Context) {
    //
  }
}


#Preview {
  LottieView()
}
