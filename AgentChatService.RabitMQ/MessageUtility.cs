using Microsoft.AspNetCore.Http;
using Microsoft.Extensions.Primitives;
using RabbitMQ.Client;
using RabbitMQ.Client.Events;
using System.Text;

namespace AgentChatService.RabitMQ
{
    public static class MessageUtility
    {
        private const string HostName = "localhost";
        //private const string QueueName = "Agent" =

        public static void PushMessage(string message, string QueueName)
        {
            using (IConnection connection = new ConnectionFactory().CreateConnection())
            {
                using (IModel channel = connection.CreateModel())
                {
                    channel.QueueDeclare(QueueName, false, false, false, null);
                    channel.BasicPublish(string.Empty, QueueName, null, Encoding.UTF8.GetBytes(message));
                }
            }


        }

        public static string ReceiveMessage(string QueueName)
        {

            using (IConnection connection = new ConnectionFactory().CreateConnection())
            {
                using (IModel channel = connection.CreateModel())
                {
                    channel.QueueDeclare(QueueName, false, false, false, null);
                    var consumer = new EventingBasicConsumer(channel);
                    BasicGetResult result = channel.BasicGet(QueueName, true);
                    if (result != null)
                    {
                        string data = Encoding.UTF8.GetString(result.Body.ToArray());
                        return data;
                    }
                }
            }
            return "";

        }

    }
}