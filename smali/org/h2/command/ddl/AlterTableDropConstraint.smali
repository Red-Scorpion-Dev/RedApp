.class public Lorg/h2/command/ddl/AlterTableDropConstraint;
.super Lorg/h2/command/ddl/SchemaCommand;
.source "AlterTableDropConstraint.java"


# instance fields
.field private constraintName:Ljava/lang/String;

.field private final ifExists:Z


# direct methods
.method public constructor <init>(Lorg/h2/engine/Session;Lorg/h2/schema/Schema;Z)V
    .locals 0

    .line 27
    invoke-direct {p0, p1, p2}, Lorg/h2/command/ddl/SchemaCommand;-><init>(Lorg/h2/engine/Session;Lorg/h2/schema/Schema;)V

    .line 28
    iput-boolean p3, p0, Lorg/h2/command/ddl/AlterTableDropConstraint;->ifExists:Z

    return-void
.end method


# virtual methods
.method public getType()I
    .locals 1

    const/16 v0, 0xe

    return v0
.end method

.method public setConstraintName(Ljava/lang/String;)V
    .locals 0

    .line 32
    iput-object p1, p0, Lorg/h2/command/ddl/AlterTableDropConstraint;->constraintName:Ljava/lang/String;

    return-void
.end method

.method public update()I
    .locals 4

    .line 37
    iget-object v0, p0, Lorg/h2/command/ddl/AlterTableDropConstraint;->session:Lorg/h2/engine/Session;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lorg/h2/engine/Session;->commit(Z)V

    .line 38
    invoke-virtual {p0}, Lorg/h2/command/ddl/AlterTableDropConstraint;->getSchema()Lorg/h2/schema/Schema;

    move-result-object v0

    iget-object v1, p0, Lorg/h2/command/ddl/AlterTableDropConstraint;->session:Lorg/h2/engine/Session;

    iget-object v2, p0, Lorg/h2/command/ddl/AlterTableDropConstraint;->constraintName:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/h2/schema/Schema;->findConstraint(Lorg/h2/engine/Session;Ljava/lang/String;)Lorg/h2/constraint/Constraint;

    move-result-object v0

    if-nez v0, :cond_1

    .line 40
    iget-boolean v0, p0, Lorg/h2/command/ddl/AlterTableDropConstraint;->ifExists:Z

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const v0, 0x15fc9

    .line 41
    iget-object v1, p0, Lorg/h2/command/ddl/AlterTableDropConstraint;->constraintName:Ljava/lang/String;

    invoke-static {v0, v1}, Lorg/h2/message/DbException;->get(ILjava/lang/String;)Lorg/h2/message/DbException;

    move-result-object v0

    throw v0

    .line 44
    :cond_1
    iget-object v1, p0, Lorg/h2/command/ddl/AlterTableDropConstraint;->session:Lorg/h2/engine/Session;

    invoke-virtual {v1}, Lorg/h2/engine/Session;->getUser()Lorg/h2/engine/User;

    move-result-object v1

    invoke-virtual {v0}, Lorg/h2/constraint/Constraint;->getTable()Lorg/h2/table/Table;

    move-result-object v2

    const/16 v3, 0xf

    invoke-virtual {v1, v2, v3}, Lorg/h2/engine/User;->checkRight(Lorg/h2/table/Table;I)V

    .line 45
    iget-object v1, p0, Lorg/h2/command/ddl/AlterTableDropConstraint;->session:Lorg/h2/engine/Session;

    invoke-virtual {v1}, Lorg/h2/engine/Session;->getUser()Lorg/h2/engine/User;

    move-result-object v1

    invoke-virtual {v0}, Lorg/h2/constraint/Constraint;->getRefTable()Lorg/h2/table/Table;

    move-result-object v2

    invoke-virtual {v1, v2, v3}, Lorg/h2/engine/User;->checkRight(Lorg/h2/table/Table;I)V

    .line 46
    iget-object v1, p0, Lorg/h2/command/ddl/AlterTableDropConstraint;->session:Lorg/h2/engine/Session;

    invoke-virtual {v1}, Lorg/h2/engine/Session;->getDatabase()Lorg/h2/engine/Database;

    move-result-object v1

    iget-object v2, p0, Lorg/h2/command/ddl/AlterTableDropConstraint;->session:Lorg/h2/engine/Session;

    invoke-virtual {v1, v2, v0}, Lorg/h2/engine/Database;->removeSchemaObject(Lorg/h2/engine/Session;Lorg/h2/schema/SchemaObject;)V

    :goto_0
    const/4 v0, 0x0

    return v0
.end method
