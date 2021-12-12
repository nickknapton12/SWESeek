import { Form, Button, FloatingLabel, Container } from "react-bootstrap";
import "../Styles/LoginAndSignupStyles.css";
import Axios from 'axios';

export default function LoginPage() {
  
    function login(){
        Axios.get("http://localhost:3000/api/login", {
            "email": document.getElementById("email").value,
            "password": document.getElementById("password").value,
        })
        .then((res) => {
            localStorage.setItem("token", res.data.token);
            window.location.href = "http://localhost:3000/tracking";
        })
        .catch((res) => {
            console.log(res);
        });
    }

    function keyPress(e){
        if(e.key === "Enter"){
            login();
        }
    }

    return (
        <div style={{minHeight:`73.3vh`, paddingTop:`8%`}}>
            <Container  style={{maxWidth:`800px`}}>
                <h1 className="SignupHeader">Login</h1>
                <Form className="SignupForm" onSubmit={console.log("test")}>
                    <FloatingLabel controlId="floatingInput" label="Email address" className="mb-3">
                        <Form.Control id="email" type="email" placeholder="name@sweseek.com" />
                    </FloatingLabel>
                    <FloatingLabel controlId="floatingInput" label="Password" className="mb-3">
                        <Form.Control id="password" onKeyPress={ keyPress } type="password" placeholder="password" />
                    </FloatingLabel>
                    <Button size="lg" className="SignupButton" type="submit">
                        Submit
                    </Button>
                </Form>
            </Container>
        </div>
    );
}
