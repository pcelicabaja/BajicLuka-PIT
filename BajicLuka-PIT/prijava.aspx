<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="prijava.aspx.cs" Inherits="BajicLuka_PIT.prijava" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <h1>PRIJAVA</h1>

         Ime i Prezime: 
         <asp:TextBox ID="txtImeiPrezime"
             ValidationGroup="Group1"
             runat="server"></asp:TextBox>
         <asp:RequiredFieldValidator ID="txtImeiPrezimeValidator"
             ErrorMessage="Ime i prezime je obavezno!"
             ControlToValidate="txtImeiPrezime"
             Display="Static"
             ForeColor="Red"
             SetFocusOnError="True"
             ValidationGroup="Group1"
             EnableClientScript="False"
             runat="server"></asp:RequiredFieldValidator>
         <br />
 
         Email: 
         <asp:TextBox ID="txtEmail"
             ValidationGroup="Group1"
             runat="server"></asp:TextBox>
         <asp:RequiredFieldValidator ID="txtEmailValidator"
             ErrorMessage="Email je obavezan!"
             ControlToValidate="txtEmail"
             Display="Static"
             ForeColor="Red"
             SetFocusOnError="True"
             ValidationGroup="Group1"
             EnableClientScript="False"
             runat="server"></asp:RequiredFieldValidator>
         <asp:RegularExpressionValidator ID="txtEmailExpression"
             ErrorMessage="Email nije u ispravnom formatu"
             ControlToValidate="txtEmail"                
             ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*"
             Display="Static"
             ForeColor="Red"
             SetFocusOnError="True"
             ValidationGroup="Group1"
             EnableClientScript="False"
             runat="server"></asp:RegularExpressionValidator>
         <br />
 
             Potvrdi Email:
            <asp:TextBox ID="txtConfirm"
             ValidationGroup="Group1"
             runat="server"></asp:TextBox>
         <asp:RequiredFieldValidator ID="txtConfirmValidator"
             ErrorMessage="Obavezno je ponovno ukucati Email!"
             ControlToValidate="txtConfirm"
             Display="Static"
             ForeColor="Red"
             SetFocusOnError="True"
             ValidationGroup="Group1"
             EnableClientScript="False"
             runat="server"></asp:RequiredFieldValidator>
         <asp:CompareValidator
             ID="PorediEmailValidator"
             ErrorMessage="Email adrese se ne poklapaju"
             ControlToCompare="txtConfirm"
             ControlToValidate="txtEmail"
             Display="Static"
             ForeColor="Red"
             SetFocusOnError="True"
             ValidationGroup="Group1"
             EnableClientScript="False"
             runat="server" ></asp:CompareValidator>
         <br />

 
       
         Godina rođenja: 
         <asp:TextBox ID="txtAge"
             ValidationGroup="Group1"
             runat="server"></asp:TextBox>
         <asp:RequiredFieldValidator ID="txtAgeValidator"
             ErrorMessage="Obavezno je uneti broj godina!"
             ControlToValidate="txtAge"
             Display="Static"
             ForeColor="Red"
             SetFocusOnError="True"
             ValidationGroup="Group1"
             EnableClientScript="False"
             runat="server"></asp:RequiredFieldValidator>
         <asp:RangeValidator ID="GodineValidator"
             ErrorMessage="Nedozvoljen broj godina!"
             ControlToValidate="txtAge"
             Display="Static"
             ForeColor="Red"
             SetFocusOnError="True"
             ValidationGroup="Group1"
             EnableClientScript="False"
             MinimumValue="2003"
             MaximumValue="2010"
             Type="Integer"
             runat="server"></asp:RangeValidator>
         <br />
         Razred:
         <asp:RadioButtonList ID="rblRazred"
             ValidationGroup="Group1"
             runat="server" >   
             <asp:ListItem Text="I" Value="1"></asp:ListItem> 
             <asp:ListItem Text="II" Value="2"></asp:ListItem>
             <asp:ListItem Text="III" Value="3"></asp:ListItem>
             <asp:ListItem Text="IV" Value="4"></asp:ListItem>
         </asp:RadioButtonList>
        <asp:RequiredFieldValidator ID="rblRazredValidator"
            runat="server"  
            ErrorMessage="Mora se odabrati razred!"
             ControlToValidate="rblRazred"
             Display="Static"
             ForeColor="Red"
             SetFocusOnError="True"
             ValidationGroup="Group1"
             EnableClientScript="False"></asp:RequiredFieldValidator>
    
         <br />
     
         <asp:Button ID="btnSubmit" 
             ValidationGroup="Group1"
             CausesValidation="true"
             OnClick="btnSubmit_Click"
             Text="POSALJI"
             runat="server" />
         <br />      

         <asp:Label ID="lblPoruka"
             runat="server"></asp:Label>
        </div>
    </form>
</body>
</html>
