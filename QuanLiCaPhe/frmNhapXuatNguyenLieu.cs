using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Data;
using System.Drawing;
using System.Linq;
using System.Text;
using System.Windows.Forms;
using BUS_QLCP;
using DTO_QLCP;
using QuanLiCaPhe.NhanVienService;
using QuanLiCaPhe.NXNguyenLieuService;

namespace QuanLiCaPhe
{

    public partial class frmNhapXuatNguyenLieu : Form
    {
        NXNguyenLieuServiceClient nxnlsr = new NXNguyenLieuServiceClient();
        NhanVienServiceClient nvsr = new NhanVienServiceClient();
        public frmNhapXuatNguyenLieu()
        {
            InitializeComponent();
        }
        private NXNguyenLieu getDataPN()
        {
            NXNguyenLieu nxnl = new NXNguyenLieu();
            nxnl.MaPhieuNhap = int.Parse(txtMaPhieuNhap.Text);
            nxnl.NgayNhap = Convert.ToDateTime(dtNgayNhap.Value.ToShortDateString());
            nxnl.TongTien = 0;
            nxnl.MaNV = cbbnv.SelectedValue.ToString();
            return nxnl;
        }

        private NXNguyenLieu getDataPX()
        {
            NXNguyenLieu nxnl = new NXNguyenLieu();
            nxnl.MaPhieuXuat = int.Parse(txtMaPhieuXuat.Text);
            nxnl.NgayXuat = Convert.ToDateTime(dtNgayXuat.Value.ToShortDateString());
            nxnl.MaNV = cbbnv.SelectedValue.ToString();
            return nxnl;
        }

        private void cbHinhThuc_SelectedIndexChanged(object sender, EventArgs e)
        {
            int i = 0;
            if (cbHinhThuc.Text == "Nhập Nguyên Liệu")
            {
                gbNhapNL.Visible = true;
                gbXuatNL.Visible = false;
                //i = nxnlsr.layMaPhieuNhap();
                //i++;
                //txtMaPhieuNhap.Text = i.ToString();
            }
            else
                if(cbHinhThuc.Text=="Xuất Nguyên Liệu")
                {
                    gbNhapNL.Visible = false;
                    gbXuatNL.Visible = true;
                    //i = nxnlsr.layMaPhieuXuat();
                    //i++;
                    //txtMaPhieuXuat.Text = i.ToString(); 
                }
        }

        private void btnXoa_Click(object sender, EventArgs e)
        {
            if (gbNhapNL.Visible == true)
            {
                dtNgayNhap.Value = DateTime.Today;
                txtMaPhieuNhap.Text = "";
            }
            else
                if (gbXuatNL.Visible == true)
                {
                    txtMaPhieuXuat.Text = "";
                    dtNgayXuat.Value = DateTime.Today;
                }
           
        }

        private void btnThoat_Click(object sender, EventArgs e)
        {
            this.Close();
            frmFormMenu frmMenu;
            frmMenu = new frmFormMenu();
            frmMenu.Show();
        }

        private void btnNhapChiTiet_Click(object sender, EventArgs e)
        {
            if (cbHinhThuc.Text == "Nhập Nguyên Liệu")
            {
                NXNguyenLieu nx = getDataPN();
                if (nxnlsr.NhapNL(nx))
                {
                    frmCTNhapNL FromCTNhap;
                    FromCTNhap = new frmCTNhapNL(txtMaPhieuNhap.Text);
                    FromCTNhap.Show();
                    this.Close();
                }
                else
                    MessageBox.Show("Lỗi xảy ra!");
            }
            else 
                if(cbHinhThuc.Text=="Xuất Nguyên Liệu")
                {
                    NXNguyenLieu nx = getDataPX();
                    if(nxnlsr.XuatNL(nx))
                    {
                        frmCTXuatNL FromCTXuat;
                        FromCTXuat = new frmCTXuatNL(txtMaPhieuXuat.Text);
                        FromCTXuat.Show();
                        this.Close();
                    }
                    else 
                    MessageBox .Show ("Lỗi xảy ra!");
                }
        }

        private void frmNhapXuatNguyenLieu_Load(object sender, EventArgs e)
        {
            cbbnv.DataSource = nvsr.getDSNV();
            cbbnv.DisplayMember = "TenNV";
            cbbnv.ValueMember = "MaNV";
        }

        private void button1_Click(object sender, EventArgs e)
        {
            frmDanhSachPN dspn = new frmDanhSachPN();
            dspn.Show();
        }

        private void button2_Click(object sender, EventArgs e)
        {
            frmDanhSachPX px = new frmDanhSachPX();
            px.Show();
        }
    }
}
