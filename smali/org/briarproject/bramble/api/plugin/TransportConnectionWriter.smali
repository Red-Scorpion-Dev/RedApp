.class public interface abstract Lorg/briarproject/bramble/api/plugin/TransportConnectionWriter;
.super Ljava/lang/Object;
.source "TransportConnectionWriter.java"


# annotations
.annotation runtime Lorg/briarproject/bramble/api/nullsafety/NotNullByDefault;
.end annotation


# virtual methods
.method public abstract dispose(Z)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public abstract getMaxIdleTime()I
.end method

.method public abstract getMaxLatency()I
.end method

.method public abstract getOutputStream()Ljava/io/OutputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method
