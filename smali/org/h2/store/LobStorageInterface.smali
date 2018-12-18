.class public interface abstract Lorg/h2/store/LobStorageInterface;
.super Ljava/lang/Object;
.source "LobStorageInterface.java"


# virtual methods
.method public abstract copyLob(Lorg/h2/value/ValueLobDb;IJ)Lorg/h2/value/ValueLobDb;
.end method

.method public abstract createBlob(Ljava/io/InputStream;J)Lorg/h2/value/Value;
.end method

.method public abstract createClob(Ljava/io/Reader;J)Lorg/h2/value/Value;
.end method

.method public abstract getInputStream(Lorg/h2/value/ValueLobDb;[BJ)Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public abstract init()V
.end method

.method public abstract isReadOnly()Z
.end method

.method public abstract removeAllForTable(I)V
.end method

.method public abstract removeLob(Lorg/h2/value/ValueLobDb;)V
.end method

.method public abstract setTable(Lorg/h2/value/ValueLobDb;I)V
.end method
