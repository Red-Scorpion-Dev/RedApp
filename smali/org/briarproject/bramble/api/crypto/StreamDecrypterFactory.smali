.class public interface abstract Lorg/briarproject/bramble/api/crypto/StreamDecrypterFactory;
.super Ljava/lang/Object;
.source "StreamDecrypterFactory.java"


# annotations
.annotation runtime Lorg/briarproject/bramble/api/nullsafety/NotNullByDefault;
.end annotation


# virtual methods
.method public abstract createContactExchangeStreamDecrypter(Ljava/io/InputStream;Lorg/briarproject/bramble/api/crypto/SecretKey;)Lorg/briarproject/bramble/api/crypto/StreamDecrypter;
.end method

.method public abstract createStreamDecrypter(Ljava/io/InputStream;Lorg/briarproject/bramble/api/transport/StreamContext;)Lorg/briarproject/bramble/api/crypto/StreamDecrypter;
.end method
