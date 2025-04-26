import SwiftUI

struct AppCoverView: View {
    @State private var fadeIn = false

    var body: some View {
        ZStack {
            Image("flower_of_life")
                .resizable()
                .scaledToFill()
                .ignoresSafeArea()
                .opacity(0.08)
                .rotationEffect(Angle(degrees: fadeIn ? 360 : 0))
                .animation(Animation.linear(duration: 60).repeatForever(autoreverses: false), value: fadeIn)

            VStack {
                Image("hummingbird_cover")
                    .resizable()
                    .scaledToFit()
                    .frame(height: 200)
                Text("Your Divine Mind\nMEDITATION")
                    .font(.largeTitle)
                    .bold()
                    .foregroundColor(.white)
                    .multilineTextAlignment(.center)
                Text("Live Guided Meditation\nto experience our 'State' of Being")
                    .font(.headline)
                    .foregroundColor(.white.opacity(0.8))
                    .multilineTextAlignment(.center)
            }
            .opacity(fadeIn ? 1 : 0)
            .onAppear {
                fadeIn = true
            }
        }
    }
}