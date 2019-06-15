﻿using System;
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
    public partial class frmDanhSachPX : Form
    {
        NXNguyenLieuServiceClient nxsr = new NXNguyenLieuServiceClient();
        public frmDanhSachPX()
        {
            InitializeComponent();
        }

        private void frmDanhSachPX_Load(object sender, EventArgs e)
        {
            dataGridView1.DataSource = nxsr.LayDSPX();
        }

        private void button1_Click(object sender, EventArgs e)
        {
            dataGridView1.DataSource = nxsr.Search_PX(int.Parse(textBox1.Text));
        }

        private void button2_Click(object sender, EventArgs e)
        {
            dataGridView1.DataSource = nxsr.LayDSPX();
        }


    }
}
