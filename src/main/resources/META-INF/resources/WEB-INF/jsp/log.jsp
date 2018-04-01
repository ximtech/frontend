<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01//EN" "http://www.w3.org/TR/html4/strict.dtd">
<META HTTP-EQUIV="Pragma" CONTENT="no-cache">
<META HTTP-EQUIV="Expires" CONTENT="-1">
<html>
<head>
    <TITLE>Currency Info</TITLE>
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>

    <style>
        BODY {
            font-family: Arial;
            color: #444444;
        }

        .error {
            font-family: Arial;
            font-size: 10pt;
            color: #ff0000;
            font-weight: bold;
        }

        .name {
            font-family: Arial;
            font-size: 12px;
            text-align: right;
            margin-right: 5px;
        }

        .button {
            font-family: Arial;
            font-size: 10pt;
        }

        .value {
            font-family: Arial;
            font-size: 12px;
            font-weight: bold;
            text-align: left;
            padding-left: 10px
        }

        .label {
            font-family: Arial;
            font-size: 12px;
            text-align: left;
        }

        .label2 {
            font-family: Arial;
            font-size: 12px;
            text-align: center;
        }

        span.pos {
            position: relative;
            right: 8%;
        }

        th {
            font-family: Arial;
            font-size: 12px;
            background-color: #999999;
            text-align: justify;
        }

        .error {
            border: 1px solid #CC0000;
            background-color: #FFD7D7;
            padding: 10px 10px;
            text-align: center
        }
    </style>
</head>
<body bgcolor="#f0f0f0" marginwidth="0" marginheight="0" leftmargin="0" topmargin="0">
<br>
<center>
    <table cellpadding="0" cellspacing="10" border="0" width="600"
           style="border:1px solid #000066;background-color:#ffffff">
        <tr>
            <td valign="top">
                <div style="background-color:#ffffff; border:0px; float:both; clear:none; margin:0em; border-style:none">
                    <table width="100%" border="0" cellspacing="0" cellpadding="2">
                        <tr>
                            <td rowspan="5" style="padding:20px 0px 0px 40px;"><img src="../images/currency.jpg" alt="" width="120"
                                                                        height="120" border="0"></td>

                            <td class="label2" colspan="2"><span class="pos"><b>Currency Information</b></span></td>
                        </tr>
                        <tr>
                            <td width="40%" class="name">Code:</td>
                            <td width="60%" class="value">${currencyCode}</td>
                        </tr>
                        <tr>
                            <td class="name">Num:</td>
                            <td class="value">${currencyNum}</td>
                        </tr>
                        <tr>
                            <td class="name">E:</td>
                            <td class="value">${currencyE}</td>
                        </tr>
                        <tr>
                            <td class="name">Currency:</td>
                            <td class="value">${currencyFullName}</td>
                        </tr>
                    </table>

                    <table cellspacing="5" width="100%" border="0">
                        <tr>
                            <td id="message" class="error" colspan="2" 3dsdisplay="error">${errorMessage}</td>
                        </tr>

                        <script>
                            var errorMessage = document.getElementById("message").textContent;
                            var errorDisplay = document.getElementById("message");
                            if (errorMessage === "Success") {
                                errorDisplay.style.display = "none";
                            } else {
                                errorDisplay.style.display = "block";
                            }
                        </script>

                        <tr>
                            <td>
                                <div class="label" style="text-align: center"><b>Request Information</b></div>
                            </td>
                        </tr>

                        <tr>
                            <td align="center">
                                <table cellspacing="0" width="96%" border="1"
                                       style="border:1px solid black;background-color:#ffffff">
                                    <tr>
                                        <th>Code</th>
                                        <th>Client IP</th>
                                        <th>Request status</th>
                                        <th>Date</th>
                                        <th>Time</th>
                                    </tr>

                                    <c:forEach items="${logList}" var="log">
                                        <tr>
                                            <td style="border: 0.5px solid darkgrey;padding: 2px"
                                                class="value">${log.getCurrencyCode()}</td>
                                            <td style="border: 0.5px solid darkgrey;padding: 2px"
                                                class="value">${log.getClientIP()}</td>
                                            <td style="border: 0.5px solid darkgrey;padding: 2px"
                                                class="value">${log.getErrorDescription()}</td>
                                            <td style="border: 0.5px solid darkgrey;padding: 2px"
                                                class="value">${log.getRequestDate()}</td>
                                            <td style="border: 0.5px solid darkgrey;padding: 2px"
                                                class="value">${log.getRequestTime()}</td>
                                        </tr>
                                    </c:forEach>
                                </table>
                            </td>
                        </tr>

                        <tr>
                            <td>
                        <form>
                            <table width="100%" border="0" cellspacing="1" cellpadding="2">
                                <tr>
                                    <td width="56%" class="button">
                                        <div style="display:none;"><input type="back" value="Back" name="back"></div>
                                        <div align="center">
                                            <input type="button" value="Continue" onclick="history.back()">
                                        </div>
                                    </td>
                                </tr>
                            </table>
                        </form>
                            </td>
                        </tr>
                        <!-- ***************** -->
                        <!-- Content ends here -->
                        <!-- ***************** -->
                    </table>
                </div>
        </tr>
    </table>
</center>
</body>
</html>
<META HTTP-EQUIV="Pragma" CONTENT="no-cache">
<META HTTP-EQUIV="Expires" CONTENT="-1">