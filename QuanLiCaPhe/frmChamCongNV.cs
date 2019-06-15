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
using QuanLiCaPhe.ChamCongNVService;
using QuanLiCaPhe.NhanVienService;
using QuanLiCaPhe.BangLuongService;


namespace QuanLiCaPhe
{
    public partial class frmChamCongNV : Form
    {
        ChamCongNVServiceClient ccsr = new ChamCongNVServiceClient();
        //ChamCongNVBO ccBO = new ChamCongNVBO();
        NhanVienServiceClient nvsr = new NhanVienServiceClient();
        //NhanVienBO nvBO = new NhanVienBO();
        BangLuongServiceClient blsr = new BangLuongServiceClient();
        //BangLuongBO blBO = new BangLuongBO();
        public frmChamCongNV()
        {
            InitializeComponent();
        }

        private void frmChamCongNV_Load(object sender, EventArgs e)
        {
            DataTable tableNV = new DataTable();
            cbCaLam.Items.Add("Ca Sáng");
            cbCaLam.Items.Add("Ca Chiều");
            tableNV = nvsr.getDSNV();
            cbMaNV.DataSource = tableNV;
            cbMaNV.DisplayMember = "MaNV";
            cbMaNV.ValueMember = "MaNV";
            cbMaNV.SelectedIndex = 0;
            cbCaLam.SelectedIndex = 0;
            DataTable tableCCNV =new DataTable ();
            tableCCNV = ccsr.getDSCCNV();
            dgChamCongNV.DataSource = tableCCNV;
            binData();
        }

        private ChamCongNV getCCNV()
        {
            ChamCongNV ccnv = new ChamCongNV();
            float i = 0;
            if (txtGioTru.Text == "")
                ccnv.SoGioLam = 0;
            else
            {
                i = float.Parse(txtGioTru.Text);
                ccnv.SoGioLam = 8 - i;
            }
            ccnv.CaLam = cbCaLam.Text;
            ccnv.MaNV = cbMaNV.SelectedValue.ToString();
            ccnv.NgayLam = Convert.ToDateTime(dtNgay.Value.ToShortDateString());
            ccnv.TenNV = txtTenNV.Text;
            return ccnv;
        }

        private BangLuong getBangLuong()
        {
            BangLuong bl = new BangLuong();
            int thang = dtNgay.Value.Month;
            bl.Thang = thang;
            bl.MaNV = cbMaNV.SelectedValue.ToString();
            bl.TenNV = txtTenNV.Text;
            float mucluong = 0;
            string chucvu = blsr.layChucVu(cbMaNV.SelectedValue.ToString());
            if (chucvu == "Quản Lý")
                mucluong  = 12000;
            if (chucvu == "Phục Vụ"||chucvu=="Giữ Xe")
                mucluong  = 7000;
            if (chucvu == "Thu Ngân"||chucvu=="Pha Chế")
                mucluong  = 10000;
            if (chucvu == "Tạp Vụ")
                mucluong = 8000;
            bl.MucLuong = (float)mucluong;
            float tienluong =0;
            tienluong =bl.TongGioLam;
            bl.TienLuong = tienluong;
            return bl;
        }

        public void clearBind()
        {
            //txtTenNV.DataBindings.Clear();
            dgChamCongNV.DataBindings.Clear();
        }

        public void binData()
        {
            BindingSource bindSourceNV = new BindingSource();
            bindSourceNV.DataSource = ccsr.getDSCCNV();
            clearBind();
            //txtTenNV.DataBindings.Add("Text", bindSourceNV, "TenNV");
            dgChamCongNV.DataSource = bindSourceNV;

        }

        private void btnThem_Click(object sender, EventArgs e)
        {
            txtTenNV.Text = "";
            txtGioTru.Text = "";
            dtNgay.Value = DateTime.Today;
        }

        private void cbMaNV_SelectedIndexChanged(object sender, EventArgs e)
        {
            txtTenNV.Text = ccsr.getTenNV(cbMaNV.SelectedValue.ToString());
        }

