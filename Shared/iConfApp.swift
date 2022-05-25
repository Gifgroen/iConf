//
//  iConfApp.swift
//  Shared
//
//  Created by Karsten Westra on 20/05/2022.
//
//

import SwiftUI

@main
struct iConfApp: App {

  init() {
    #if DEBUG
    var injectionBundlePath = "/Applications/InjectionIII.app/Contents/Resources"
    #if targetEnvironment(macCatalyst)
    injectionBundlePath = "\(injectionBundlePath)/macOSInjection.bundle"
    #elseif os(iOS)
    injectionBundlePath = "\(injectionBundlePath)/iOSInjection.bundle"
    #endif
    Bundle(path: injectionBundlePath)?.load()
    #endif
  }

  var body: some Scene {
    WindowGroup {
      ContentView()
    }
  }
}
