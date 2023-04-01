using System;
using System.Collections.Generic;

namespace AgentChatService.Models;

public partial class CustomerAgent
{
    public int CustomerAgentId { get; set; }

    public int? CustomerId { get; set; }

    public int? AgentId { get; set; }
}
