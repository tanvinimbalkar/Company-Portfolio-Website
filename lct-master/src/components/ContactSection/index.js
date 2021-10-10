/* eslint-disable jsx-a11y/iframe-has-title */
import React, { useEffect } from "react";
import Swal from "sweetalert2";


import axios from "axios";
import { Alert } from "react-bootstrap";
import {
  ContactBackground,
  ContactBackgroundContainer,
  ContactBtnWrap,
  ContactColumn,
  ContactContainer,
  ContactContentContainer,
  ContactDescTextArea,
  ContactDetailsWrap,
  ContactEmail,
  ContactEmailInput,
  ContactForm,
  ContactHeading,
  ContactLocation,
  ContactMapContainer,
  ContactNameInput,
  ContactPhone,
  ContactRow,
  ContactSubheading,
  ContactSubjectInput,
  ContactSubmitBtn,
} from "./ContactElements";
import { GoLocation } from "react-icons/go";
import { AiOutlineMail } from "react-icons/ai";
import { RiPhoneFill } from "react-icons/ri";
import { FiSend } from "react-icons/fi";
import background from "../../images/contact-background.jpg";
import Aos from "aos";
import "aos/dist/aos.css";
import Footer from "../FooterSection";

class ContactUs extends React.Component {
  constructor(props) {
    super(props);
    this.addFormData = this.addFormData.bind(this);
  }

  addFormData(evt) {
    alert(
      "Your message has reached us successfully. We will get back to you shortly"
    );
    evt.preventDefault();
    const fd = new FormData();
    fd.append("customername", this.refs.customername.value);
    fd.append("email", this.refs.email.value);
    fd.append("subject", this.refs.subject.value);
    fd.append("customermessage", this.refs.customermessage.value);
    

    axios.post("http://localhost/contactus.php", fd).then((res) => {
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
      <ContactContainer>
        <ContactBackgroundContainer>
          <ContactBackground src={background} />
        </ContactBackgroundContainer>
        <ContactHeading>Contact Us</ContactHeading>
        <ContactSubheading>
          Seek first to understand. Then to be understood.
        </ContactSubheading>
        <ContactContentContainer>
          <ContactMapContainer data-aos="fade">
            <iframe
              src="https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d241317.1160978669!2d72.7411002895225!3d19.082197839833327!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x3be7c6306644edc1%3A0x5da4ed8f8d648c69!2sMumbai%2C%20Maharashtra!5e0!3m2!1sen!2sin!4v1633361560626!5m2!1sen!2sin"
              width="100%"
              height="100%"
              allowFullScreen="true"
              loading="lazy"
            ></iframe>
          </ContactMapContainer>
          <ContactRow>
            <ContactColumn xs={12} md={5}>
              <ContactDetailsWrap data-aos="fade-right">
                <div>
                  <GoLocation
                    style={{
                      width: "2rem",
                      height: "2rem",
                      backgroundColor: "#FFC947",
                      padding: "8px",
                      borderRadius: "5px",
                      display: "inline",
                      marginBottom: "1rem",
                    }}
                  />
                  <ContactLocation>Mumbai</ContactLocation>
                </div>
                <div>
                  <AiOutlineMail
                    style={{
                      width: "2rem",
                      height: "2rem",
                      backgroundColor: "#FFC947",
                      padding: "8px",
                      borderRadius: "5px",
                      display: "inline",
                      marginBottom: "1rem",
                    }}
                  />
                  <ContactEmail>info@gmail.com</ContactEmail>
                </div>
                <div>
                  <RiPhoneFill
                    style={{
                      width: "2rem",
                      height: "2rem",
                      backgroundColor: "#FFC947",
                      padding: "8px",
                      borderRadius: "5px",
                      display: "inline",
                      marginBottom: "1rem",
                    }}
                  />
                  <ContactPhone>+91 1234567890</ContactPhone>
                </div>
              </ContactDetailsWrap>
            </ContactColumn>
            <ContactColumn>
              <div data-aos="fade-left">
                <ContactForm ref={(el) => (this.myFormRef = el)}>
                  <ContactNameInput type="text" placeholder="Your Name" ref="customername"/>
                  <ContactEmailInput type="email" placeholder="Your Email" ref="email" />
                  <ContactSubjectInput type="text" placeholder="Subject" ref="subject" />
                  <ContactDescTextArea
                    as="textarea"
                    row={4}
                    placeholder="Message"
                    ref="customermessage"
                  />
                  <ContactBtnWrap>
                    <ContactSubmitBtn onClick={this.addFormData}>
                      <FiSend style={{ marginRight: "10px" }} />
                      Send
                    </ContactSubmitBtn>
                  </ContactBtnWrap>
                </ContactForm>
              </div>
            </ContactColumn>
          </ContactRow>
        </ContactContentContainer>
      </ContactContainer>
      <Footer />
    </>
  );
};
}




  


export default ContactUs;