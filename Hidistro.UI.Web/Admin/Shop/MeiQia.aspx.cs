﻿using Hidistro.Core;
using Hidistro.Core.Entities;
using Hidistro.UI.ControlPanel.Utility;
using System;
using System.Web.UI.HtmlControls;
using System.Web.UI.WebControls;

namespace Hidistro.UI.Web.Admin.Shop
{
    public partial class MeiQia : AdminPage
    {
      
        protected bool enable;
        private SiteSettings siteSettings;
     

        protected MeiQia() : base("m01", "dpp05")
        {
            this.siteSettings = SettingsManager.GetMasterSettings(false);
        }

        protected void btnSave_Click(object sender, EventArgs e)
        {
            this.siteSettings.MeiQiaEntId = this.txtKey.Text.Trim();
            SettingsManager.Save(this.siteSettings);
            this.ShowMsg("修改成功！", true);
        }

        protected void Page_Load(object sender, EventArgs e)
        {
            this.enable = this.siteSettings.EnableSaleService;
            if (!base.IsPostBack)
            {
                this.txtKey.Text = this.siteSettings.MeiQiaEntId;
            }
        }
    }
}