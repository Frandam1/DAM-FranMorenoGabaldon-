namespace BBDD12
{
    public partial class Form1 : Form
    {
        public Form1()
        {
            InitializeComponent();
        }

        private void button1_Click(object sender, EventArgs e)
        {
            String nombre = textBox1.Text;
            String email = textBox2.Text;
            String telefono = textBox3.Text;

            String cadena = nombre + "," + email + "," + telefono + "\n";

            // File.WriteAllText("agenda.txt", cadena);
            File.AppendAllText("agenda.txt", cadena);
        }
    }
}