.class public Lorg/h2/command/ddl/TruncateTable;
.super Lorg/h2/command/ddl/DefineCommand;
.source "TruncateTable.java"


# instance fields
.field private table:Lorg/h2/table/Table;


# direct methods
.method public constructor <init>(Lorg/h2/engine/Session;)V
    .locals 0

    .line 24
    invoke-direct {p0, p1}, Lorg/h2/command/ddl/DefineCommand;-><init>(Lorg/h2/engine/Session;)V

    return-void
.end method


# virtual methods
.method public getType()I
    .locals 1

    const/16 v0, 0x35

    return v0
.end method

.method public setTable(Lorg/h2/table/Table;)V
    .locals 0

    .line 28
    iput-object p1, p0, Lorg/h2/command/ddl/TruncateTable;->table:Lorg/h2/table/Table;

    return-void
.end method

.method public update()I
    .locals 4

    .line 33
    iget-object v0, p0, Lorg/h2/command/ddl/TruncateTable;->session:Lorg/h2/engine/Session;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lorg/h2/engine/Session;->commit(Z)V

    .line 34
    iget-object v0, p0, Lorg/h2/command/ddl/TruncateTable;->table:Lorg/h2/table/Table;

    invoke-virtual {v0}, Lorg/h2/table/Table;->canTruncate()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 37
    iget-object v0, p0, Lorg/h2/command/ddl/TruncateTable;->session:Lorg/h2/engine/Session;

    invoke-virtual {v0}, Lorg/h2/engine/Session;->getUser()Lorg/h2/engine/User;

    move-result-object v0

    iget-object v2, p0, Lorg/h2/command/ddl/TruncateTable;->table:Lorg/h2/table/Table;

    const/4 v3, 0x2

    invoke-virtual {v0, v2, v3}, Lorg/h2/engine/User;->checkRight(Lorg/h2/table/Table;I)V

    .line 38
    iget-object v0, p0, Lorg/h2/command/ddl/TruncateTable;->table:Lorg/h2/table/Table;

    iget-object v2, p0, Lorg/h2/command/ddl/TruncateTable;->session:Lorg/h2/engine/Session;

    invoke-virtual {v0, v2, v1, v1}, Lorg/h2/table/Table;->lock(Lorg/h2/engine/Session;ZZ)Z

    .line 39
    iget-object v0, p0, Lorg/h2/command/ddl/TruncateTable;->table:Lorg/h2/table/Table;

    iget-object v1, p0, Lorg/h2/command/ddl/TruncateTable;->session:Lorg/h2/engine/Session;

    invoke-virtual {v0, v1}, Lorg/h2/table/Table;->truncate(Lorg/h2/engine/Session;)V

    const/4 v0, 0x0

    return v0

    :cond_0
    const v0, 0x15ffa

    .line 35
    iget-object v1, p0, Lorg/h2/command/ddl/TruncateTable;->table:Lorg/h2/table/Table;

    invoke-virtual {v1}, Lorg/h2/table/Table;->getSQL()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lorg/h2/message/DbException;->get(ILjava/lang/String;)Lorg/h2/message/DbException;

    move-result-object v0

    throw v0
.end method
