import React from "react";
import Purchase from "./Purchase";
import CreditCard from "./CreditCard";
import Check from "./Check";

class Nopay extends React.Component {
  render() {
    return <React.Fragment></React.Fragment>;
  }
}

class PayType extends React.Component {
  state = { type: " " };

  getPaymentType = event => {
    this.setState({ type: event.target.value });
  };

  render() {
    let SelectedType = Nopay;

    if (this.state.type === "Check") SelectedType = Check;
    else if (this.state.type === "Credit") SelectedType = CreditCard;
    else if (this.state.type === "Purchase") SelectedType = Purchase;
    else SelectedType = Nopay;

    return (
      <React.Fragment>
        <div className="form-group">
          <label htmlFor="order_pay_type">Pay type</label>
          <select
            id="pay_type"
            onChange={this.getPaymentType}
            name="order[pay_type]"
            className="form-control"
          >
            <option value="">Select a payment method</option>
            <option value="Check">Check</option>
            <option value="Credit">Credit card</option>
            <option value="Purchase">Purchase order</option>
          </select>
        </div>
        <SelectedType />
      </React.Fragment>
    );
  }
}

export default PayType;
