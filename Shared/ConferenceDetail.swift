//
// Created by Karsten Westra on 20/05/2022.
//

import SwiftUI

struct ConferenceDetail: View {

  var conference: Conference

  var body: some View {
    HStack {
      VStack(alignment: .leading) {
        Text(conference.location)
          .font(.subheadline)
        Text(conference.name)
          .font(.title)
      }
      Image(systemName: "calendar.circle")
        .resizable()
        .scaledToFit()
        .frame(width: 32, height: 32)
        .padding(4)
    }
  }
}


class ConferenceDetail_Previews: PreviewProvider {
  static var previews: some View {
    ConferenceDetail(conference: Conference(name: "Name", location: "Location"))
  }
}