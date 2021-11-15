module Classes = {
  type t = {
    "root": option<string>,
    "ol": option<string>,
    "li": option<string>,
    "separator": option<string>,
  }
  @obj
  external make: (~root: string=?, ~ol: string=?, ~li: string=?, ~separator: string=?, unit) => t =
    ""
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
  ~component: Component.t=?,
  ~expandText: string=?,
  ~itemsAfterCollapse: MaterialUi_Types.Number.t=?,
  ~itemsBeforeCollapse: MaterialUi_Types.Number.t=?,
  ~maxItems: MaterialUi_Types.Number.t=?,
  ~separator: React.element=?,
  ~id: string=?,
  ~style: ReactDOM.Style.t=?,
  ~key: string=?,
  ~ref: ReactDOM.domRef=?,
) => React.element = "Breadcrumbs"
