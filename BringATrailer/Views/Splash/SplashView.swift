//
//  SplashView.swift
//  BaT
//
//  Created by Wayne Dahlberg on 6/15/24.
//

import SwiftUI

struct SplashView: View {
  var body: some View {
    ZStack {
      Color.black
        .edgesIgnoringSafeArea(.all)
      LottieView()
        .scaleEffect(0.5)
    }
    .statusBarHidden()
  }
}

#Preview {
  SplashView()
}
