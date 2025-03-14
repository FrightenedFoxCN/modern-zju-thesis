#import "/modern-zju-thesis/lib.typ": undergraduate-cs
#import undergraduate-cs: *
#import "../body/read-info.typ": *

// you can modify here for short part that doesn't worth a
// seperate file to handle

#let individual = doc.pages.individual

#let acknowledgements = individual("致 谢")[
  #include "acknowledgements.typ"
]

#let abstract-cn = individual("摘 要")[
  #include "abstract-cn.typ"
]

#let abstract-en = individual("Abstract")[
  #include "abstract-en.typ"
]

#let resume = individual("作者简历", outlined: true)[
  #set par(first-line-indent: 0em)
  #include "resume.typ"
]

#let task = (doc.pages.task)()[
  #include "task.typ"
]

#let grading(scores) = (doc.pages.eval)(scores: scores)[
  #include "comment.typ"
]

#let proposal-eval(scores) = (doc.pages.proposal-eval)(
    scores-supervisor: scores
  )[
  #include "supervisor-comment.typ"
]

#let proposal-task = (doc.pages.proposal-task)[
  #include "proposal-task.typ"
]