//
// Created by Karsten Westra on 20/05/2022.
//

import SwiftUI

struct ConferenceListItem: View {

  var conference: Conference

  var body: some View {
    HStack {

      Image(systemName: "calendar.circle")
        .resizable()
        .scaledToFit()
        .frame(width: 32, height: 32)
        .padding(4)

      VStack(alignment: .leading) {
        Text(conference.name)
          .font(.title)
        Text(conference.location)
          .font(.subheadline)
      }
    }
  }
}


class ConferenceListItem_Previews: PreviewProvider {
  static var previews: some View {
    ConferenceListItem(conference: Conference(name: "Name", location: "Location"))
  }
}