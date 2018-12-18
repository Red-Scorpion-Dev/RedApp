.class Lorg/briarproject/bramble/transport/StreamReaderFactoryImpl;
.super Ljava/lang/Object;
.source "StreamReaderFactoryImpl.java"

# interfaces
.implements Lorg/briarproject/bramble/api/transport/StreamReaderFactory;


# annotations
.annotation runtime Lorg/briarproject/bramble/api/nullsafety/NotNullByDefault;
.end annotation


# instance fields
.field private final streamDecrypterFactory:Lorg/briarproject/bramble/api/crypto/StreamDecrypterFactory;


# direct methods
.method constructor <init>(Lorg/briarproject/bramble/api/crypto/StreamDecrypterFactory;)V
    .locals 0

    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 22
    iput-object p1, p0, Lorg/briarproject/bramble/transport/StreamReaderFactoryImpl;->streamDecrypterFactory:Lorg/briarproject/bramble/api/crypto/StreamDecrypterFactory;

    return-void
.end method


# virtual methods
.method public createContactExchangeStreamReader(Ljava/io/InputStream;Lorg/briarproject/bramble/api/crypto/SecretKey;)Ljava/io/InputStream;
    .locals 2

    .line 34
    new-instance v0, Lorg/briarproject/bramble/transport/StreamReaderImpl;

    iget-object v1, p0, Lorg/briarproject/bramble/transport/StreamReaderFactoryImpl;->streamDecrypterFactory:Lorg/briarproject/bramble/api/crypto/StreamDecrypterFactory;

    .line 35
    invoke-interface {v1, p1, p2}, Lorg/briarproject/bramble/api/crypto/StreamDecrypterFactory;->createContactExchangeStreamDecrypter(Ljava/io/InputStream;Lorg/briarproject/bramble/api/crypto/SecretKey;)Lorg/briarproject/bramble/api/crypto/StreamDecrypter;

    move-result-object p1

    invoke-direct {v0, p1}, Lorg/briarproject/bramble/transport/StreamReaderImpl;-><init>(Lorg/briarproject/bramble/api/crypto/StreamDecrypter;)V

    return-object v0
.end method

.method public createStreamReader(Ljava/io/InputStream;Lorg/briarproject/bramble/api/transport/StreamContext;)Ljava/io/InputStream;
    .locals 2

    .line 27
    new-instance v0, Lorg/briarproject/bramble/transport/StreamReaderImpl;

    iget-object v1, p0, Lorg/briarproject/bramble/transport/StreamReaderFactoryImpl;->streamDecrypterFactory:Lorg/briarproject/bramble/api/crypto/StreamDecrypterFactory;

    .line 28
    invoke-interface {v1, p1, p2}, Lorg/briarproject/bramble/api/crypto/StreamDecrypterFactory;->createStreamDecrypter(Ljava/io/InputStream;Lorg/briarproject/bramble/api/transport/StreamContext;)Lorg/briarproject/bramble/api/crypto/StreamDecrypter;

    move-result-object p1

    invoke-direct {v0, p1}, Lorg/briarproject/bramble/transport/StreamReaderImpl;-><init>(Lorg/briarproject/bramble/api/crypto/StreamDecrypter;)V

    return-object v0
.end method
