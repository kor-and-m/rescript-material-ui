@react.component @module("@mui/core/styles")
external make: (
  ~disableGeneration: bool=?,
  ~generateClassName: unit => string=?,
  ~injectFirst: bool=?,
  ~jss: {..}=?,
  ~children: 'children,
) => React.element = "StylesProvider"
