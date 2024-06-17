//
//  SplashView.swift
//  BaT
//
//  Created by Wayne Dahlberg on 6/15/24.
//

import SwiftUI

// TODO: - make sure the splash animation and the temporary splash image align correctly. The app icon should fade into the splash image. Loading happens while "Bring A Trailer" is displayed, once loading is finished, animation concludes and tows away the logo. Neat.

struct SplashView: View {
  @State private var isActive: Bool = false
  @State private var showLottieView: Bool = true
    
  let duration = 3.0
  
  var body: some View {
    ZStack {
      if isActive {
        AppView()
          .transition(.opacity)
      } else {
        Color.black
          .edgesIgnoringSafeArea(.all)
        if showLottieView {
          LottieView()
            .scaleEffect(0.5)
        }
      }
    }
    .statusBarHidden()
    .onAppear {
      DispatchQueue.main.asyncAfter(deadline: .now() + duration) {
        showLottieView = false
      }
      
      DispatchQueue.main.asyncAfter(deadline: .now() + duration) {
        withAnimation(.easeInOut(duration: 0.5)) {
          isActive = true
        }
      }
    }
  }
}

#Preview {
  SplashView()
}
