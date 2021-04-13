namespace QLSV
{
    using System;
    using System.Collections.Generic;
    using System.ComponentModel.DataAnnotations;
    using System.ComponentModel.DataAnnotations.Schema;
    using System.Data.Entity.Spatial;

    [Table("tblDiem")]
    public partial class tblDiem
    {
        public DateTime? ngaytao { get; set; }

        [StringLength(30)]
        public string nguoitao { get; set; }

        public DateTime? ngaycapnhat { get; set; }

        [StringLength(30)]
        public string nguoicapnhat { get; set; }

        [Key]
        [Column(Order = 0)]
        public int mamonhoc { get; set; }

        [Key]
        [Column(Order = 1)]
        [DatabaseGenerated(DatabaseGeneratedOption.None)]
        public int magiaovien { get; set; }

        [Key]
        [Column(Order = 2)]
        [StringLength(20)]
        public string masinhvien { get; set; }

        [Key]
        [Column(Order = 3)]
        [DatabaseGenerated(DatabaseGeneratedOption.None)]
        public int lanhoc { get; set; }

        public double? diemthilan1 { get; set; }

        public double? diemthilan2 { get; set; }

        public virtual tblGiaoVien tblGiaoVien { get; set; }

        public virtual tblMonHoc tblMonHoc { get; set; }

        public virtual tblSinhVien tblSinhVien { get; set; }
    }
}
