﻿namespace QuanLyQuanAnNhanh
{
    partial class fLogin
    {
        /// <summary>
        /// Required designer variable.
        /// </summary>
        private System.ComponentModel.IContainer components = null;

        /// <summary>
        /// Clean up any resources being used.
        /// </summary>
        /// <param name="disposing">true if managed resources should be disposed; otherwise, false.</param>
        protected override void Dispose(bool disposing)
        {
            if (disposing && (components != null))
            {
                components.Dispose();
            }
            base.Dispose(disposing);
        }

        #region Windows Form Designer generated code

        /// <summary>
        /// Required method for Designer support - do not modify
        /// the contents of this method with the code editor.
        /// </summary>
        private void InitializeComponent()
        {
            this.panel1 = new System.Windows.Forms.Panel();
            this.label1 = new System.Windows.Forms.Label();
            this.tbUsername = new System.Windows.Forms.TextBox();
            this.panel2 = new System.Windows.Forms.Panel();
            this.tbPassword = new System.Windows.Forms.TextBox();
            this.label2 = new System.Windows.Forms.Label();
            this.btLogin = new System.Windows.Forms.Button();
            this.btThoat = new System.Windows.Forms.Button();
            this.panel1.SuspendLayout();
            this.panel2.SuspendLayout();
            this.SuspendLayout();
            // 
            // panel1
            // 
            this.panel1.Controls.Add(this.tbUsername);
            this.panel1.Controls.Add(this.label1);
            this.panel1.Location = new System.Drawing.Point(21, 37);
            this.panel1.Name = "panel1";
            this.panel1.Size = new System.Drawing.Size(493, 58);
            this.panel1.TabIndex = 0;
            // 
            // label1
            // 
            this.label1.AutoSize = true;
            this.label1.Font = new System.Drawing.Font("Times New Roman", 14.25F, System.Drawing.FontStyle.Bold, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.label1.Location = new System.Drawing.Point(23, 20);
            this.label1.Name = "label1";
            this.label1.Size = new System.Drawing.Size(142, 22);
            this.label1.TabIndex = 0;
            this.label1.Text = "Tên đăng nhập :";
            this.label1.Click += new System.EventHandler(this.label1_Click);
            // 
            // tbUsername
            // 
            this.tbUsername.Location = new System.Drawing.Point(213, 23);
            this.tbUsername.Name = "tbUsername";
            this.tbUsername.Size = new System.Drawing.Size(222, 20);
            this.tbUsername.TabIndex = 1;
            this.tbUsername.TextChanged += new System.EventHandler(this.tbUsername_TextChanged);
            // 
            // panel2
            // 
            this.panel2.Controls.Add(this.tbPassword);
            this.panel2.Controls.Add(this.label2);
            this.panel2.Location = new System.Drawing.Point(21, 122);
            this.panel2.Name = "panel2";
            this.panel2.Size = new System.Drawing.Size(493, 62);
            this.panel2.TabIndex = 2;
            // 
            // tbPassword
            // 
            this.tbPassword.Location = new System.Drawing.Point(213, 32);
            this.tbPassword.Name = "tbPassword";
            this.tbPassword.Size = new System.Drawing.Size(222, 20);
            this.tbPassword.TabIndex = 1;
            this.tbPassword.UseSystemPasswordChar = true;
            // 
            // label2
            // 
            this.label2.AutoSize = true;
            this.label2.Font = new System.Drawing.Font("Times New Roman", 14.25F, System.Drawing.FontStyle.Bold, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.label2.Location = new System.Drawing.Point(23, 32);
            this.label2.Name = "label2";
            this.label2.Size = new System.Drawing.Size(100, 22);
            this.label2.TabIndex = 0;
            this.label2.Text = "Mật khẩu :";
            // 
            // btLogin
            // 
            this.btLogin.Location = new System.Drawing.Point(234, 233);
            this.btLogin.Name = "btLogin";
            this.btLogin.Size = new System.Drawing.Size(75, 23);
            this.btLogin.TabIndex = 3;
            this.btLogin.Text = "Đăng nhập";
            this.btLogin.TextAlign = System.Drawing.ContentAlignment.MiddleRight;
            this.btLogin.UseVisualStyleBackColor = true;
            this.btLogin.Click += new System.EventHandler(this.btLogin_Click);
            // 
            // btThoat
            // 
            this.btThoat.Location = new System.Drawing.Point(381, 233);
            this.btThoat.Name = "btThoat";
            this.btThoat.Size = new System.Drawing.Size(75, 23);
            this.btThoat.TabIndex = 4;
            this.btThoat.Text = "Thoát";
            this.btThoat.UseVisualStyleBackColor = true;
            this.btThoat.Click += new System.EventHandler(this.btThoat_Click);
            // 
            // fLogin
            // 
            this.AutoScaleDimensions = new System.Drawing.SizeF(6F, 13F);
            this.AutoScaleMode = System.Windows.Forms.AutoScaleMode.Font;
            this.ClientSize = new System.Drawing.Size(526, 276);
            this.Controls.Add(this.btThoat);
            this.Controls.Add(this.btLogin);
            this.Controls.Add(this.panel2);
            this.Controls.Add(this.panel1);
            this.Name = "fLogin";
            this.StartPosition = System.Windows.Forms.FormStartPosition.CenterScreen;
            this.Text = "Đăng nhập";
            this.FormClosing += new System.Windows.Forms.FormClosingEventHandler(this.fLogin_FormClosing);
            this.panel1.ResumeLayout(false);
            this.panel1.PerformLayout();
            this.panel2.ResumeLayout(false);
            this.panel2.PerformLayout();
            this.ResumeLayout(false);

        }

        #endregion

        private System.Windows.Forms.Panel panel1;
        private System.Windows.Forms.TextBox tbUsername;
        private System.Windows.Forms.Label label1;
        private System.Windows.Forms.Panel panel2;
        private System.Windows.Forms.TextBox tbPassword;
        private System.Windows.Forms.Label label2;
        private System.Windows.Forms.Button btLogin;
        private System.Windows.Forms.Button btThoat;
    }
}