        private void btnLuu_Click(object sender, EventArgs e)
        {
            ChamCongNV ccnv = getCCNV();
            BangLuong bl=getBangLuong();
            ccnv.CaLam = cbCaLam.Text;
            int thang = dtNgay.Value.Month;
            DateTime ngaylam = Convert.ToDateTime(dtNgay.Value.ToShortDateString());
            string calam = cbCaLam.Text;
            string manv=cbMaNV.SelectedValue.ToString();
            if (ccsr.kiemtraCCNV(manv,ngaylam,calam))
            {
                if (ccsr.SuaCC(ccnv))
                {
                    float soGioLamDaCham=0;
                    float.TryParse(txtSoGioLam.Text, out soGioLamDaCham);
                    float tgl=0;
                    string tggiolam = blsr.layGioLam(bl.MaNV,bl.Thang);
                    float.TryParse(tggiolam, out tgl);
                    string sogiotru = txtGioTru.Text;
                    float giotru=0;
                    float.TryParse(sogiotru, out giotru);
                    float sogiolamdung = 8 - giotru;
                    float giolam = (tgl + sogiolamdung) - soGioLamDaCham;
                    bl.TongGioLam = giolam;
                    bl.TienLuong = bl.TongGioLam * bl.MucLuong;
                    blsr.SuaBangLuong(bl);
                    MessageBox.Show("Sửa thành công");
                }
                else
                    MessageBox.Show("Không thể sửa");
            }
            else
            {
                if (ccsr.ThemCC(ccnv))
                {
                    if (blsr.kiemTraBangLuong(thang, manv) == false)
                        blsr.ThemBangLuong(bl);
                    float giotru = 0;
                    string sogiotru = txtGioTru.Text;
                    float.TryParse(sogiotru, out giotru);
                    float sogiolamdung = 8 - giotru;
                    float tgl = 0;
                    string tggiolam = blsr.layGioLam(bl.MaNV, bl.Thang);
                    float.TryParse(tggiolam, out tgl);
                    float giolam = tgl + sogiolamdung;
                    bl.TongGioLam = giolam;
                    bl.TienLuong = bl.TongGioLam * bl.MucLuong;
                    blsr.SuaBangLuong(bl);
                    MessageBox.Show("Thêm thành công");
                }
                else
                    MessageBox.Show("Không thể thêm");
            }
            binData();
        }

        private void btnXoa_Click(object sender, EventArgs e)
        {
            ChamCongNV ccnv = getCCNV();
            BangLuong bl = getBangLuong();
            if (MessageBox.Show("Bạn có muốn xóa không?", "Xác nhận", MessageBoxButtons.OKCancel, MessageBoxIcon.Question) == DialogResult.OK)
            {
                if (ccsr.XoaCC(ccnv))
                {
                    float soGioLamDaCham = 0;
                    float.TryParse(txtSoGioLam.Text, out soGioLamDaCham);
                    float tgl = 0;
                    string tggiolam = blsr.layGioLam(bl.MaNV, bl.Thang);
                    float.TryParse(tggiolam, out tgl);
                    float giolam = tgl - soGioLamDaCham;
                    bl.TongGioLam = giolam;
                    bl.TienLuong = bl.TongGioLam * bl.MucLuong;
                    blsr.SuaBangLuong(bl);
                    MessageBox.Show("Xóa thành công");
                }
                else
                    MessageBox.Show("Không thể xóa");
                binData();
            }
        }

        private void dgChamCongNV_RowEnter(object sender, DataGridViewCellEventArgs e)
        {
            int rowSelect = e.RowIndex;
            cbMaNV.Text = dgChamCongNV.Rows[rowSelect].Cells[0].Value.ToString();
            txtTenNV.Text = dgChamCongNV.Rows[rowSelect].Cells[1].Value.ToString();
            cbCaLam.Text = dgChamCongNV.Rows[rowSelect].Cells[2].Value.ToString();
            dtNgay.Value = Convert.ToDateTime(dgChamCongNV.Rows[rowSelect].Cells[3].Value);
            txtSoGioLam.Text=dgChamCongNV.Rows[rowSelect].Cells[4].Value.ToString();
        }

        private void btnHuy_Click(object sender, EventArgs e)
        {
            this.Close();
            frmFormMenu FromMenu = new frmFormMenu();
            FromMenu.Show();
        }
    }
}
