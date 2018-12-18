.class Lorg/briarproject/bramble/transport/StreamWriterFactoryImpl;
.super Ljava/lang/Object;
.source "StreamWriterFactoryImpl.java"

# interfaces
.implements Lorg/briarproject/bramble/api/transport/StreamWriterFactory;


# annotations
.annotation runtime Lorg/briarproject/bramble/api/nullsafety/NotNullByDefault;
.end annotation


# instance fields
.field private final streamEncrypterFactory:Lorg/briarproject/bramble/api/crypto/StreamEncrypterFactory;


# direct methods
.method constructor <init>(Lorg/briarproject/bramble/api/crypto/StreamEncrypterFactory;)V
    .locals 0

    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 23
    iput-object p1, p0, Lorg/briarproject/bramble/transport/StreamWriterFactoryImpl;->streamEncrypterFactory:Lorg/briarproject/bramble/api/crypto/StreamEncrypterFactory;

    return-void
.end method


# virtual methods
.method public createContactExchangeStreamWriter(Ljava/io/OutputStream;Lorg/briarproject/bramble/api/crypto/SecretKey;)Lorg/briarproject/bramble/api/transport/StreamWriter;
    .locals 2

    .line 36
    new-instance v0, Lorg/briarproject/bramble/transport/StreamWriterImpl;

    iget-object v1, p0, Lorg/briarproject/bramble/transport/StreamWriterFactoryImpl;->streamEncrypterFactory:Lorg/briarproject/bramble/api/crypto/StreamEncrypterFactory;

    .line 37
    invoke-interface {v1, p1, p2}, Lorg/briarproject/bramble/api/crypto/StreamEncrypterFactory;->createContactExchangeStreamDecrypter(Ljava/io/OutputStream;Lorg/briarproject/bramble/api/crypto/SecretKey;)Lorg/briarproject/bramble/api/crypto/StreamEncrypter;

    move-result-object p1

    invoke-direct {v0, p1}, Lorg/briarproject/bramble/transport/StreamWriterImpl;-><init>(Lorg/briarproject/bramble/api/crypto/StreamEncrypter;)V

    return-object v0
.end method

.method public createStreamWriter(Ljava/io/OutputStream;Lorg/briarproject/bramble/api/transport/StreamContext;)Lorg/briarproject/bramble/api/transport/StreamWriter;
    .locals 2

    .line 29
    new-instance v0, Lorg/briarproject/bramble/transport/StreamWriterImpl;

    iget-object v1, p0, Lorg/briarproject/bramble/transport/StreamWriterFactoryImpl;->streamEncrypterFactory:Lorg/briarproject/bramble/api/crypto/StreamEncrypterFactory;

    .line 30
    invoke-interface {v1, p1, p2}, Lorg/briarproject/bramble/api/crypto/StreamEncrypterFactory;->createStreamEncrypter(Ljava/io/OutputStream;Lorg/briarproject/bramble/api/transport/StreamContext;)Lorg/briarproject/bramble/api/crypto/StreamEncrypter;

    move-result-object p1

    invoke-direct {v0, p1}, Lorg/briarproject/bramble/transport/StreamWriterImpl;-><init>(Lorg/briarproject/bramble/api/crypto/StreamEncrypter;)V

    return-object v0
.end method
