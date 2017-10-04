﻿<%@ Page Title="" Language="C#" MasterPageFile="~/Admin/AdminNew.Master" AutoEventWireup="true" CodeBehind="AddBrandCategory.aspx.cs" Inherits="Hidistro.UI.Web.Admin.Goods.AddBrandCategory" %>

<%@ Register TagPrefix="Hi" Namespace="Hidistro.UI.Common.Controls" Assembly="Hidistro.UI.Common.Controls" %>
<%@ Register TagPrefix="Hi" Namespace="Hidistro.UI.ControlPanel.Utility" Assembly="Hidistro.UI.ControlPanel.Utility" %>
<%@ Register src="~/hieditor/ueditor/controls/ucUeditor.ascx" tagname="KindeditorControl" tagprefix="Kindeditor" %>
<%@ Register TagPrefix="UI" Namespace="ASPNET.WebControls" Assembly="ASPNET.WebControls" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        #ctl00_ContentPlaceHolder1_chlistProductTypes label{margin-right: 5px;}
        #ctl00_ContentPlaceHolder1_chlistProductTypes input[type='checkbox']{margin-right: 2px;}
        
    </style>
    <script type="text/javascript" language="javascript">
  
        $(function () {
            $('#aspnetForm').formvalidation({

                'ctl00$ContentPlaceHolder1$txtBrandName': {
                    validators: {
                        notEmpty: {
                            message: "品牌名称不能为空"
                        },
                        stringLength: {
                            min: 1,
                            max: 30,
                            message: '至少输入1个且不能超过30个字符'
                        }
                    }
                } 
            })
        })
    </script>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="page-header">
        <h2>添加品牌分类</h2>
        <small>管理商品所属的各个品牌，如果在上架商品时给商品指定了品牌分类，则商品可以按品牌分类浏览</small>
    </div>

    <form runat="server">
        <div class="form-horizontal">
            <div class="form-group">
                <label for="inputEmail3" class="col-xs-2 control-label"><em>*</em>品牌名称</label>
                <div class="col-xs-3">

                    <asp:TextBox ID="txtBrandName" CssClass="form-control" runat="server" />
                </div>
            </div>
            <div class="form-group">
                <label for="inputPassword3" class="col-xs-2 control-label"><em>*</em>品牌Logo</label>
                <div class="col-xs-6">
                    <Hi:UpImg runat="server" ID="uploader1" IsNeedThumbnail="false" UploadType="brand"  />
                    <label style="color:#808080;font-size:12px;">建议尺寸：650 x 200 像素，小于300KB，支持.jpg、.gif、.png格式</label> 
                </div>
            </div>
            <div class="form-group">
                <label for="inputEmail3" class="col-xs-2 control-label">品牌官方地址</label>
                <div class="col-xs-6">
                    <asp:TextBox ID="txtCompanyUrl" CssClass="form-control" runat="server" MaxLength="100" />
                    <label style="color:#808080;font-size:12px;">品牌官方网站的网址必须以http://开头，长度限制在100个字符以内</label> 
                </div>
            </div>
            <div class="form-group" style="display: none">
                <label for="inputEmail3" class="col-xs-2 control-label">URL重写名称</label>
                <div class="col-xs-3">

                    <asp:TextBox ID="txtReUrl" CssClass="form-control" runat="server" />
                </div>
            </div>
            <div class="form-group">
                <label for="inputEmail3" class="col-xs-2 control-label">搜索关键字</label>
                <div class="col-xs-3">

                    <asp:TextBox ID="txtkeyword" CssClass="form-control" runat="server" />
                </div>
            </div>
            <div class="form-group">
                <label for="inputEmail3" class="col-xs-2 control-label">关键字描述</label>
                <div class="col-xs-3">

                    <asp:TextBox ID="txtMetaDescription" CssClass="form-control" runat="server" />
                </div>
            </div>
            <div class="form-group">
                <label for="inputEmail3" class="col-xs-2 control-label"><em>*</em>品牌介绍</label>
                <div class="col-xs-3">

                    <Kindeditor:KindeditorControl ID="fckDescription" runat="server" Height="300" />
                </div>
            </div>
            <div class="form-group">
                <label for="inputEmail3" class="col-xs-2 control-label">关联商品类型</label>
                <div class="col-xs-5">
                    <Hi:ProductTypesCheckBoxList runat="server" ID="chlistProductTypes" CellPadding="3" />
                </div>
            </div>
            <div class="form-group">
                <div class="col-xs-offset-3 col-xs-10">

                    <asp:Button ID="btnSave" Text="保 存" CssClass="btn btn-primary" runat="server" />
                    <asp:Button ID="btnAddBrandCategory" Text="保存并继续添加" CssClass="btn btn-primary" Visible="false" runat="server" />
                </div>
            </div>
        </div>
    
    </form>
</asp:Content>
