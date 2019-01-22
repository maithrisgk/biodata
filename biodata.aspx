<html>
<%
    Dim fname, lname, dob, radsex, addr, country, chkhob
    fname = Request.Form("fname")
    lname = Request.Form("lname")
    dob = Request.Form("dob")
    radsex = Request.Form("radsex")
    addr = Request.Form("addr")
    country = Request.Form("country")
    chkhob = Request.Form("chkhob")
    
%>
<head>
<title>
Bio Data Entry
</title>
</head>
<body>
<h1>Enter the following fields</h1>
<form name="Formbiodata" method="post" action="biodata.aspx">
<table width="100%">
<tr>
<td>Frist Name</td>
<td><input type="text" name="fname" /></td>
</tr>
<tr>
<td>Last Name</td>
<td><input type="text" name="lname" /></td>
</tr>
<tr>
<td>Date of Birth</td>
<td><input type="text" name="dob" /></td>
</tr>
<tr>
<td>Sex</td>
<td>
<input type="radio" name="radsex"
<%if radsex="Male" then Response.Write("checked")%>
 value="Male">Male
<input type="radio" name="radsex" 
<%if radsex="Female" then Response.Write("checked")%>
    value="Female">Female
</td>
</tr>
<tr>
<td>Address</td>
<td><textarea name="addr"></textarea></td>
</tr>
<tr>
<td>Place Of Birth</td>
<td><select name="country">
    <option value="Indian" >Indian</option>
    <option value="NonIndian" >Non-Indian</option>
    </select>
</td>
</tr>
<tr>
<td>Hobbies</td>
<td><input type="checkbox" value="music" name="chkhob" />Music
    <input type="checkbox" value="games" name="chkhob" />Games
    <input type="checkbox" value="books" name="chkhob" />Books
</td>
</tr>
<tr>
<td><input type="submit" value="Submit" />
    <input type="reset" value="Reset" />
</td>
</tr>
</table>
</form>

<%
    
    If fname <> "" And lname <> "" And dob <> "" And radsex <> "" And addr <> "" And country <> "" And chkhob <> "" Then
        Response.Write("<center>Your Biodata</center><br/>")
        Response.Write("First Name: " & fname & "!<br />")
        Response.Write("Last Name: " & lname & "!<br />")
        Response.Write("Date Of Birth: " & dob & "!<br />")
        Response.Write("Sex: " & radsex & "!<br />")
        Response.Write("Address: " & addr & "!<br />")
        Response.Write("Country: " & country & "!<br />")
        Response.Write("Hobby: " & chkhob & "!<br />")
    End If
%>
</body>
</html>










