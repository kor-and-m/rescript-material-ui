@react.component @module("@mui/core")
external make: (
  ~children: 'children=?,
  ~id: string=?,
  ~style: ReactDOM.Style.t=?,
  ~key: string=?,
  ~ref: ReactDOM.domRef=?,
) => React.element = "RootRef"
