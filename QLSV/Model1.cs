namespace QLSV
{
    using System;
    using System.Data.Entity;
    using System.ComponentModel.DataAnnotations.Schema;
    using System.Linq;

    public partial class Model1 : DbContext
    {
        public Model1()
            : base("name=QLSV")
        {
        }

        public virtual DbSet<sysdiagram> sysdiagrams { get; set; }
        public virtual DbSet<TaiKhoan> TaiKhoans { get; set; }
        public virtual DbSet<tblDiem> tblDiems { get; set; }
        public virtual DbSet<tblGiaoVien> tblGiaoViens { get; set; }
        public virtual DbSet<tblMonHoc> tblMonHocs { get; set; }
        public virtual DbSet<tblSinhVien> tblSinhViens { get; set; }

        protected override void OnModelCreating(DbModelBuilder modelBuilder)
        {
            modelBuilder.Entity<TaiKhoan>()
                .Property(e => e.tentaikhoan)
                .IsUnicode(false);

            modelBuilder.Entity<TaiKhoan>()
                .Property(e => e.matkhau)
                .IsUnicode(false);

            modelBuilder.Entity<tblDiem>()
                .Property(e => e.nguoitao)
                .IsUnicode(false);

            modelBuilder.Entity<tblDiem>()
                .Property(e => e.nguoicapnhat)
                .IsUnicode(false);

            modelBuilder.Entity<tblDiem>()
                .Property(e => e.masinhvien)
                .IsUnicode(false);

            modelBuilder.Entity<tblGiaoVien>()
                .Property(e => e.nguoitao)
                .IsUnicode(false);

            modelBuilder.Entity<tblGiaoVien>()
                .Property(e => e.nguoicapnhat)
                .IsUnicode(false);

            modelBuilder.Entity<tblGiaoVien>()
                .Property(e => e.dienthoai)
                .IsUnicode(false);

            modelBuilder.Entity<tblGiaoVien>()
                .Property(e => e.email)
                .IsUnicode(false);

            modelBuilder.Entity<tblGiaoVien>()
                .HasMany(e => e.tblDiems)
                .WithRequired(e => e.tblGiaoVien)
                .WillCascadeOnDelete(false);

            modelBuilder.Entity<tblMonHoc>()
                .Property(e => e.nguoitao)
                .IsUnicode(false);

            modelBuilder.Entity<tblMonHoc>()
                .Property(e => e.nguoicapnhat)
                .IsUnicode(false);

            modelBuilder.Entity<tblMonHoc>()
                .HasMany(e => e.tblDiems)
                .WithRequired(e => e.tblMonHoc)
                .WillCascadeOnDelete(false);

            modelBuilder.Entity<tblSinhVien>()
                .Property(e => e.nguoitao)
                .IsUnicode(false);

            modelBuilder.Entity<tblSinhVien>()
                .Property(e => e.nguoicapnhat)
                .IsUnicode(false);

            modelBuilder.Entity<tblSinhVien>()
                .Property(e => e.masinhvien)
                .IsUnicode(false);

            modelBuilder.Entity<tblSinhVien>()
                .Property(e => e.dienthoai)
                .IsUnicode(false);

            modelBuilder.Entity<tblSinhVien>()
                .Property(e => e.email)
                .IsUnicode(false);

            modelBuilder.Entity<tblSinhVien>()
                .HasMany(e => e.tblDiems)
                .WithRequired(e => e.tblSinhVien)
                .WillCascadeOnDelete(false);
        }
    }
}
