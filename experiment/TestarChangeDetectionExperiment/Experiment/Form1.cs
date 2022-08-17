using System;
using System.Linq;
using System.Windows.Forms;

namespace Experiment
{
    public partial class Form1 : Form
    {
        public Form1(string[] args)
        {
            InitializeComponent();

            PanelButtons.Visible = false;
            ButtonV1.Visible = false;
            ButtonV2.Visible = false;
            ButtonV3.Visible = false;

            if (args.Any(x => x == "v1"))
            {
                ButtonV1.Visible = true;
            }

            if (args.Any(x => x == "v2"))
            {
                ButtonV1.Visible = true;
                ButtonV2.Visible = true;
            }

            if (args.Any(x => x == "v3"))
            {
                ButtonV1.Visible = false;
                ButtonV2.Visible = true;
                ButtonV3.Visible = true;
            }

            if (args.Any(x => x == "-nostart"))
            {
                PanelButtons.Visible = true;
                ButtonStart.Visible = false;
                ButtonBack.Visible = false;
            }
        }

        private void ButtonStart_Click(object sender, EventArgs e)
        {
            ButtonStart.Visible = false;
            PanelButtons.Visible = true;
        }

        private void ButtonV3_Click(object sender, EventArgs e)
        {
            MessageBox.Show(this, "This is version 3!!");
        }

        private void ButtonV2_Click(object sender, EventArgs e)
        {
            MessageBox.Show(this, "Welcome to version 2");
        }

        private void ButtonV1_Click(object sender, EventArgs e)
        {
            MessageBox.Show(this, "Hello world version 1");
        }

        private void ButtonBack_Click(object sender, EventArgs e)
        {
            PanelButtons.Visible = false;
            ButtonStart.Visible = true; 
        }
    }
}
