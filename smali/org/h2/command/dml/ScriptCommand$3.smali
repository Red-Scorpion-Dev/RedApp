.class final Lorg/h2/command/dml/ScriptCommand$3;
.super Ljava/io/InputStream;
.source "ScriptCommand.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/h2/command/dml/ScriptCommand;->combineBlob(Ljava/sql/Connection;I)Ljava/io/InputStream;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field private closed:Z

.field private current:Ljava/io/InputStream;

.field final synthetic val$rs:Ljava/sql/ResultSet;


# direct methods
.method constructor <init>(Ljava/sql/ResultSet;)V
    .locals 0

    .line 530
    iput-object p1, p0, Lorg/h2/command/dml/ScriptCommand$3;->val$rs:Ljava/sql/ResultSet;

    invoke-direct {p0}, Ljava/io/InputStream;-><init>()V

    return-void
.end method


# virtual methods
.method public close()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 560
    iget-boolean v0, p0, Lorg/h2/command/dml/ScriptCommand$3;->closed:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x1

    .line 563
    iput-boolean v0, p0, Lorg/h2/command/dml/ScriptCommand$3;->closed:Z

    .line 565
    :try_start_0
    iget-object v0, p0, Lorg/h2/command/dml/ScriptCommand$3;->val$rs:Ljava/sql/ResultSet;

    invoke-interface {v0}, Ljava/sql/ResultSet;->close()V
    :try_end_0
    .catch Ljava/sql/SQLException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    .line 567
    invoke-static {v0}, Lorg/h2/message/DbException;->convertToIOException(Ljava/lang/Throwable;)Ljava/io/IOException;

    move-result-object v0

    throw v0
.end method

.method public read()I
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 537
    :goto_0
    :try_start_0
    iget-object v0, p0, Lorg/h2/command/dml/ScriptCommand$3;->current:Ljava/io/InputStream;

    if-nez v0, :cond_2

    .line 538
    iget-boolean v0, p0, Lorg/h2/command/dml/ScriptCommand$3;->closed:Z

    const/4 v1, -0x1

    if-eqz v0, :cond_0

    return v1

    .line 541
    :cond_0
    iget-object v0, p0, Lorg/h2/command/dml/ScriptCommand$3;->val$rs:Ljava/sql/ResultSet;

    invoke-interface {v0}, Ljava/sql/ResultSet;->next()Z

    move-result v0

    if-nez v0, :cond_1

    .line 542
    invoke-virtual {p0}, Lorg/h2/command/dml/ScriptCommand$3;->close()V

    return v1

    .line 545
    :cond_1
    iget-object v0, p0, Lorg/h2/command/dml/ScriptCommand$3;->val$rs:Ljava/sql/ResultSet;

    const/4 v1, 0x1

    invoke-interface {v0, v1}, Ljava/sql/ResultSet;->getBinaryStream(I)Ljava/io/InputStream;

    move-result-object v0

    iput-object v0, p0, Lorg/h2/command/dml/ScriptCommand$3;->current:Ljava/io/InputStream;

    .line 546
    new-instance v0, Ljava/io/BufferedInputStream;

    iget-object v1, p0, Lorg/h2/command/dml/ScriptCommand$3;->current:Ljava/io/InputStream;

    invoke-direct {v0, v1}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V

    iput-object v0, p0, Lorg/h2/command/dml/ScriptCommand$3;->current:Ljava/io/InputStream;

    .line 548
    :cond_2
    iget-object v0, p0, Lorg/h2/command/dml/ScriptCommand$3;->current:Ljava/io/InputStream;

    invoke-virtual {v0}, Ljava/io/InputStream;->read()I

    move-result v0

    if-ltz v0, :cond_3

    return v0

    :cond_3
    const/4 v0, 0x0

    .line 552
    iput-object v0, p0, Lorg/h2/command/dml/ScriptCommand$3;->current:Ljava/io/InputStream;
    :try_end_0
    .catch Ljava/sql/SQLException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 554
    invoke-static {v0}, Lorg/h2/message/DbException;->convertToIOException(Ljava/lang/Throwable;)Ljava/io/IOException;

    move-result-object v0

    throw v0
.end method
