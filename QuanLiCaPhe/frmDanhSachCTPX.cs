using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Data;
using System.Drawing;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Windows.Forms;
using System.Data;
using QuanLiCaPhe.CTXuatService;

namespace QuanLiCaPhe
{
    public partial class frmDanhSachCTPX : Form
    {
        CTXuatServiceClient ctsr = new CTXuatServiceClient();
        public frmDanhSachCTPX()
        {
            InitializeComponent();
        }

        private void button1_Click(object sender, EventArgs e)
        {
            dataGridView1.DataSource = ctsr.Search(int.Parse(textBox1.Text));
        }

        private void frmDanhSachCTPX_Load(object sender, EventArgs e)
        {
            dataGridView1.DataSource = ctsr.DSCTPX();
        }

        private void button2_Click(object sender, EventArgs e)
        {
            dataGridView1.DataSource = ctsr.DSCTPX();
        }


    }
}
