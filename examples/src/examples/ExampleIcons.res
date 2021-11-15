module SupervisedUserCircle = {
  module Filled = {
    @react.component @module("@mui/icons-material/SupervisedUserCircle")
    external make: (~color: string=?, ~fontSize: string=?) => React.element = "default"
  }

  module Outlined = {
    @react.component @module("@mui/icons-material/SupervisedUserCircleOutlined")
    external make: unit => React.element = "default"
  }

  module Rounded = {
    @react.component @module("@mui/icons-material/SupervisedUserCircleRounded")
    external make: unit => React.element = "default"
  }

  module Sharp = {
    @react.component @module("@mui/icons-material/SupervisedUserCircleSharp")
    external make: unit => React.element = "default"
  }

  module TwoTone = {
    @react.component @module("@mui/icons-material/SupervisedUserCircleTwoTone")
    external make: unit => React.element = "default"
  }
}

let rs = React.string

@react.component
let make = () => <>
  <div>
    <MaterialUi_Typography variant=#h6> {"Icon Types:"->rs} </MaterialUi_Typography>
    <MaterialUi_Tooltip title={"Default"->rs} arrow=true placement=#top>
      <span> <SupervisedUserCircle.Filled /> </span>
    </MaterialUi_Tooltip>
    <MaterialUi_Tooltip title={"Outlined"->rs} arrow=true placement=#left>
      <span> <SupervisedUserCircle.Outlined /> </span>
    </MaterialUi_Tooltip>
    <MaterialUi_Tooltip title={"Rounded"->rs} arrow=true placement=#"top-end">
      <span> <SupervisedUserCircle.Rounded /> </span>
    </MaterialUi_Tooltip>
    <MaterialUi_Tooltip title={"TwoTone"->rs} arrow=true placement=#bottom>
      <span> <SupervisedUserCircle.TwoTone /> </span>
    </MaterialUi_Tooltip>
    <MaterialUi_Tooltip title={"Sharp"->rs} arrow=true placement=#right>
      <span> <SupervisedUserCircle.Sharp /> </span>
    </MaterialUi_Tooltip>
  </div>
  <hr />
  <div>
    <MaterialUi_Typography variant=#h6> {"Icon Colors:"->rs} </MaterialUi_Typography>
    <MaterialUi_Tooltip title={"Primary"->rs}>
      <span> <SupervisedUserCircle.Filled color="primary" /> </span>
    </MaterialUi_Tooltip>
    <MaterialUi_Tooltip title={"Secondary"->rs}>
      <span> <SupervisedUserCircle.Filled color="secondary" /> </span>
    </MaterialUi_Tooltip>
  </div>
  <hr />
  <div>
    <MaterialUi_Typography variant=#h6> {"Icon Sizes:"->rs} </MaterialUi_Typography>
    <MaterialUi_Tooltip title={"Large"->rs}>
      <span> <SupervisedUserCircle.Filled fontSize="large" /> </span>
    </MaterialUi_Tooltip>
    <MaterialUi_Tooltip title={"Default"->rs}>
      <span> <SupervisedUserCircle.Filled fontSize="default" /> </span>
    </MaterialUi_Tooltip>
    <MaterialUi_Tooltip title={"Small"->rs}>
      <span> <SupervisedUserCircle.Filled fontSize="small" /> </span>
    </MaterialUi_Tooltip>
  </div>
</>
