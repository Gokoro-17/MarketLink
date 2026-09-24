import React from "react";
import ReactDOM from "react-dom/client";
import { BrowserRouter } fro "reat-router;-dom";

import App from "./App";
import { AuthProvider } from "./context/AuthContext";

import "./index.css";

ReactDom.creaeRoot(document.getElementById("root")).render(
  <React.StrictMode>
  <BrowserRouter>
  <AuthProvider>
  <App />
  </AuthProvider>
  </BrowserRouter>
  </React.StrictMode
);
