import React, { Component } from "react";

class CreditCard extends Component {
  state = {};
  render() {
    return (
      <div>
        <div className="form-group">
          <label htmlFor="order_credit_card_number">CC #</label>{" "}
          <input
            type="password"
            name="order[credit_card_number]"
            id="order_credit_card_number"
            className="form-control"
          />{" "}
        </div>
        <div className="field">
          <label htmlFor="order_expiration_date">Expiry</label>{" "}
          <input
            type="text"
            name="order[expiration_date]"
            id="order_expiration_date"
            size="9"
            className="form-control"
            placeholder="e.g. 03/19"
          />
        </div>
      </div>
    );
  }
}

export default CreditCard;
