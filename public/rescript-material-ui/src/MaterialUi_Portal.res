module Container = {
  type t
  external custom: Dom.element => t = "%identity"
  external element: React.element => t = "%identity"
  external container_func: MaterialUi_Types.any => t = "%identity"
}

@react.component @module("@mui/core")
external make: (
  ~children: 'children=?,
  ~container: Container.t=?,
  ~disablePortal: bool=?,
  ~onRendered: ReactEvent.Synthetic.t => unit=?,
  ~id: string=?,
  ~style: ReactDOM.Style.t=?,
  ~key: string=?,
  ~ref: ReactDOM.domRef=?,
) => React.element = "Portal"
