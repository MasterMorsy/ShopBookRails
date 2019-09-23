import React, { Component } from "react";

class Purchase extends Component {
  state = {};
  render() {
    return (
      <div>
        <div className="form-group">
          <label htmlFor="order_po_number">PO #</label>
          <input
            type="password"
            className="form-control"
            name="order[po_number]"
            id="order_po_number"
          />
        </div>
      </div>
    );
  }
}

export default Purchase;
