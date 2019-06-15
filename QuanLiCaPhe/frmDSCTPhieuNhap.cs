using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Data;
using System.Drawing;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Windows.Forms;
using QuanLiCaPhe.CTNhapService;

namespace QuanLiCaPhe
{
    public partial class frmDSCTPhieuNhap : Form
    {
        CTNhapServiceClient ctsr = new CTNhapServiceClient();
        public frmDSCTPhieuNhap()
        {
            InitializeComponent();
        }

        private void frmDSCTPhieuNhap_Load(object sender, EventArgs e)
        {
            dataGridView1.DataSource = ctsr.DSCTPN();
        }

        private void button1_Click(object sender, EventArgs e)
        {
            dataGridView1.DataSource = ctsr.search(int.Parse(textBox1.Text));
        }

        private void button2_Click(object sender, EventArgs e)
        {
            dataGridView1.DataSource = ctsr.DSCTPN();
        }


    }
}
