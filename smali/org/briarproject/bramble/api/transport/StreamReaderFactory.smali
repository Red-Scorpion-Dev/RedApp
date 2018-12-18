.class public interface abstract Lorg/briarproject/bramble/api/transport/StreamReaderFactory;
.super Ljava/lang/Object;
.source "StreamReaderFactory.java"


# annotations
.annotation runtime Lorg/briarproject/bramble/api/nullsafety/NotNullByDefault;
.end annotation


# virtual methods
.method public abstract createContactExchangeStreamReader(Ljava/io/InputStream;Lorg/briarproject/bramble/api/crypto/SecretKey;)Ljava/io/InputStream;
.end method

.method public abstract createStreamReader(Ljava/io/InputStream;Lorg/briarproject/bramble/api/transport/StreamContext;)Ljava/io/InputStream;
.end method
