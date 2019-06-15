using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Data;
using System.Drawing;
using System.Linq;
using System.Text;
using System.Windows.Forms;
using System.Data.SqlClient;
using BUS_QLCP;
using DTO_QLCP;
using QuanLiCaPhe.ReportService;

namespace QuanLiCaPhe
{
    public partial class frmReportHD : Form
    {
        ReportServicesClient rp = new ReportServicesClient();
        CTHoaDonBO cthdBO = new CTHoaDonBO();
        public frmReportHD(string text1,string text2)
        {
            InitializeComponent();
            txtMaOder.Text = text1;
            txtMaBan.Text = text2;
        }

        private void btnXem_Click(object sender, EventArgs e)
        {
            int maod = int.Parse(txtMaOder.Text); ;
            string mahd = cthdBO.layMaHD(maod);
            int i = 0;
            Int32.TryParse(mahd, out i);
            
            Report_HD objRpt = new Report_HD();
            objRpt.SetDataSource(rp.report_HD(i).Tables[1]);
            crystalReportViewer_HD.ReportSource = objRpt;
            crystalReportViewer_HD.Refresh();        
        }

        private void btnThoat_Click(object sender, EventArgs e)
        {
           frmSoDoChinh SoDoChinh=new frmSoDoChinh();         
           SoDoChinh.Show();
           this.Close();
        }
    }
}
