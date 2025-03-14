#import "../../lib.typ": undergraduate-cs
#import undergraduate-cs: *
#import "body/read-info.typ": *
#import "attachments/attachments.typ": *
#show: doc.style

#doc.pages.cover

#show: frontmatter

#doc.pages.decl

#let individual = doc.pages.individual

#acknowledgements
#abstract-cn
#abstract-en
#doc.pages.outline

#show: mainmatter
#include "body/thesis.typ"
#doc.pages.bibliography

// TODO: Simplify this
#individual("附录", outlined: true)[
  #appendix[
    === 一个附录 <app1>
    这里是附录。
    @app1
    === 另一个附录
  ]
]

#resume
#task
#grading((8, 15, 5, 60))

#include "body/openning.typ"

#proposal-eval((8, 15, 4))