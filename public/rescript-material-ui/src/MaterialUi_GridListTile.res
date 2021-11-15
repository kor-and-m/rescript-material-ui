module Classes = {
  type t = {
    "root": option<string>,
    "tile": option<string>,
    "imgFullHeight": option<string>,
    "imgFullWidth": option<string>,
  }
  @obj
  external make: (
    ~root: string=?,
    ~tile: string=?,
    ~imgFullHeight: string=?,
    ~imgFullWidth: string=?,
    unit,
  ) => t = ""
}

module Component = {
  type t
  external string: string => t = "%identity"
  external callback: (unit => React.element) => t = "%identity"
  external element: React.element => t = "%identity"
}

@react.component @module("@mui/core")
external make: (
  ~children: 'children=?,
  ~classes: Classes.t=?,
  ~className: string=?,
  ~cols: MaterialUi_Types.Number.t=?,
  ~component: Component.t=?,
  ~rows: MaterialUi_Types.Number.t=?,
  ~id: string=?,
  ~style: ReactDOM.Style.t=?,
  ~key: string=?,
  ~ref: ReactDOM.domRef=?,
) => React.element = "GridListTile"
