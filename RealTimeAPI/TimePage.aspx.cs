using System;
using System.Net;
using System.IO;
using System.Web.Script.Serialization;

namespace RealTimeAPI
{
    public partial class TimePage : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }
        public string GetCurrentTime()
        {
            string apiUrl = "http://worldtimeapi.org/api/timezone/America/Toronto";
            HttpWebRequest request = (HttpWebRequest)WebRequest.Create(apiUrl);
            request.Method = "GET";

            using (HttpWebResponse response = (HttpWebResponse)request.GetResponse())
            {
                using (StreamReader reader = new StreamReader(response.GetResponseStream()))
                {
                    string jsonResponse = reader.ReadToEnd();

                    JavaScriptSerializer js = new JavaScriptSerializer();
                    dynamic data = js.Deserialize<dynamic>(jsonResponse);
                    string utcDateTime = data["utc_datetime"];

                    DateTime utcTime = DateTime.Parse(utcDateTime);
                    return utcTime.ToString("HH:mm:ss");
                }
            }
        }
    }
}