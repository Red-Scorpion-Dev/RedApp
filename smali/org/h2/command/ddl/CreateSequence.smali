.class public Lorg/h2/command/ddl/CreateSequence;
.super Lorg/h2/command/ddl/SchemaCommand;
.source "CreateSequence.java"


# instance fields
.field private belongsToTable:Z

.field private cacheSize:Lorg/h2/expression/Expression;

.field private cycle:Z

.field private ifNotExists:Z

.field private increment:Lorg/h2/expression/Expression;

.field private maxValue:Lorg/h2/expression/Expression;

.field private minValue:Lorg/h2/expression/Expression;

.field private sequenceName:Ljava/lang/String;

.field private start:Lorg/h2/expression/Expression;


# direct methods
.method public constructor <init>(Lorg/h2/engine/Session;Lorg/h2/schema/Schema;)V
    .locals 0

    .line 34
    invoke-direct {p0, p1, p2}, Lorg/h2/command/ddl/SchemaCommand;-><init>(Lorg/h2/engine/Session;Lorg/h2/schema/Schema;)V

    return-void
.end method

.method private getLong(Lorg/h2/expression/Expression;)Ljava/lang/Long;
    .locals 2

    if-nez p1, :cond_0

    const/4 p1, 0x0

    return-object p1

    .line 75
    :cond_0
    iget-object v0, p0, Lorg/h2/command/ddl/CreateSequence;->session:Lorg/h2/engine/Session;

    invoke-virtual {p1, v0}, Lorg/h2/expression/Expression;->optimize(Lorg/h2/engine/Session;)Lorg/h2/expression/Expression;

    move-result-object p1

    iget-object v0, p0, Lorg/h2/command/ddl/CreateSequence;->session:Lorg/h2/engine/Session;

    invoke-virtual {p1, v0}, Lorg/h2/expression/Expression;->getValue(Lorg/h2/engine/Session;)Lorg/h2/value/Value;

    move-result-object p1

    invoke-virtual {p1}, Lorg/h2/value/Value;->getLong()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    return-object p1
.end method


# virtual methods
.method public getType()I
    .locals 1

    const/16 v0, 0x1d

    return v0
.end method

.method public setBelongsToTable(Z)V
    .locals 0

    .line 95
    iput-boolean p1, p0, Lorg/h2/command/ddl/CreateSequence;->belongsToTable:Z

    return-void
.end method

.method public setCacheSize(Lorg/h2/expression/Expression;)V
    .locals 0

    .line 99
    iput-object p1, p0, Lorg/h2/command/ddl/CreateSequence;->cacheSize:Lorg/h2/expression/Expression;

    return-void
.end method

.method public setCycle(Z)V
    .locals 0

    .line 46
    iput-boolean p1, p0, Lorg/h2/command/ddl/CreateSequence;->cycle:Z

    return-void
.end method

.method public setIfNotExists(Z)V
    .locals 0

    .line 42
    iput-boolean p1, p0, Lorg/h2/command/ddl/CreateSequence;->ifNotExists:Z

    return-void
.end method

.method public setIncrement(Lorg/h2/expression/Expression;)V
    .locals 0

    .line 83
    iput-object p1, p0, Lorg/h2/command/ddl/CreateSequence;->increment:Lorg/h2/expression/Expression;

    return-void
.end method

.method public setMaxValue(Lorg/h2/expression/Expression;)V
    .locals 0

    .line 91
    iput-object p1, p0, Lorg/h2/command/ddl/CreateSequence;->maxValue:Lorg/h2/expression/Expression;

    return-void
.end method

.method public setMinValue(Lorg/h2/expression/Expression;)V
    .locals 0

    .line 87
    iput-object p1, p0, Lorg/h2/command/ddl/CreateSequence;->minValue:Lorg/h2/expression/Expression;

    return-void
.end method

.method public setSequenceName(Ljava/lang/String;)V
    .locals 0

    .line 38
    iput-object p1, p0, Lorg/h2/command/ddl/CreateSequence;->sequenceName:Ljava/lang/String;

    return-void
.end method

.method public setStartWith(Lorg/h2/expression/Expression;)V
    .locals 0

    .line 79
    iput-object p1, p0, Lorg/h2/command/ddl/CreateSequence;->start:Lorg/h2/expression/Expression;

    return-void
.end method

