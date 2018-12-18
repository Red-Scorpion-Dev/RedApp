.class public interface abstract Lorg/briarproject/bramble/api/reliability/ReliabilityLayer;
.super Ljava/lang/Object;
.source "ReliabilityLayer.java"

# interfaces
.implements Lorg/briarproject/bramble/api/reliability/ReadHandler;


# annotations
.annotation runtime Lorg/briarproject/bramble/api/nullsafety/NotNullByDefault;
.end annotation


# virtual methods
.method public abstract getInputStream()Ljava/io/InputStream;
.end method

.method public abstract getOutputStream()Ljava/io/OutputStream;
.end method

.method public abstract start()V
.end method

.method public abstract stop()V
.end method
