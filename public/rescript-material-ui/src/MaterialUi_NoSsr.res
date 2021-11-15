@react.component @module("@mui/core")
external make: (
  ~children: 'children=?,
  ~defer: bool=?,
  ~fallback: React.element=?,
  ~id: string=?,
  ~style: ReactDOM.Style.t=?,
  ~key: string=?,
  ~ref: ReactDOM.domRef=?,
) => React.element = "NoSsr"
