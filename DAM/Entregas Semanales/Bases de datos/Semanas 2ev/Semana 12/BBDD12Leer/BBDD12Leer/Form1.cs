namespace BBDD12Leer
{
    public partial class Form1 : Form
    {
        public Form1()
        {
            InitializeComponent();
        }

        private void button1_Click(object sender, EventArgs e)
        {
            string leeArchivo = File.ReadAllText("agenda.txt");
            label1.Text
        }
    }
}