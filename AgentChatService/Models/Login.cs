using System;
using System.Collections.Generic;

namespace AgentChatService.Models;

public partial class Login
{
    public int UserId { get; set; }

    public string UserName { get; set; }

    public string UserType { get; set; }

    public string Password { get; set; }

    public string TeamName { get; set; }

    public bool? IsAvailable { get; set; }

    public DateTime? LoginTime { get; set; }
}
