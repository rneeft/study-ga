namespace Experiment
{
    partial class Form1
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
            System.ComponentModel.ComponentResourceManager resources = new System.ComponentModel.ComponentResourceManager(typeof(Form1));
            this.ButtonStart = new System.Windows.Forms.Button();
            this.ButtonBack = new System.Windows.Forms.Button();
            this.PanelButtons = new System.Windows.Forms.Panel();
            this.ButtonV3 = new System.Windows.Forms.Button();
            this.ButtonV2 = new System.Windows.Forms.Button();
            this.ButtonV1 = new System.Windows.Forms.Button();
            this.PanelButtons.SuspendLayout();
            this.SuspendLayout();
            // 
            // ButtonStart
            // 
            this.ButtonStart.Location = new System.Drawing.Point(11, 12);
            this.ButtonStart.Name = "ButtonStart";
            this.ButtonStart.Size = new System.Drawing.Size(442, 111);
            this.ButtonStart.TabIndex = 99;
            this.ButtonStart.Text = "Start";
            this.ButtonStart.UseVisualStyleBackColor = true;
            this.ButtonStart.Click += new System.EventHandler(this.ButtonStart_Click);
            // 
            // ButtonBack
            // 
            this.ButtonBack.Location = new System.Drawing.Point(336, 0);
            this.ButtonBack.Name = "ButtonBack";
            this.ButtonBack.Size = new System.Drawing.Size(106, 111);
            this.ButtonBack.TabIndex = 1;
            this.ButtonBack.Text = "Back";
            this.ButtonBack.UseVisualStyleBackColor = true;
            this.ButtonBack.Click += new System.EventHandler(this.ButtonBack_Click);
            // 
            // PanelButtons
            // 
            this.PanelButtons.Controls.Add(this.ButtonV3);
            this.PanelButtons.Controls.Add(this.ButtonBack);
            this.PanelButtons.Controls.Add(this.ButtonV2);
            this.PanelButtons.Controls.Add(this.ButtonV1);
            this.PanelButtons.Location = new System.Drawing.Point(12, 12);
            this.PanelButtons.Name = "PanelButtons";
            this.PanelButtons.Size = new System.Drawing.Size(442, 111);
            this.PanelButtons.TabIndex = 2;
            // 
            // ButtonV3
            // 
            this.ButtonV3.Location = new System.Drawing.Point(224, 0);
            this.ButtonV3.Name = "ButtonV3";
            this.ButtonV3.Size = new System.Drawing.Size(106, 111);
            this.ButtonV3.TabIndex = 3;
            this.ButtonV3.Text = "v3";
            this.ButtonV3.UseVisualStyleBackColor = true;
            this.ButtonV3.Click += new System.EventHandler(this.ButtonV3_Click);
            // 
            // ButtonV2
            // 
            this.ButtonV2.Location = new System.Drawing.Point(112, 0);
            this.ButtonV2.Name = "ButtonV2";
            this.ButtonV2.Size = new System.Drawing.Size(106, 111);
            this.ButtonV2.TabIndex = 4;
            this.ButtonV2.Text = "v2";
            this.ButtonV2.UseVisualStyleBackColor = true;
            this.ButtonV2.Click += new System.EventHandler(this.ButtonV2_Click);
            // 
            // ButtonV1
            // 
            this.ButtonV1.Location = new System.Drawing.Point(0, 0);
            this.ButtonV1.Name = "ButtonV1";
            this.ButtonV1.Size = new System.Drawing.Size(106, 111);
            this.ButtonV1.TabIndex = 5;
            this.ButtonV1.Text = "v1";
            this.ButtonV1.UseVisualStyleBackColor = true;
            this.ButtonV1.Click += new System.EventHandler(this.ButtonV1_Click);
            // 
            // Form1
            // 
            this.AutoScaleDimensions = new System.Drawing.SizeF(6F, 13F);
            this.AutoScaleMode = System.Windows.Forms.AutoScaleMode.Font;
            this.AutoSize = true;
            this.ClientSize = new System.Drawing.Size(468, 134);
            this.Controls.Add(this.PanelButtons);
            this.Controls.Add(this.ButtonStart);
            this.Icon = ((System.Drawing.Icon)(resources.GetObject("$this.Icon")));
            this.MaximizeBox = false;
            this.Name = "Form1";
            this.StartPosition = System.Windows.Forms.FormStartPosition.CenterScreen;
            this.Text = "TESTAR ChangeDetection Experiment";
            this.PanelButtons.ResumeLayout(false);
            this.ResumeLayout(false);

        }

        #endregion

        private System.Windows.Forms.Button ButtonStart;
        private System.Windows.Forms.Button ButtonBack;
        private System.Windows.Forms.Panel PanelButtons;
        private System.Windows.Forms.Button ButtonV3;
        private System.Windows.Forms.Button ButtonV2;
        private System.Windows.Forms.Button ButtonV1;
    }
}

