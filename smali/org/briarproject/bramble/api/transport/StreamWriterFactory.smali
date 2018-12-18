.class public interface abstract Lorg/briarproject/bramble/api/transport/StreamWriterFactory;
.super Ljava/lang/Object;
.source "StreamWriterFactory.java"


# annotations
.annotation runtime Lorg/briarproject/bramble/api/nullsafety/NotNullByDefault;
.end annotation


# virtual methods
.method public abstract createContactExchangeStreamWriter(Ljava/io/OutputStream;Lorg/briarproject/bramble/api/crypto/SecretKey;)Lorg/briarproject/bramble/api/transport/StreamWriter;
.end method

.method public abstract createStreamWriter(Ljava/io/OutputStream;Lorg/briarproject/bramble/api/transport/StreamContext;)Lorg/briarproject/bramble/api/transport/StreamWriter;
.end method
