using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Data;
using System.Drawing;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Windows.Forms;
using QuanLiCaPhe.NXNguyenLieuService;

namespace QuanLiCaPhe
{
    public partial class frmDanhSachPN : Form
    {
        NXNguyenLieuServiceClient nxsr = new NXNguyenLieuServiceClient();
        public frmDanhSachPN()
        {
            InitializeComponent();
        }

        private void frmDanhSachPN_Load(object sender, EventArgs e)
        {
            dataGridView1.DataSource = nxsr.LayDSPN();
        }

        private void button1_Click(object sender, EventArgs e)
        {
            dataGridView1.DataSource = nxsr.Search_PN(int.Parse(txtMaPN.Text));
        }

        private void button2_Click(object sender, EventArgs e)
        {
            dataGridView1.DataSource = nxsr.LayDSPN();
        }


    }
}