.method public update()I
    .locals 14

    .line 51
    iget-object v0, p0, Lorg/h2/command/ddl/CreateSequence;->session:Lorg/h2/engine/Session;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lorg/h2/engine/Session;->commit(Z)V

    .line 52
    iget-object v0, p0, Lorg/h2/command/ddl/CreateSequence;->session:Lorg/h2/engine/Session;

    invoke-virtual {v0}, Lorg/h2/engine/Session;->getDatabase()Lorg/h2/engine/Database;

    move-result-object v0

    .line 53
    invoke-virtual {p0}, Lorg/h2/command/ddl/CreateSequence;->getSchema()Lorg/h2/schema/Schema;

    move-result-object v1

    iget-object v2, p0, Lorg/h2/command/ddl/CreateSequence;->sequenceName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lorg/h2/schema/Schema;->findSequence(Ljava/lang/String;)Lorg/h2/schema/Sequence;

    move-result-object v1

    const/4 v2, 0x0

    if-eqz v1, :cond_1

    .line 54
    iget-boolean v0, p0, Lorg/h2/command/ddl/CreateSequence;->ifNotExists:Z

    if-eqz v0, :cond_0

    return v2

    :cond_0
    const v0, 0x15fb3

    .line 57
    iget-object v1, p0, Lorg/h2/command/ddl/CreateSequence;->sequenceName:Ljava/lang/String;

    invoke-static {v0, v1}, Lorg/h2/message/DbException;->get(ILjava/lang/String;)Lorg/h2/message/DbException;

    move-result-object v0

    throw v0

    .line 59
    :cond_1
    invoke-virtual {p0}, Lorg/h2/command/ddl/CreateSequence;->getObjectId()I

    move-result v5

    .line 60
    iget-object v1, p0, Lorg/h2/command/ddl/CreateSequence;->start:Lorg/h2/expression/Expression;

    invoke-direct {p0, v1}, Lorg/h2/command/ddl/CreateSequence;->getLong(Lorg/h2/expression/Expression;)Ljava/lang/Long;

    move-result-object v7

    .line 61
    iget-object v1, p0, Lorg/h2/command/ddl/CreateSequence;->increment:Lorg/h2/expression/Expression;

    invoke-direct {p0, v1}, Lorg/h2/command/ddl/CreateSequence;->getLong(Lorg/h2/expression/Expression;)Ljava/lang/Long;

    move-result-object v8

    .line 62
    iget-object v1, p0, Lorg/h2/command/ddl/CreateSequence;->cacheSize:Lorg/h2/expression/Expression;

    invoke-direct {p0, v1}, Lorg/h2/command/ddl/CreateSequence;->getLong(Lorg/h2/expression/Expression;)Ljava/lang/Long;

    move-result-object v9

    .line 63
    iget-object v1, p0, Lorg/h2/command/ddl/CreateSequence;->minValue:Lorg/h2/expression/Expression;

    invoke-direct {p0, v1}, Lorg/h2/command/ddl/CreateSequence;->getLong(Lorg/h2/expression/Expression;)Ljava/lang/Long;

    move-result-object v10

    .line 64
    iget-object v1, p0, Lorg/h2/command/ddl/CreateSequence;->maxValue:Lorg/h2/expression/Expression;

    invoke-direct {p0, v1}, Lorg/h2/command/ddl/CreateSequence;->getLong(Lorg/h2/expression/Expression;)Ljava/lang/Long;

    move-result-object v11

    .line 65
    new-instance v1, Lorg/h2/schema/Sequence;

    invoke-virtual {p0}, Lorg/h2/command/ddl/CreateSequence;->getSchema()Lorg/h2/schema/Schema;

    move-result-object v4

    iget-object v6, p0, Lorg/h2/command/ddl/CreateSequence;->sequenceName:Ljava/lang/String;

    iget-boolean v12, p0, Lorg/h2/command/ddl/CreateSequence;->cycle:Z

    iget-boolean v13, p0, Lorg/h2/command/ddl/CreateSequence;->belongsToTable:Z

    move-object v3, v1

    invoke-direct/range {v3 .. v13}, Lorg/h2/schema/Sequence;-><init>(Lorg/h2/schema/Schema;ILjava/lang/String;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/Long;ZZ)V

    .line 67
    iget-object v3, p0, Lorg/h2/command/ddl/CreateSequence;->session:Lorg/h2/engine/Session;

    invoke-virtual {v0, v3, v1}, Lorg/h2/engine/Database;->addSchemaObject(Lorg/h2/engine/Session;Lorg/h2/schema/SchemaObject;)V

    return v2
.end method
