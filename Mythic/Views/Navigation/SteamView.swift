import SwiftUI

struct SteamView: View {
    @State private var showingRedirectAlert = false
    
    var body: some View {
        ZStack {
            Color.clear
            VStack {
                Text("Please Download the Modified version of Steam")
                    .multilineTextAlignment(.center)
                    .padding()
                Button {
                    showingRedirectAlert = true
                } label: {
                    Text("Download")
                        .frame(maxWidth: .infinity)
                }
                .buttonStyle(.borderedProminent)
                .clipShape(.capsule)
            }
            .frame(maxWidth: 320)
            .background(
                RoundedRectangle(cornerRadius: 12, style: .continuous)
                    .fill(.regularMaterial) 
            )
            .overlay(
                RoundedRectangle(cornerRadius: 12, style: .continuous)
                    .strokeBorder(.quaternary, lineWidth: 1)
            )
            .padding()
        }
        .frame(maxWidth: .infinity, maxHeight: .infinity)
        .navigationTitle("Steam")
        .alert("You will be redirected to Dropbox", isPresented: $showingRedirectAlert) {
            Button("Back", role: .cancel) {}
            Button("Continue") {
                if let url = URL(string: "https://www.dropbox.com/scl/fo/h47n3jx5z92htdwd400m3/AGZgh0f8yWZAIYO6Ib1K-qk?rlkey=4f2634yrh8wf0lkzp7g4hrxj4&e=1&st=80sv45oq&dl=0") {
                    #if os(macOS)
                    NSWorkspace.shared.open(url)
                    #else
                    UIApplication.shared.open(url)
                    #endif
                }
            }
        } message: {
            Text("Continue to open the download link in your browser.")
        }
    }
}

#Preview {
    NavigationStack {
        SteamView()
    }
}

