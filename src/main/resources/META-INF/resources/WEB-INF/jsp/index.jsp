<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01//EN" "http://www.w3.org/TR/html4/strict.dtd">
<META HTTP-EQUIV="Pragma" CONTENT="no-cache">
<META HTTP-EQUIV="Expires" CONTENT="-1">
<html>
<head>
    <TITLE>Currency Info</TITLE>
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />

    <style>
        BODY {
            font-family: Arial;
            color:#444444;
        }
        .header {
            font-family: Arial;
            font-size: 14pt;
        }
        .message {
            font-family: Arial;
            font-size: 10pt;
            color: #0000ff;
            font-weight: bold;
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
            text-align:right;
            margin-right:5px;
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
            padding-left:10px
        }
        .label {
            font-family: Arial;
            font-size: 12px;
            text-align: left;
        }
        .default {
            font-family: Arial;
            font-size: 10pt;
            color: #999999;
            text-align: justify;
        }
        .linkcaption {
            font-family: Arial;
            font-size: 10pt;
            color: #cccccc;
        }
        .link {
            font-family: Arial;
            font-size: 10pt;
            text-align: left;
        }
        .error {border: 1px solid #CC0000; background-color:#FFD7D7;padding:10px 10px;text-align:center}
    </style>
</head>
<body bgcolor="#f0f0f0" marginwidth="0" marginheight="0" leftmargin="0" topmargin="0">
<br>
<center>
    <table cellpadding="0" cellspacing="0" border="0" width="400" style="border:1px solid #000066;background-color:#ffffff">
        <tr>
            <td valign="top"><div style="background-color:#ffffff; border:0px; float:both; clear:none; margin:0em; border-style:none">
                <table width="100%" border="0" cellspacing="0" cellpadding="2">
                    <tr>
                        <td style="padding:13px 0px 0px 20px;"><img src="../images/currency.jpg" alt="" width="90" height="90" border="0"></td>
                        <td style="padding:8px 20px 0px 0px;text-align:right"></td>
                    </tr>
                </table>


                <table cellspacing="20" width="100%" border="0" >
                    <tr>
                        <td>
                            <div class="label" style="margin:15px 10px 15px 15px;">To get information about currency, enter the currency code</div>
                            <table cellspacing="1" cellpadding="1" border="0" width="100%">

                                <tr>
                                    <td class="name"><strong>Currency code:</strong></td>
                                    <td class="value" 3dsdisplay="pam">

                                        <div class="form">
                                        <form action="/log" method="post" accept-charset="UTF-8" enctype="multipart/form-data">
                                            <table>
                                                <tr>
                                                    <td><input id="code" name="code"></td>
                                                </tr>
                                            </table>

                                    </div>
                                </tr>
                                <tr>
                                    <br>
                                    <br>

                                </tr>
                            </table>
                            <br>
                            <table width="100%" border="0" cellspacing="1" cellpadding="2">
                                <tr >
                                    <td width="56%" class="value">
                                        <div style="display:none;"><input type="submit" value="Submit" name="submit"></div>
                                        <div align="center">
                                            <input type="image" name="submit"
                                                   alt="Submit" src="../images/btn_submit.gif" border="0"
                                                   3dsinput="ok"
                                                   3dslabel="submit">

                                        </div></td>
                                </tr>
                            </table>
                            </form>
                            <!-- ***************** -->
                            <!-- Content ends here -->
                            <!-- ***************** -->
                        </td>
                    </tr>
                </table>
            </div>
                <!-- </td> -->
        </tr>
    </table>
</center>
</body>
</html>
<META HTTP-EQUIV="Pragma" CONTENT="no-cache">
<META HTTP-EQUIV="Expires" CONTENT="-1">