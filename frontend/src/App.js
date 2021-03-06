import "./Styles/NavStyles.css";
import * as React from "react";
import { Container, Col, Row, Navbar, Nav, Button } from "react-bootstrap";
import { BrowserRouter as Router, Switch, Route, Link } from "react-router-dom";
import TrackingPage from "./Pages/TrackingPage";
import JobsPage from "./Pages/JobsPage";
import SalariesPage from "./Pages/SalariesPage";
import LearningPage from "./Pages/LearningPage";
import HomePage from "./Pages/HomePage";
import LoginPage from "./Pages/LoginPage";
import SignupPage from "./Pages/SignupPage";
import EmployerDashboardPage from "./Pages/EmployerDashboardPage";
import EmployerSignupPage from "./Pages/EmployerSignupPage";
import EmployerLoginPage from "./Pages/EmployerLoginPage";


function App() {
  function signOut(){
    localStorage.removeItem("token");
    window.location.href = "http://localhost:3000/"
  }

  return (
    <Router>
      <Navbar collapseOnSelect expand="lg">
        <Container>
          <Navbar.Brand href="/">SWEseek</Navbar.Brand>
          <Navbar.Toggle aria-controls="responsive-navbar-nav" />
          <Navbar.Collapse id="responsive-navbar-nav">
            <Nav className="me-auto">
              <Nav.Link href="/tracking">Tracking</Nav.Link>
              <Nav.Link href="/jobs">Jobs</Nav.Link>
              <Nav.Link href="/salaries">Salaries</Nav.Link>
              <Nav.Link href="/learning">Learning</Nav.Link>
            </Nav>
            <Nav>
              {
                localStorage.getItem("token") !== null ? 
                <Button
                className="navButton"
                style={{
                  backgroundColor: `white`,
                  color: `#264653`,
                  borderColor: `white`,
                }}
                onClick={signOut}
              >
                Sign out
              </Button>
              :
              <div>
              <Button
                className="navButton"
                style={{
                  backgroundColor: `white`,
                  color: `#264653`,
                  borderColor: `white`,
                }}
                href="/signup"
              >
                Sign up for free
              </Button>
              <Button
                className="navButton"
                style={{
                  backgroundColor: `#3b6b7e`,
                  color: `white`,
                  borderColor: `#3b6b7e`,
                }}
                href="/login"
              >
                Sign in
              </Button>
              </div>
              }
            </Nav>
          </Navbar.Collapse>
        </Container>
      </Navbar>


      <Switch>
        <Route path="/" exact>
          <HomePage />
        </Route>
        <Route path="/tracking" exact>
          <TrackingPage />
        </Route>
        <Route path="/jobs" exact>
          <JobsPage />
        </Route>
        <Route path="/salaries" exact>
          <SalariesPage />
        </Route>
        <Route path="/learning" exact>
          <LearningPage />
        </Route>
        <Route path="/signup" exact>
          <SignupPage />
        </Route>
        <Route path="/employersignup" exact>
          <EmployerSignupPage />
        </Route>
        <Route path="/login" exact>
          <LoginPage />
        </Route>
        <Route path="/employerlogin" exact>
          <EmployerLoginPage />
        </Route>
        <Route path="/employerdashboard" exact>
          <EmployerDashboardPage />
        </Route>
        <Route path="/" >
          <h1 style={{marginTop: `5%`, fontFamily:`Ubuntu`}}>Sorry this page doesn't exist!</h1>
        </Route> 
      </Switch>


      <Navbar collapseOnSelect expand="lg" sticky="bottom" style={{height:`170px`}}>
        <Container style={{justifyContent:`center`}}>
          <div>
            <h1>Simplify your job search, increase your total compensation, and practice for the interview. All for free.</h1>
            <h1 className="FooterLogo">SWEseek</h1>
          </div>
        </Container>
      </Navbar>
    </Router>
    
  );
}

export default App;
