extension Fortune {

  // Stencil does not yet support automatic HTML escaping:
  // https://github.com/kylef/Stencil/pull/80
  //
  func htmlEncode() -> Fortune {
    return Fortune(id: self.id, message: self.message
        .replacingOccurrences(of: "&", with: "&amp;")
        .replacingOccurrences(of: "<", with: "&lt;")
        .replacingOccurrences(of: ">", with: "&gt;")
        .replacingOccurrences(of: "'", with: "&apos;")
        .replacingOccurrences(of: "\"", with: "&quot;")
    )
  }

}
