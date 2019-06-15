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

    public partial class frmReport_BanSDNhieu : Form
    {
        ReportServicesClient rpsrv = new ReportServicesClient();
        public frmReport_BanSDNhieu()
        {
            InitializeComponent();
        }

        private void btnThoat_Click(object sender, EventArgs e)
        {
            this.Close();
            frmBaoCao BaoCao = new frmBaoCao();
            BaoCao.Show();
        }

        private void button1_Click(object sender, EventArgs e)
        {
            if (txtSoLuong.Text == "")
                MessageBox.Show("Vui lòng nhập số lượng bàn bạn muốn xem");
            else
            {
                int i=int.Parse(txtSoLuong.Text);
                
                Report_BanSDNhieu objRpt = new Report_BanSDNhieu();
                objRpt.SetDataSource(rpsrv.report_BSDN(i).Tables[1]);
                crystalReportViewer_BanSDNhieu.ReportSource = objRpt;
            }
        }
    }
}
