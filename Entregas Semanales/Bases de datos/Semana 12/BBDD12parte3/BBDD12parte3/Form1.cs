namespace BBDD12parte3
{
    public partial class Form1 : Form
    {
        int contador = 0;
        public Form1()
        {
            InitializeComponent();
        }

        private void dataGridView1_CellContentClick(object sender, DataGridViewCellEventArgs e)
        {

        }

        private void button1_Click(object sender, EventArgs e)
        {
            dataGridView1[0, contador].Value = "Fran";
            dataGridView1[1, contador].Value = "Fran@gmail.com";
            dataGridView1[2, contador].Value = "546456456";
            dataGridView1.Rows.Add();
            contador++;

        }

        private void button2_Click(object sender, EventArgs e)
        {
            String cadena = File.ReadAllText("agenda.txt");
            string[] partido = cadena.Split(',');
            dataGridView1[0, 0].Value = partido[0];
            dataGridView1[1, 0].Value = partido[1];
            dataGridView1[2, 0].Value = partido[2];

        }
    }
}