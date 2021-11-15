module AnchorEl = {
  type t
  external obj: {..} => t = "%identity"
  external anchorEl_func: MaterialUi_Types.any => t = "%identity"
}

module Children = {
  type t
  external element: React.element => t = "%identity"
  external children_func: MaterialUi_Types.any => t = "%identity"
}

module Container = {
  type t
  external custom: Dom.element => t = "%identity"
  external element: React.element => t = "%identity"
  external container_func: MaterialUi_Types.any => t = "%identity"
}

type placement = [
  | #"bottom-end"
  | #"bottom-start"
  | #bottom
  | #"left-end"
  | #"left-start"
  | #left
  | #"right-end"
  | #"right-start"
  | #right
  | #"top-end"
  | #"top-start"
  | #top
]

@react.component @module("@mui/core")
external make: (
  ~anchorEl: AnchorEl.t=?,
  ~children: 'children=?,
  ~container: Container.t=?,
  ~disablePortal: bool=?,
  ~keepMounted: bool=?,
  ~modifiers: {..}=?,
  ~\"open": bool,
  ~placement: placement=?,
  ~popperOptions: {..}=?,
  ~style: ReactDOM.Style.t=?,
  ~transition: bool=?,
  ~id: string=?,
  ~key: string=?,
  ~ref: ReactDOM.domRef=?,
) => React.element = "Popper"
