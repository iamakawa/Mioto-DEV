﻿using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Data;
using System.Drawing;
using System.IO;
using System.Linq;
using System.Text;
using System.Threading;
using System.Threading.Tasks;
using System.Windows.Forms;

namespace KmeansTool
{
    public partial class Form1 : Form
    {
        public Form1()
        {
            InitializeComponent();
        }

        static int cnt = 0;
        public void d(string msg, bool isNewLine=true)
        {
            if (InvokeRequired)
            {
                this.Invoke(new Action<string, bool>(d), msg, isNewLine);
            }
            else
            {
                if (cnt > 100) { cnt = 0; textBox1.Text = ""; }
                this.textBox1.AppendText(msg);
                if (isNewLine)
                {
                    this.textBox1.AppendText(Environment.NewLine);
                    cnt++;
                }
            }
        }


        CancellationTokenSource tokenSource = new CancellationTokenSource();

        MemDb db = null;
        private void button1_Click(object sender, EventArgs e)
        {
            var file = @"C:\Users\min\Desktop\an案件\tsuツカダ様\3回目_20200212\mioto_backup_ct.csv";
            var token = tokenSource.Token;
            if(db!=null) { db.Dispose(); }
            db = new MemDb();
            db.SetDebugMsgFunction(d);
            db.load(file, token, (int)numericUpDownPercent.Value);
        }

        private void button2_Click(object sender, EventArgs e)
        {
            tokenSource.Cancel();
        }
    }
}
