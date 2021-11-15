module Classes = {
  type t = {"root": option<string>}
  @obj external make: (~root: string=?, unit) => t = ""
}

module DefaultSelected = {
  type t
  external arrayOf: array<string> => t = "%identity"
  external string: string => t = "%identity"
}

module Value = {
  type t
  external array: array<MaterialUi_Types.any> => t = "%identity"
  external string: string => t = "%identity"
}

module Selected = {
  type t
  external arrayOf: array<string> => t = "%identity"
  external string: string => t = "%identity"
}

@react.component @module("@mui/lab")
external make: (
  ~children: 'children=?,
  ~classes: Classes.t=?,
  ~className: string=?,
  ~defaultCollapseIcon: React.element=?,
  ~defaultEndIcon: React.element=?,
  ~defaultExpanded: array<string>=?,
  ~defaultExpandIcon: React.element=?,
  ~defaultParentIcon: React.element=?,
  ~defaultSelected: DefaultSelected.t=?,
  ~disableSelection: bool=?,
  ~expanded: array<string>=?,
  ~multiSelect: bool=?,
  ~onNodeSelect: ({..}, Value.t) => unit=?,
  ~onNodeToggle: ({..}, array<MaterialUi_Types.any>) => unit=?,
  ~selected: Selected.t=?,
  ~id: string=?,
  ~style: ReactDOM.Style.t=?,
  ~key: string=?,
  ~ref: ReactDOM.domRef=?,
) => React.element = "TreeView"
