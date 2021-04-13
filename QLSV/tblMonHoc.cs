namespace QLSV
{
    using System;
    using System.Collections.Generic;
    using System.ComponentModel.DataAnnotations;
    using System.ComponentModel.DataAnnotations.Schema;
    using System.Data.Entity.Spatial;

    [Table("tblMonHoc")]
    public partial class tblMonHoc
    {
        [System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Usage", "CA2214:DoNotCallOverridableMethodsInConstructors")]
        public tblMonHoc()
        {
            tblDiems = new HashSet<tblDiem>();
        }

        public DateTime? ngaytao { get; set; }

        [StringLength(30)]
        public string nguoitao { get; set; }

        public DateTime ngaycapnhat { get; set; }

        [StringLength(30)]
        public string nguoicapnhat { get; set; }

        [Key]
        public int mamonhoc { get; set; }

        [Required]
        [StringLength(150)]
        public string tenmonhoc { get; set; }

        public int? sotinchi { get; set; }

        [System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Usage", "CA2227:CollectionPropertiesShouldBeReadOnly")]
        public virtual ICollection<tblDiem> tblDiems { get; set; }
    }
}
