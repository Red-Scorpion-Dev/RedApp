.class public Lorg/h2/command/ddl/AlterView;
.super Lorg/h2/command/ddl/DefineCommand;
.source "AlterView.java"


# instance fields
.field private ifExists:Z

.field private view:Lorg/h2/table/TableView;


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

    const/16 v0, 0x14

    return v0
.end method

.method public setIfExists(Z)V
    .locals 0

    .line 28
    iput-boolean p1, p0, Lorg/h2/command/ddl/AlterView;->ifExists:Z

    return-void
.end method

.method public setView(Lorg/h2/table/TableView;)V
    .locals 0

    .line 32
    iput-object p1, p0, Lorg/h2/command/ddl/AlterView;->view:Lorg/h2/table/TableView;

    return-void
.end method

.method public update()I
    .locals 5

    .line 37
    iget-object v0, p0, Lorg/h2/command/ddl/AlterView;->session:Lorg/h2/engine/Session;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lorg/h2/engine/Session;->commit(Z)V

    .line 38
    iget-object v0, p0, Lorg/h2/command/ddl/AlterView;->view:Lorg/h2/table/TableView;

    const/4 v2, 0x0

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lorg/h2/command/ddl/AlterView;->ifExists:Z

    if-eqz v0, :cond_0

    return v2

    .line 41
    :cond_0
    iget-object v0, p0, Lorg/h2/command/ddl/AlterView;->session:Lorg/h2/engine/Session;

    invoke-virtual {v0}, Lorg/h2/engine/Session;->getUser()Lorg/h2/engine/User;

    move-result-object v0

    iget-object v3, p0, Lorg/h2/command/ddl/AlterView;->view:Lorg/h2/table/TableView;

    const/16 v4, 0xf

    invoke-virtual {v0, v3, v4}, Lorg/h2/engine/User;->checkRight(Lorg/h2/table/Table;I)V

    .line 42
    iget-object v0, p0, Lorg/h2/command/ddl/AlterView;->view:Lorg/h2/table/TableView;

    iget-object v3, p0, Lorg/h2/command/ddl/AlterView;->session:Lorg/h2/engine/Session;

    invoke-virtual {v0, v3, v2, v1}, Lorg/h2/table/TableView;->recompile(Lorg/h2/engine/Session;ZZ)Lorg/h2/message/DbException;

    move-result-object v0

    if-nez v0, :cond_1

    return v2

    .line 44
    :cond_1
    throw v0
.end method
