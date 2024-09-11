<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="TimePage.aspx.cs" Inherits="RealTimeAPI.TimePage" %>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Current UTC Time - Digital Clock</title>
    <!-- Meta tag for auto-refresh every 60 seconds -->
    <meta http-equiv="refresh" content="60" />
    <style>
        body {
            font-family: 'Courier New', Courier, monospace;
            text-align: center;
            background-color: #282c34;
            color: white;
            margin: 0;
            padding: 0;
            display: flex;
            justify-content: center;
            align-items: center;
            height: 100vh;
        }

        .clock {
            font-size: 100px;
            letter-spacing: 5px;
            padding: 20px;
            border-radius: 10px;
            background-color: #222;
            box-shadow: 0px 0px 20px rgba(0, 0, 0, 0.5);
            width: fit-content;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div class="clock">
            <!-- Display the UTC time retrieved by the server -->
            <%= GetCurrentTime() %>
        </div>
    </form>
</body>
</html>
