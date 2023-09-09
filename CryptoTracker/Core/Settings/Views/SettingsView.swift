//
//  SettingsView.swift
//  CryptoTracker
//
//  Created by Alex Cannizzo on 10/09/2023.
//

import SwiftUI

struct SettingsView: View {
    
    @Environment(\.dismiss) private var dismiss
    let coinGeckoURL = URL(string: "https://www.coingecko.com")!
    
    var body: some View {
        NavigationView {
            appSettingSection
                .navigationTitle("Settings")
                .toolbar {
                    ToolbarItem(placement: .navigationBarLeading) {
                        Button {
                            dismiss()
                        } label: {
                            Image(systemName: "xmark")
                        }
                    }
                }
        }
    }
}

struct SettingsView_Previews: PreviewProvider {
    static var previews: some View {
        SettingsView()
    }
}

extension SettingsView {
    
    private var appSettingSection: some View {
        ZStack {
            Color.theme.background.ignoresSafeArea()
            
            List {
                Section {
                    VStack(alignment: .leading) {
                        HStack {
                            Image("logo")
                                .resizable()
                                .frame(width: 100, height: 100)
                                .clipShape(RoundedRectangle(cornerRadius: 20))
                            Spacer()
                            Image("coingecko")
                                .resizable()
                                .scaledToFit()
                                .frame(width: 200)
                                .clipShape(RoundedRectangle(cornerRadius: 20))
                        }
                        Text("This app was made using SwiftUI, Combine, Publishers/Subscribers and Core Data, as well as MVVM architecture. All data retrieved from the Coin Gecko API.")
                            .font(.callout)
                            .fontWeight(.medium)
                            .foregroundColor(Color.theme.accent)
                    }
                    .padding(.vertical, 4)
                    Link("Coin Gecko", destination: coinGeckoURL)
                        .tint(.blue)
                        .font(.headline)
                } header: {
                    Text("Crypto Tracker")
                }
            }
            .listStyle(GroupedListStyle())
        }
    }
}
