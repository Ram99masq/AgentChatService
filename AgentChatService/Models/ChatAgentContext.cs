using System;
using System.Collections.Generic;
using Microsoft.EntityFrameworkCore;

namespace AgentChatService.Models;

public partial class ChatAgentContext : DbContext
{
    public ChatAgentContext()
    {
    }

    public ChatAgentContext(DbContextOptions<ChatAgentContext> options)
        : base(options)
    {
    }

    public virtual DbSet<CustomerAgent> CustomerAgents { get; set; }

    public virtual DbSet<Login> Logins { get; set; }

    protected override void OnConfiguring(DbContextOptionsBuilder optionsBuilder)
#warning To protect potentially sensitive information in your connection string, you should move it out of source code. You can avoid scaffolding the connection string by using the Name= syntax to read it from configuration - see https://go.microsoft.com/fwlink/?linkid=2131148. For more guidance on storing connection strings, see http://go.microsoft.com/fwlink/?LinkId=723263.
        => optionsBuilder.UseSqlServer("Data Source=DESKTOP-AEA61L5;Initial Catalog=ChatAgent;Trusted_Connection=True;MultipleActiveResultSets=true;TrustServerCertificate=True");

    protected override void OnModelCreating(ModelBuilder modelBuilder)
    {
        modelBuilder.Entity<CustomerAgent>(entity =>
        {
            entity.ToTable("CustomerAgent");
        });

        modelBuilder.Entity<Login>(entity =>
        {
            entity.HasKey(e => e.UserId);

            entity.ToTable("Login");

            entity.Property(e => e.LoginTime).HasColumnType("datetime");
            entity.Property(e => e.Password)
                .HasMaxLength(50)
                .IsUnicode(false);
            entity.Property(e => e.TeamName)
                .HasMaxLength(50)
                .IsUnicode(false);
            entity.Property(e => e.UserName)
                .HasMaxLength(50)
                .IsUnicode(false);
            entity.Property(e => e.UserType)
                .HasMaxLength(50)
                .IsUnicode(false);
        });

        OnModelCreatingPartial(modelBuilder);
    }

    partial void OnModelCreatingPartial(ModelBuilder modelBuilder);
}
