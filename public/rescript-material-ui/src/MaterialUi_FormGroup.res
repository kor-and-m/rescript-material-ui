module Classes = {
  type t = {"root": option<string>, "row": option<string>}
  @obj external make: (~root: string=?, ~row: string=?, unit) => t = ""
}

@react.component @module("@mui/core")
external make: (
  ~children: 'children=?,
  ~classes: Classes.t=?,
  ~className: string=?,
  ~row: bool=?,
  ~id: string=?,
  ~style: ReactDOM.Style.t=?,
  ~key: string=?,
  ~ref: ReactDOM.domRef=?,
) => React.element = "FormGroup"
