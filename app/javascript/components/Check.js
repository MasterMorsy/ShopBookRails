import React, { Component } from "react";

class Check extends Component {
  state = {};
  render() {
    return (
      <div>
        <div className="form-group">
          <label htmlFor="order_routing_number">Routing #</label>{" "}
          <input
            type="password"
            name="order[routing_number]"
            id="order_routing_number"
            className="form-control"
          />
        </div>
        <div className="field">
          <label htmlFor="order_account_number">Account #</label>
          <input
            type="text"
            name="order[account_number]"
            id="order_account_number"
            className="form-control"
          />
        </div>
      </div>
    );
  }
}

export default Check;
