.class public Lorg/h2/command/ddl/AlterTableRenameConstraint;
.super Lorg/h2/command/ddl/SchemaCommand;
.source "AlterTableRenameConstraint.java"


# instance fields
.field private constraintName:Ljava/lang/String;

.field private newConstraintName:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lorg/h2/engine/Session;Lorg/h2/schema/Schema;)V
    .locals 0

    .line 26
    invoke-direct {p0, p1, p2}, Lorg/h2/command/ddl/SchemaCommand;-><init>(Lorg/h2/engine/Session;Lorg/h2/schema/Schema;)V

    return-void
.end method


# virtual methods
.method public getType()I
    .locals 1

    const/16 v0, 0x55

    return v0
.end method

.method public setConstraintName(Ljava/lang/String;)V
    .locals 0

    .line 30
    iput-object p1, p0, Lorg/h2/command/ddl/AlterTableRenameConstraint;->constraintName:Ljava/lang/String;

    return-void
.end method

.method public setNewConstraintName(Ljava/lang/String;)V
    .locals 0

    .line 33
    iput-object p1, p0, Lorg/h2/command/ddl/AlterTableRenameConstraint;->newConstraintName:Ljava/lang/String;

    return-void
.end method

.method public update()I
    .locals 4

    .line 38
    iget-object v0, p0, Lorg/h2/command/ddl/AlterTableRenameConstraint;->session:Lorg/h2/engine/Session;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lorg/h2/engine/Session;->commit(Z)V

    .line 39
    invoke-virtual {p0}, Lorg/h2/command/ddl/AlterTableRenameConstraint;->getSchema()Lorg/h2/schema/Schema;

    move-result-object v0

    iget-object v1, p0, Lorg/h2/command/ddl/AlterTableRenameConstraint;->session:Lorg/h2/engine/Session;

    iget-object v2, p0, Lorg/h2/command/ddl/AlterTableRenameConstraint;->constraintName:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/h2/schema/Schema;->findConstraint(Lorg/h2/engine/Session;Ljava/lang/String;)Lorg/h2/constraint/Constraint;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 43
    invoke-virtual {p0}, Lorg/h2/command/ddl/AlterTableRenameConstraint;->getSchema()Lorg/h2/schema/Schema;

    move-result-object v1

    iget-object v2, p0, Lorg/h2/command/ddl/AlterTableRenameConstraint;->session:Lorg/h2/engine/Session;

    iget-object v3, p0, Lorg/h2/command/ddl/AlterTableRenameConstraint;->newConstraintName:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Lorg/h2/schema/Schema;->findConstraint(Lorg/h2/engine/Session;Ljava/lang/String;)Lorg/h2/constraint/Constraint;

    move-result-object v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lorg/h2/command/ddl/AlterTableRenameConstraint;->newConstraintName:Ljava/lang/String;

    iget-object v2, p0, Lorg/h2/command/ddl/AlterTableRenameConstraint;->constraintName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 48
    iget-object v1, p0, Lorg/h2/command/ddl/AlterTableRenameConstraint;->session:Lorg/h2/engine/Session;

    invoke-virtual {v1}, Lorg/h2/engine/Session;->getUser()Lorg/h2/engine/User;

    move-result-object v1

    invoke-virtual {v0}, Lorg/h2/constraint/Constraint;->getTable()Lorg/h2/table/Table;

    move-result-object v2

    const/16 v3, 0xf

    invoke-virtual {v1, v2, v3}, Lorg/h2/engine/User;->checkRight(Lorg/h2/table/Table;I)V

    .line 49
    iget-object v1, p0, Lorg/h2/command/ddl/AlterTableRenameConstraint;->session:Lorg/h2/engine/Session;

    invoke-virtual {v1}, Lorg/h2/engine/Session;->getUser()Lorg/h2/engine/User;

    move-result-object v1

    invoke-virtual {v0}, Lorg/h2/constraint/Constraint;->getRefTable()Lorg/h2/table/Table;

    move-result-object v2

    invoke-virtual {v1, v2, v3}, Lorg/h2/engine/User;->checkRight(Lorg/h2/table/Table;I)V

    .line 50
    iget-object v1, p0, Lorg/h2/command/ddl/AlterTableRenameConstraint;->session:Lorg/h2/engine/Session;

    invoke-virtual {v1}, Lorg/h2/engine/Session;->getDatabase()Lorg/h2/engine/Database;

    move-result-object v1

    iget-object v2, p0, Lorg/h2/command/ddl/AlterTableRenameConstraint;->session:Lorg/h2/engine/Session;

    iget-object v3, p0, Lorg/h2/command/ddl/AlterTableRenameConstraint;->newConstraintName:Ljava/lang/String;

    invoke-virtual {v1, v2, v0, v3}, Lorg/h2/engine/Database;->renameSchemaObject(Lorg/h2/engine/Session;Lorg/h2/schema/SchemaObject;Ljava/lang/String;)V

    const/4 v0, 0x0

    return v0

    :cond_0
    const v0, 0x15fbd

    .line 45
    iget-object v1, p0, Lorg/h2/command/ddl/AlterTableRenameConstraint;->newConstraintName:Ljava/lang/String;

    invoke-static {v0, v1}, Lorg/h2/message/DbException;->get(ILjava/lang/String;)Lorg/h2/message/DbException;

    move-result-object v0

    throw v0

    :cond_1
    const v0, 0x15fc9

    .line 41
    iget-object v1, p0, Lorg/h2/command/ddl/AlterTableRenameConstraint;->constraintName:Ljava/lang/String;

    invoke-static {v0, v1}, Lorg/h2/message/DbException;->get(ILjava/lang/String;)Lorg/h2/message/DbException;

    move-result-object v0

    throw v0
.end method
