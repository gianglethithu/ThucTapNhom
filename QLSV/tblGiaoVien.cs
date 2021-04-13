namespace QLSV
{
    using System;
    using System.Collections.Generic;
    using System.ComponentModel.DataAnnotations;
    using System.ComponentModel.DataAnnotations.Schema;
    using System.Data.Entity.Spatial;

    [Table("tblGiaoVien")]
    public partial class tblGiaoVien
    {
        [System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Usage", "CA2214:DoNotCallOverridableMethodsInConstructors")]
        public tblGiaoVien()
        {
            tblDiems = new HashSet<tblDiem>();
        }

        public DateTime? ngaytao { get; set; }

        [StringLength(30)]
        public string nguoitao { get; set; }

        public DateTime? ngaycapnhat { get; set; }

        [StringLength(30)]
        public string nguoicapnhat { get; set; }

        [Key]
        public int magiaovien { get; set; }

        [Required]
        [StringLength(10)]
        public string ho { get; set; }

        [StringLength(20)]
        public string tendem { get; set; }

        [Required]
        [StringLength(10)]
        public string ten { get; set; }

        [StringLength(5)]
        public string gioitinh { get; set; }

        [Column(TypeName = "date")]
        public DateTime? ngaysinh { get; set; }

        [StringLength(15)]
        public string dienthoai { get; set; }

        [StringLength(150)]
        public string email { get; set; }

        [StringLength(150)]
        public string diachi { get; set; }

        [System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Usage", "CA2227:CollectionPropertiesShouldBeReadOnly")]
        public virtual ICollection<tblDiem> tblDiems { get; set; }
    }
}
