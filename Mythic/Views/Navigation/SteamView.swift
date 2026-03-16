import SwiftUI

struct SteamView: View {
    var body: some View {
        VStack(spacing: 16) {
            Text("Hello, world!")
                .font(.title)
            Text("Welcome to the Steam view.")
                .foregroundStyle(.secondary)
        }
        .frame(maxWidth: .infinity, maxHeight: .infinity, alignment: .center)
        .padding()
        .navigationTitle("Steam")
    }
}

#Preview {
    NavigationStack {
        SteamView()
    }
}

