//
//  ContentView.swift
//  Shared
//
//  Created by Karsten Westra on 20/05/2022.
//
//

import SwiftUI

struct ContentView: View {

  var conferences: [Conference] = [
    Conference(name: "WWDC", location: "MountainView"),
    Conference(name: "Google I/O", location: "GooglePlex"),
    Conference(name: "AppDevCon", location: "020"),
    Conference(name: "SwiftCon", location: "Somewhere"),
    Conference(name: "Big Android BBQ", location: "020")
  ]

  var body: some View {
    NavigationView {
      List {
        ForEach(conferences, id: \.id) { item in
          NavigationLink(destination: ConferenceDetail(conference: item)) {
            ConferenceListItem(conference: item)
          }
        }
      }
      .navigationTitle("Conferences")
    }
  }
}

class ContentView_Previews: PreviewProvider {
  static var previews: some View {
    ContentView()
  }

  #if DEBUG && os(iOS)
  @objc class func injected() {
    let windowScene = UIApplication.shared.connectedScenes.first as? UIWindowScene
    windowScene?.windows.first?.rootViewController =
      UIHostingController(rootView: ContentView())
  }
  #endif
}
