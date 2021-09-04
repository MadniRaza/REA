<%@ Page Title="" Language="C#" MasterPageFile="~/Staff/Staff.master" AutoEventWireup="true"
    CodeFile="frm_Faqs_Staff.aspx.cs" Inherits="Staff_frm_Faqs_Staff" %>

<asp:Content ID="Content1" ContentPlaceHolderID="MainContent_Staff" runat="Server">
    <div class="module">
        <div class="module-head">
            <h3>
                FAQ's
            </h3>
        </div>
        <div class="module-body">
            <div id="divmsg" runat="server">
                <button type="button" class="close" data-dismiss="alert">
                    &times;</button>
                <strong>
                    <asp:Label ID="lblMsg" runat="server"></asp:Label></strong>
            </div>
            <div class="stream-list">
                <div class="media stream new-update">
                    <%--<a href="#"><i class="icon-refresh shaded"></i>11 updates </a>--%>
                </div>
                 <div class="media stream">
                    <asp:Repeater ID="rpt_Parent" runat="server">
                        <ItemTemplate>
                            <a href="#" class="media-avatar medium pull-left">
                                <img src="../images/Faqs.png">
                            </a>
                            <div class="media-body">
                                <asp:Label ID="lbl_F_PID" runat="server" Text='<%# DataBinder.Eval(Container.DataItem, "f_id") %>'
                                    Visible="false"></asp:Label>
                                <div class="stream-headline">
                                    <h5 class="stream-author">
                                        <%#Eval("f_description")%>
                                    </h5>
                                    <div class="stream-text">
                                        <%#Eval("f_description")%>
                                    </div>
                                </div>
                                <!--/.stream-headline-->
                                <div class="stream-options">
                                
                                    <asp:LinkButton ID="lnkBtn_DeleteParent" ToolTip="Edit" 
                                        runat="server" Text='<i class="icon-trash"> Like</i>' CssClass="btn btn-small"></asp:LinkButton>
                                </div>
                                <div class="stream-respond">
                                    <asp:Repeater ID="rpt_Child" runat="server">
                                        <ItemTemplate>
                                            <div class="media stream">
                                                <a href="#" class="media-avatar small pull-left">
                                                    <img src="../images/Faqs.png">
                                                </a>
                                                <div class="media-body">
                                                    <asp:Label ID="lbl_F_CID" runat="server" Text='<%# DataBinder.Eval(Container.DataItem, "f_id") %>'
                                                        Visible="false"></asp:Label>
                                                    <div class="stream-headline">
                                                        <h5 class="stream-author">
                                                            <%#Eval("f_description")%>
                                                        </h5>
                                                        <div class="stream-text">
                                                            <%#Eval("f_description")%>
                                                        </div>
                                                    </div>
                                                    <!--/.stream-headline-->
                                                    <div class="stream-options">
                                                        
                                                        <asp:LinkButton ID="lnkBtn_DeleteChild" ToolTip="Edit" 
                                                            runat="server" Text='<i class="icon-trash"> Like</i>' CssClass="btn btn-small"></asp:LinkButton>
                                                    </div>
                                                </div>
                                            </div>
                                        </ItemTemplate>
                                    </asp:Repeater>
                                    <!--/.media .stream-->
                                </div>
                                <!--/.stream-respond-->
                            </div>
                        </ItemTemplate>
                    </asp:Repeater>
                </div>
                <!--/.media .stream-->
                <div class="media stream load-more">
<%--                    <a href="#"><i class="icon-refresh shaded"></i>show more... </a>--%>
                </div>
            </div>
            <!--/.stream-list-->
        </div>
        <!--/.module-body-->
    </div>
    <!--/.module-->
</asp:Content>
