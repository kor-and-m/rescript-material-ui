// Generated by ReScript, PLEASE EDIT WITH CARE

import * as $$Array from "rescript/lib/es6/array.js";
import * as React from "react";
import * as Core from "@mui/core";
import * as Styles from "@mui/styles";

var useStyles = Styles.makeStyles({
      root: {
        backgroundColor: "#FFFFFF",
        maxHeight: "300px",
        maxWidth: "360px",
        overflow: "auto",
        position: "relative",
        width: "100%"
      },
      listSection: {
        backgroundColor: "inherit"
      },
      ul: {
        backgroundColor: "inherit",
        padding: "0"
      }
    });

function ExampleList(Props) {
  var classes = useStyles();
  var subheader = React.createElement("li", undefined);
  return React.createElement(Core.Card, {
              children: React.createElement(Core.Card, {
                    children: null
                  }, React.createElement(Core.CardHeader, {
                        subheader: "A Subtitle",
                        title: "Example Title"
                      }), React.createElement(Core.CardContent, {
                        children: React.createElement(Core.List, {
                              children: $$Array.map((function (sectionId) {
                                      return React.createElement("li", {
                                                  key: "section-" + String(sectionId),
                                                  className: classes.listSection
                                                }, React.createElement("ul", {
                                                      className: classes.ul
                                                    }, $$Array.append([React.createElement(Core.ListSubheader, {
                                                                children: "I'm sticky " + String(sectionId),
                                                                key: "header"
                                                              })], $$Array.map((function (item) {
                                                                return React.createElement(Core.ListItem, {
                                                                            children: React.createElement(Core.ListItemText, {
                                                                                  children: "Item " + String(item)
                                                                                }),
                                                                            key: "item-" + (String(sectionId) + ("-" + String(item)))
                                                                          });
                                                              }), [
                                                              0,
                                                              1,
                                                              2
                                                            ]))));
                                    }), [
                                    0,
                                    1,
                                    2,
                                    3,
                                    4
                                  ]),
                              className: classes.root,
                              subheader: subheader
                            })
                      }), React.createElement(Core.CardActions, {
                        children: React.createElement(Core.Button, {
                              children: "Go to example",
                              color: "primary",
                              href: "#/example/route",
                              variant: "contained"
                            })
                      }))
            });
}

var make = ExampleList;

export {
  useStyles ,
  make ,
  
}
/* useStyles Not a pure module */
