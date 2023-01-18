<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="PositionDetails.aspx.cs" Inherits="Infinite.Test.Dt18.PositionDetails" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <link href="Content/bootstrap.css" rel="stylesheet" />
    <script src="Scripts/jquery.validate.js"></script>   
    <style>
        .container{
            align-items:center;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div class="container">        
        <h1>Create New Position</h1>
        <div class="col-md-2" >
            <label>Position Code</label> 
            </div>
            <div class="col-md-8">
            <asp:TextBox runat="server" ID="TxtPosition" />
            <asp:RequiredFieldValidator ID="RfvPosition" ForeColor="Red" ErrorMessage="Please Enter Position Code" ControlToValidate="TxtPosition" runat="server" />
        </div>
        <div class="col-md-2">
            <label>Description</label>
            </div>
            <div class="col-md-8">
            <asp:TextBox ID="TxtDescription" runat="server" />
            <asp:RequiredFieldValidator ID="RfvDescription" ForeColor="Red" ErrorMessage="Please Enter Description" ControlToValidate="TxtDescription" runat="server" />
        </div>
        <div class="col-md-2">
            <label>Year</label>
            </div>
            <div class="col-md-8">
            <asp:DropDownList ID="DropDownList1" runat="server">
                <asp:ListItem Text="Select" Value="0"></asp:ListItem>
                <asp:ListItem Text="2024" Value="1"></asp:ListItem>
                <asp:ListItem Text="2025" Value="2"></asp:ListItem>
                <asp:ListItem Text="2026" Value="3"></asp:ListItem>
                <asp:ListItem Text="2027" Value="4"></asp:ListItem>
                <asp:ListItem Text="2028" Value="5"></asp:ListItem>
            </asp:DropDownList>
            <asp:RequiredFieldValidator ID="RfvYear" InitialValue="1" ForeColor="Red" ErrorMessage="Please Select Year" ControlToValidate="DropDownList1" runat="server" />
        </div>
        <div class="col-md-2">
            <label>Budgeted Strength</label>
            </div>
            <div class="col-md-8">
            <asp:TextBox ID="TxtBudgetedStrength" runat="server" />
            <asp:RequiredFieldValidator ID="RfvBudget" ForeColor="Red" ErrorMessage="Please Enter Budgeted Strength" ControlToValidate="TxtBudgetedStrength" runat="server" />
        </div>
        <div class="col-md-2">
            <label>Current Strength</label>
            </div>
            <div class="col-md-8">
            <asp:TextBox ID="TxtStrength" runat="server" />
            <asp:RequiredFieldValidator ID="RfvStrength" ForeColor="Red" ErrorMessage="Please Enter Current Strength" ControlToValidate="TxtStrength" runat="server" />
                </div>
        <div class="col-md-8">
            <asp:Button ID="BtnAdd" Text="Add New" runat="server" OnClick="BtnAdd_Click" />
            <asp:Button ID="BtnReset" Text="Reset" runat="server" OnClick="BtnReset_Click"  />
            <asp:Label id="LblMessage" runat="server" />
        </div>
        </div>
    </form>
</body>
</html>
