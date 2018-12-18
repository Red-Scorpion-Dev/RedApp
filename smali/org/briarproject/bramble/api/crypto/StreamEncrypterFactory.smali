.class public interface abstract Lorg/briarproject/bramble/api/crypto/StreamEncrypterFactory;
.super Ljava/lang/Object;
.source "StreamEncrypterFactory.java"


# annotations
.annotation runtime Lorg/briarproject/bramble/api/nullsafety/NotNullByDefault;
.end annotation


# virtual methods
.method public abstract createContactExchangeStreamDecrypter(Ljava/io/OutputStream;Lorg/briarproject/bramble/api/crypto/SecretKey;)Lorg/briarproject/bramble/api/crypto/StreamEncrypter;
.end method

.method public abstract createStreamEncrypter(Ljava/io/OutputStream;Lorg/briarproject/bramble/api/transport/StreamContext;)Lorg/briarproject/bramble/api/crypto/StreamEncrypter;
.end method
