<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="filterVendorArchive.aspx.cs" Inherits="DeleteTaskU8.view.filterForm.filterVendorArchive" %>

<!DOCTYPE html>
<script runat="server">

</script>


<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    
    <title></title>
    <style>
       #form1 {
            position: absolute; /*绝对定位,相对于显示器*/
            width: 660px;
            height: 100px;
            text-align: center; /*(让div中的内容居中)*/
            /*top: 50%;*/
            left: 50%;
            margin-top: 50px;
            margin-left: -330px;
        }
       .divToolTrip{
           margin:20px;
           position:relative;
           left:10px;
       }
    </style>
</head>
<body>
    
    <form id="form1" runat="server">
        
        <div class="divToolTrip">
        <asp:Button ID="btnConfirm" runat="server" Text="确定" OnClick="btnConfirm_Click" />
    </div>
        <div class="divContent">
            
            <asp:GridView id="gdvVendor"  runat="server" 
                allowpaging="True"  
                AutoGenerateColumns="False" CellPadding="4" ForeColor="#333333" GridLines="None" Width="655px" 
                OnSelectedIndexChanged="gdvVendor_SelectedIndexChanged" >
            
                <AlternatingRowStyle BackColor="White" ForeColor="#284775" />
                <Columns>
                    <asp:CheckBoxField HeaderText="选择"  />
                    <asp:BoundField DataField="cvencode" HeaderText="供应商编码" />
                    <asp:BoundField DataField="cvenName" HeaderText="供应商名称" />
                    <asp:ButtonField ButtonType="Button" Text="选择" CommandName="select"   />
                    <asp:TemplateField HeaderText="选择" >
                    <ItemTemplate>
                        
                        <asp:CheckBox ID="CheckBoxSelectTask" runat="server" />

                    </ItemTemplate> 
                        </asp:TemplateField>
                </Columns>
                <EditRowStyle BackColor="#999999" />
                <FooterStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White" />
                <HeaderStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White" />
                <PagerStyle BackColor="#284775" ForeColor="White" HorizontalAlign="Center" />
                <RowStyle BackColor="#F7F6F3" ForeColor="#333333" />
                <SelectedRowStyle BackColor="#E2DED6" Font-Bold="True" ForeColor="#333333" />
                <SortedAscendingCellStyle BackColor="#E9E7E2" />
                <SortedAscendingHeaderStyle BackColor="#506C8C" />
                <SortedDescendingCellStyle BackColor="#FFFDF8" />
                <SortedDescendingHeaderStyle BackColor="#6F8DAE" />
            </asp:GridView>
            
        </div>
        <asp:SqlDataSource ID="SqlDataSource1" runat="server"></asp:SqlDataSource>
    </form>
</body>
</html>
