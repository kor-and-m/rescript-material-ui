// Generated by ReScript, PLEASE EDIT WITH CARE

import * as React from "react";
import * as Examples from "./examples/Examples.bs.js";
import * as ExamplesLab from "./labExamples/ExamplesLab.bs.js";
import * as Core from "@mui/core";
import * as Styles from "@mui/core/styles";

function App(Props) {
  return React.createElement(Styles.ThemeProvider, {
              children: React.createElement(Core.Box, {
                    children: null,
                    height: "100%",
                    margin: "30px auto",
                    maxWidth: "970px",
                    width: "100%"
                  }, React.createElement(Core.CssBaseline, {}), React.createElement(Examples.make, {}), React.createElement(ExamplesLab.make, {})),
              theme: Styles.createMuiTheme({})
            });
}

var make = App;

export {
  make ,
  
}
/* react Not a pure module */
