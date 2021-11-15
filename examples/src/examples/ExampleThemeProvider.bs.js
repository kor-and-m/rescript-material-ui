// Generated by ReScript, PLEASE EDIT WITH CARE

import * as React from "react";
import * as Core from "@mui/core";
import * as Styles from "@mui/core/styles";

var theme = Styles.createMuiTheme({
      palette: {
        primary: {
          main: "#8fe830"
        }
      }
    });

function ExampleThemeProvider(Props) {
  return React.createElement("div", undefined, React.createElement(Core.Button, {
                  children: "Default Primary Color",
                  color: "primary",
                  variant: "outlined"
                }), " ", React.createElement(Styles.ThemeProvider, {
                  children: React.createElement(Core.Button, {
                        children: "Themed Primary Color",
                        color: "primary",
                        variant: "outlined"
                      }),
                  theme: theme
                }));
}

var make = ExampleThemeProvider;

export {
  theme ,
  make ,
  
}
/* theme Not a pure module */
