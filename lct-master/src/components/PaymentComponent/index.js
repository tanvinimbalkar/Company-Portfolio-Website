import React from "react";
import Swal from "sweetalert2";

import axios from "axios";
import { Alert } from "react-bootstrap";
import {
  PaymentContainer,
  PaymentForm,
  PaymentHeading,
  PaymentSubheading,
  PBtn,
  PBtnWrap,
  PEmailInput,
  PFirstNameInput,
  PLabel,
  PLastNameInput,
  PPackType,
  PPhoneNumberInput,
} from "./PaymentElements";

class Payment extends React.Component {
  constructor(props) {
    super(props);
    this.addFormData = this.addFormData.bind(this);
  }

  addFormData(evt) {
    alert(
      "Thank you for choosing this pack. Your details are submitted successfully. We will reach back to you shortly"
    );
    evt.preventDefault();
    const fd = new FormData();
    fd.append("fname", this.refs.fname.value);
    fd.append("lname", this.refs.lname.value);
    fd.append("email", this.refs.email.value);
    fd.append("pack", this.refs.pack.value);
    fd.append("phone", this.refs.phone.value);
    

    axios.post("http://localhost/package.php", fd).then((res) => {
      Swal.fire({
        title: "Laxmi Cheat Fund",
        text: res.data.data,
        type: "success",
      });
      this.myFormRef.reset();
    });
  }

  

  render() {
  return (
    <>
      <PaymentContainer fluid>
        <PaymentHeading>Payment Section</PaymentHeading>
        <PaymentSubheading>
          You have chosen{" "}
          <span
            style={{
              color: "black",
              fontWeight: "bold",
              borderBottom: "5px solid #ffc947",
            }}
          >
            {this.props.pack}
          </span>{" "}
          Pack
        </PaymentSubheading>
        <PaymentForm>
          <PLabel>Name</PLabel> <br />
          <PFirstNameInput type="text" placeholder="Enter Your First Name" ref="fname"/>
          <PLastNameInput type="text" placeholder="Enter Your Last Name" ref="lname" />
          <br /> <PLabel>Email</PLabel>
          <PEmailInput type="email" placeholder="Enter Your Email" ref="email" />
          <PLabel>Pack Type</PLabel>
          <PPackType
            type="text"
            value={this.props.pack}
            placeholder={`${this.props.pack}`}
            ref="pack"
            readOnly
          />
          <PLabel>Phone Number</PLabel>
          <PPhoneNumberInput
            type="phone"
            placeholder="Enter Your Phone Number"
            ref="phone"
          />
          <PBtnWrap>
            <PBtn onClick={this.addFormData}>Submit</PBtn>
          </PBtnWrap>
        </PaymentForm>
      </PaymentContainer>
    </>
  );
};
}

export default Payment;