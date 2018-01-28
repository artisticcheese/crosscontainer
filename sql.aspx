<%@ Page Language="C#" %>
<%@ Import Namespace="System.Data" %>
<%@ Import Namespace="System.Data.SqlClient" %>
<script runat="server">
  protected void Page_Load(object sender, EventArgs e)
  {
      using (SqlConnection cn = new SqlConnection("data source=192.168.1.33;Integrated Security=True"))
      {
          SqlCommand cmd = new SqlCommand();
          cmd.CommandText = "SELECT ORIGINAL_LOGIN()";
          cmd.Connection=cn;
          cn.Open();
          SqlDataReader rdr = cmd.ExecuteReader(CommandBehavior.CloseConnection);
          rdr.Read();
          Response.Write(String.Format("You are logged on as <B>{0}</B> to SQL server <B>{1}</B>", rdr.GetString(0), cn.DataSource));

      }
  }
</script>