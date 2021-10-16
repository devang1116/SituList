//
//  brownimage.swift
//  ScrumDinger
//
//  Created by Devang Papinwar on 14/10/21.
//

import SwiftUI

struct ImageView: View
{
    var image : Image
    var body: some View
    {
        image.clipShape(Circle()).overlay(Circle().stroke(Color.white , lineWidth: 5)).shadow(radius: 7)
    }
}

struct brownimage_Previews: PreviewProvider
{
    static var previews: some View
    {
        ImageView(image: Image("turtlerock"))
    }
}
