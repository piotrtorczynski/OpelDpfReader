import SwiftUI
import Foundation

struct ContentView: View {
    
    var body: some View {
        VStack {
            Spacer()
            TabView {
                DPFView()
                    .tabItem {
                        Image(systemName: "1.circle")
                        Text("tab_dpf".localized)
                }.tag(0)
                SettingsView()
                    .tabItem {
                        Image(systemName: "2.circle")
                        Text("settings_title".localized)
                }.tag(1)
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

