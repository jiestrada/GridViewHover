<%@ Page Language="VB" AutoEventWireup="false" CodeFile="Default.aspx.vb" Inherits="GridHover_Default" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <title></title>
    <script type="text/javascript" src="http://ajax.googleapis.com/ajax/libs/jquery/1.7.2/jquery.min.js"></script>
    <style type="text/css">
        body {
            font-family: Arial;
            font-size: 10pt;
        }

        td {
            cursor: pointer;
        }

        .hover_row {
            background-color: #A1DCF2;
        }
    </style>

    <script type="text/javascript">
        $(function () {
            $("[id*=GridView1] td").hover(function () {
                $("td", $(this).closest("tr")).addClass("hover_row");
            }, function () {
                $("td", $(this).closest("tr")).removeClass("hover_row");
            });
        });
    </script>

</head>
<body>
    <form id="form1" runat="server">
        <div>

            <asp:GridView ID="GridView1" HeaderStyle-BackColor="#3AC0F2" HeaderStyle-ForeColor="White"
                runat="server" AutoGenerateColumns="false">
                <Columns>
                    <asp:BoundField DataField="Name" HeaderText="Nombre" ItemStyle-Width="150" />
                    <asp:BoundField DataField="Country" HeaderText="Pais" ItemStyle-Width="150" />
                    <asp:BoundField DataField="Mensaje" HeaderText="Mensaje" ItemStyle-Width="150" />
                </Columns>
            </asp:GridView>

        </div>
    </form>
</body>
</html>
