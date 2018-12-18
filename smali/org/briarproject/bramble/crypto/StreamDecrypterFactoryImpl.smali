.class Lorg/briarproject/bramble/crypto/StreamDecrypterFactoryImpl;
.super Ljava/lang/Object;
.source "StreamDecrypterFactoryImpl.java"

# interfaces
.implements Lorg/briarproject/bramble/api/crypto/StreamDecrypterFactory;


# annotations
.annotation runtime Lorg/briarproject/bramble/api/nullsafety/NotNullByDefault;
.end annotation


# instance fields
.field private final cipherProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lorg/briarproject/bramble/crypto/AuthenticatedCipher;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Ljavax/inject/Provider;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavax/inject/Provider<",
            "Lorg/briarproject/bramble/crypto/AuthenticatedCipher;",
            ">;)V"
        }
    .end annotation

    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 23
    iput-object p1, p0, Lorg/briarproject/bramble/crypto/StreamDecrypterFactoryImpl;->cipherProvider:Ljavax/inject/Provider;

    return-void
.end method


# virtual methods
.method public createContactExchangeStreamDecrypter(Ljava/io/InputStream;Lorg/briarproject/bramble/api/crypto/SecretKey;)Lorg/briarproject/bramble/api/crypto/StreamDecrypter;
    .locals 7

    .line 37
    new-instance v6, Lorg/briarproject/bramble/crypto/StreamDecrypterImpl;

    iget-object v0, p0, Lorg/briarproject/bramble/crypto/StreamDecrypterFactoryImpl;->cipherProvider:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    move-object v2, v0

    check-cast v2, Lorg/briarproject/bramble/crypto/AuthenticatedCipher;

    const-wide/16 v3, 0x0

    move-object v0, v6

    move-object v1, p1

    move-object v5, p2

    invoke-direct/range {v0 .. v5}, Lorg/briarproject/bramble/crypto/StreamDecrypterImpl;-><init>(Ljava/io/InputStream;Lorg/briarproject/bramble/crypto/AuthenticatedCipher;JLorg/briarproject/bramble/api/crypto/SecretKey;)V

    return-object v6
.end method

.method public createStreamDecrypter(Ljava/io/InputStream;Lorg/briarproject/bramble/api/transport/StreamContext;)Lorg/briarproject/bramble/api/crypto/StreamDecrypter;
    .locals 7

    .line 29
    iget-object v0, p0, Lorg/briarproject/bramble/crypto/StreamDecrypterFactoryImpl;->cipherProvider:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    move-object v3, v0

    check-cast v3, Lorg/briarproject/bramble/crypto/AuthenticatedCipher;

    .line 30
    new-instance v0, Lorg/briarproject/bramble/crypto/StreamDecrypterImpl;

    invoke-virtual {p2}, Lorg/briarproject/bramble/api/transport/StreamContext;->getStreamNumber()J

    move-result-wide v4

    .line 31
    invoke-virtual {p2}, Lorg/briarproject/bramble/api/transport/StreamContext;->getHeaderKey()Lorg/briarproject/bramble/api/crypto/SecretKey;

    move-result-object v6

    move-object v1, v0

    move-object v2, p1

    invoke-direct/range {v1 .. v6}, Lorg/briarproject/bramble/crypto/StreamDecrypterImpl;-><init>(Ljava/io/InputStream;Lorg/briarproject/bramble/crypto/AuthenticatedCipher;JLorg/briarproject/bramble/api/crypto/SecretKey;)V

    return-object v0
.end method
