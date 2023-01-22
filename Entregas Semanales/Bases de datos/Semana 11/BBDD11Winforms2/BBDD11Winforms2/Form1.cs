namespace BBDD11Winforms2
{
    public partial class Form1 : Form
    {
        public Form1()
        {
            InitializeComponent();
        }

        private void button1_Click(object sender, EventArgs e)
        {
            String nombre = cajaTexto1.Text;
            String telefono = cajaTexto2.Text;

            String unido = nombre + " " + telefono;

            etiqueta1.Text = unido;
        }
    }
}