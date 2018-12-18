.class public interface abstract Lorg/h2/engine/SessionInterface;
.super Ljava/lang/Object;
.source "SessionInterface.java"

# interfaces
.implements Ljava/io/Closeable;


# virtual methods
.method public abstract addTemporaryLob(Lorg/h2/value/Value;)V
.end method

.method public abstract afterWriting()V
.end method

.method public abstract cancel()V
.end method

.method public abstract close()V
.end method

.method public abstract getAutoCommit()Z
.end method

.method public abstract getClusterServers()Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getDataHandler()Lorg/h2/store/DataHandler;
.end method

.method public abstract getPowerOffCount()I
.end method

.method public abstract getTrace()Lorg/h2/message/Trace;
.end method

.method public abstract hasPendingTransaction()Z
.end method

.method public abstract isClosed()Z
.end method

.method public abstract isReconnectNeeded(Z)Z
.end method

.method public abstract prepareCommand(Ljava/lang/String;I)Lorg/h2/command/CommandInterface;
.end method

.method public abstract reconnect(Z)Lorg/h2/engine/SessionInterface;
.end method

.method public abstract setAutoCommit(Z)V
.end method

.method public abstract setPowerOffCount(I)V
.end method
