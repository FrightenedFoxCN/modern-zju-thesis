#import "/modern-zju-thesis/lib.typ": undergraduate-cs
#import undergraduate-cs: *
#import "read-info.typ": *
#import "../attachments/attachments.typ": *

#part[开题报告]

#doc.pages.proposal-cover
#proposal-task

#counter(page).update(0)
#(doc.components.new-bib)()

= 文献综述

#include "openning/review.typ"

== 参考文献

#doc.components.bibliography

= 开题报告

#(doc.components.new-bib)()

#include "openning/report.typ"

== 参考文献

#doc.components.bibliography

= 外文翻译

#include "openning/translation.typ"

= 外文原文