.class public Lorg/h2/command/dml/AlterTableSet;
.super Lorg/h2/command/ddl/SchemaCommand;
.source "AlterTableSet.java"


# instance fields
.field private checkExisting:Z

.field private ifTableExists:Z

.field private tableName:Ljava/lang/String;

.field private final type:I

.field private final value:Z


# direct methods
.method public constructor <init>(Lorg/h2/engine/Session;Lorg/h2/schema/Schema;IZ)V
    .locals 0

    .line 31
    invoke-direct {p0, p1, p2}, Lorg/h2/command/ddl/SchemaCommand;-><init>(Lorg/h2/engine/Session;Lorg/h2/schema/Schema;)V

    .line 32
    iput p3, p0, Lorg/h2/command/dml/AlterTableSet;->type:I

    .line 33
    iput-boolean p4, p0, Lorg/h2/command/dml/AlterTableSet;->value:Z

    return-void
.end method


# virtual methods
.method public getType()I
    .locals 1

    .line 77
    iget v0, p0, Lorg/h2/command/dml/AlterTableSet;->type:I

    return v0
.end method

.method public isTransactional()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public setCheckExisting(Z)V
    .locals 0

    .line 37
    iput-boolean p1, p0, Lorg/h2/command/dml/AlterTableSet;->checkExisting:Z

    return-void
.end method

.method public setIfTableExists(Z)V
    .locals 0

    .line 46
    iput-boolean p1, p0, Lorg/h2/command/dml/AlterTableSet;->ifTableExists:Z

    return-void
.end method

.method public setTableName(Ljava/lang/String;)V
    .locals 0

    .line 50
    iput-object p1, p0, Lorg/h2/command/dml/AlterTableSet;->tableName:Ljava/lang/String;

    return-void
.end method

.method public update()I
    .locals 5

    .line 55
    invoke-virtual {p0}, Lorg/h2/command/dml/AlterTableSet;->getSchema()Lorg/h2/schema/Schema;

    move-result-object v0

    iget-object v1, p0, Lorg/h2/command/dml/AlterTableSet;->session:Lorg/h2/engine/Session;

    iget-object v2, p0, Lorg/h2/command/dml/AlterTableSet;->tableName:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/h2/schema/Schema;->findTableOrView(Lorg/h2/engine/Session;Ljava/lang/String;)Lorg/h2/table/Table;

    move-result-object v0

    const/4 v1, 0x0

    if-nez v0, :cond_1

    .line 57
    iget-boolean v0, p0, Lorg/h2/command/dml/AlterTableSet;->ifTableExists:Z

    if-eqz v0, :cond_0

    return v1

    :cond_0
    const v0, 0xa476

    .line 60
    iget-object v1, p0, Lorg/h2/command/dml/AlterTableSet;->tableName:Ljava/lang/String;

    invoke-static {v0, v1}, Lorg/h2/message/DbException;->get(ILjava/lang/String;)Lorg/h2/message/DbException;

    move-result-object v0

    throw v0

    .line 62
    :cond_1
    iget-object v2, p0, Lorg/h2/command/dml/AlterTableSet;->session:Lorg/h2/engine/Session;

    invoke-virtual {v2}, Lorg/h2/engine/Session;->getUser()Lorg/h2/engine/User;

    move-result-object v2

    const/16 v3, 0xf

    invoke-virtual {v2, v0, v3}, Lorg/h2/engine/User;->checkRight(Lorg/h2/table/Table;I)V

    .line 63
    iget-object v2, p0, Lorg/h2/command/dml/AlterTableSet;->session:Lorg/h2/engine/Session;

    const/4 v3, 0x1

    invoke-virtual {v0, v2, v3, v3}, Lorg/h2/table/Table;->lock(Lorg/h2/engine/Session;ZZ)Z

    .line 64
    iget v2, p0, Lorg/h2/command/dml/AlterTableSet;->type:I

    const/16 v3, 0x37

    if-eq v2, v3, :cond_2

    .line 70
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "type="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lorg/h2/command/dml/AlterTableSet;->type:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lorg/h2/message/DbException;->throwInternalError(Ljava/lang/String;)Ljava/lang/RuntimeException;

    goto :goto_1

    .line 66
    :cond_2
    iget-object v2, p0, Lorg/h2/command/dml/AlterTableSet;->session:Lorg/h2/engine/Session;

    iget-boolean v3, p0, Lorg/h2/command/dml/AlterTableSet;->value:Z

    iget-boolean v4, p0, Lorg/h2/command/dml/AlterTableSet;->value:Z

    if-eqz v4, :cond_3

    iget-boolean v4, p0, Lorg/h2/command/dml/AlterTableSet;->checkExisting:Z

    goto :goto_0

    :cond_3
    const/4 v4, 0x0

    :goto_0
    invoke-virtual {v0, v2, v3, v4}, Lorg/h2/table/Table;->setCheckForeignKeyConstraints(Lorg/h2/engine/Session;ZZ)V

    :goto_1
    return v1
.end method
