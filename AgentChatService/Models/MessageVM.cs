using System;

namespace AgentChatService.Models
{
    [Serializable]
    public class MessageVM
    {
        public string ChatMessage { get; set; }
        public string UserName { get; set; }

    }
}
