#let generate-doc(filename) = {
  let info-file = yaml(filename)
  let constructor = none

  if info-file.type == "undergraduate-cs" {
    import "/modern-zju-thesis/lib.typ": undergraduate-cs
    import undergraduate-cs: *
    constructor = undergraduate-cs
  } else if info-file.type == "graduate-general" {
    import "/modern-zju-thesis/lib.typ": graduate-general
    import graduate-general: *
    constructor = graduate-general
  } else {
    panic("Type invalid in the config file!")
  }

  // TODO: this should be modified somehow
  let bibsource = ""
  if info-file.bibsource != none {
    bibsource = info-file.bibsource
  }

  let bibmode = "citext"
  if info-file.bibmode != none {
    bibmode = info-file.bibmode
  }

  constructor(
    info: info-file.info,
    twoside: info-file.twoside,
    bibsource: bibsource,
    bibmode: info-file.bibmode
  )
}

// the doc is created here once and for all
#let doc = generate-doc("../info.yml")