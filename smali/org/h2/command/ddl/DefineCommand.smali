.class public abstract Lorg/h2/command/ddl/DefineCommand;
.super Lorg/h2/command/Prepared;
.source "DefineCommand.java"


# instance fields
.field protected transactional:Z


# direct methods
.method constructor <init>(Lorg/h2/engine/Session;)V
    .locals 0

    .line 30
    invoke-direct {p0, p1}, Lorg/h2/command/Prepared;-><init>(Lorg/h2/engine/Session;)V

    return-void
.end method


# virtual methods
.method public isReadOnly()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public isTransactional()Z
    .locals 1

    .line 49
    iget-boolean v0, p0, Lorg/h2/command/ddl/DefineCommand;->transactional:Z

    return v0
.end method

.method public queryMeta()Lorg/h2/result/ResultInterface;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public setTransactional(Z)V
    .locals 0

    .line 44
    iput-boolean p1, p0, Lorg/h2/command/ddl/DefineCommand;->transactional:Z

    return-void
.end method
