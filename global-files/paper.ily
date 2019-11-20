pagenumcol = \markup {
  \column {
    \vspace #0.5
    \fromproperty #'page:page-number-string
  }
}
copyrightcol = \include "./global-files/copyright.ily"

\paper {
  indent = 8
  ragged-last = ##f
  system-system-spacing =
  #'((basic-distance . 17)
     (minimum-distance . 10)
     (padding . 1)
     (stretchability . 60))
  %top-margin = #16
  %left-margin = #16
  print-page-number = ##t
  print-first-page-number = ##t
  oddHeaderMarkup = \markup \null
  evenHeaderMarkup = \markup \null
  oddFooterMarkup = \markup { \copyrightcol \pagenumcol }
  evenFooterMarkup = \markup { \pagenumcol \copyrightcol }

}