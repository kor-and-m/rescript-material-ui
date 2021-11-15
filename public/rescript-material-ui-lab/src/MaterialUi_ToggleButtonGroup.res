module Classes = {
  type t = {
    "root": option<string>,
    "vertical": option<string>,
    "grouped": option<string>,
    "groupedHorizontal": option<string>,
    "groupedVertical": option<string>,
  }
  @obj
  external make: (
    ~root: string=?,
    ~vertical: string=?,
    ~grouped: string=?,
    ~groupedHorizontal: string=?,
    ~groupedVertical: string=?,
    unit,
  ) => t = ""
}

type orientation = [#horizontal | #vertical]

type size = [#large | #medium | #small]

@react.component @module("@mui/lab")
external make: (
  ~children: 'children=?,
  ~classes: Classes.t=?,
  ~className: string=?,
  ~exclusive: bool=?,
  ~onChange: (ReactEvent.Form.t, MaterialUi_Types.any) => unit=?,
  ~orientation: orientation=?,
  ~size: size=?,
  ~value: MaterialUi_Types.any=?,
  ~id: string=?,
  ~style: ReactDOM.Style.t=?,
  ~key: string=?,
  ~ref: ReactDOM.domRef=?,
) => React.element = "ToggleButtonGroup"
