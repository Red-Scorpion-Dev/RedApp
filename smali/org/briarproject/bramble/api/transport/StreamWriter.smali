.class public interface abstract Lorg/briarproject/bramble/api/transport/StreamWriter;
.super Ljava/lang/Object;
.source "StreamWriter.java"


# virtual methods
.method public abstract getOutputStream()Ljava/io/OutputStream;
.end method

.method public abstract sendEndOfStream()V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method
