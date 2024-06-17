//
//  SplashView.swift
//  BaT
//
//  Created by Wayne Dahlberg on 6/15/24.
//

import SwiftUI

struct SplashView: View {
  @State private var isActive: Bool = false
  @State private var showLottieView: Bool = true
    
  let duration = 4.5
  
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
