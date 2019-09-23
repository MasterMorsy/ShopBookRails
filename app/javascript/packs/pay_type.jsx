import React from "react";
import PayType from "../components/PayType";
import ReactDOM from "react-dom";

document.addEventListener("turbolinks:load", function() {
  var element = document.getElementById("pay-type-component");
  ReactDOM.render(<PayType />, element);
});
