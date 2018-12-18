.class public final Lorg/briarproject/bramble/crypto/CryptoModule_ProvideAuthenticatedCipherFactory;
.super Ljava/lang/Object;
.source "CryptoModule_ProvideAuthenticatedCipherFactory.java"

# interfaces
.implements Ldagger/internal/Factory;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ldagger/internal/Factory<",
        "Lorg/briarproject/bramble/crypto/AuthenticatedCipher;",
        ">;"
    }
.end annotation


# instance fields
.field private final module:Lorg/briarproject/bramble/crypto/CryptoModule;


# direct methods
.method public constructor <init>(Lorg/briarproject/bramble/crypto/CryptoModule;)V
    .locals 0

    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 16
    iput-object p1, p0, Lorg/briarproject/bramble/crypto/CryptoModule_ProvideAuthenticatedCipherFactory;->module:Lorg/briarproject/bramble/crypto/CryptoModule;

    return-void
.end method

.method public static create(Lorg/briarproject/bramble/crypto/CryptoModule;)Lorg/briarproject/bramble/crypto/CryptoModule_ProvideAuthenticatedCipherFactory;
    .locals 1

    .line 29
    new-instance v0, Lorg/briarproject/bramble/crypto/CryptoModule_ProvideAuthenticatedCipherFactory;

    invoke-direct {v0, p0}, Lorg/briarproject/bramble/crypto/CryptoModule_ProvideAuthenticatedCipherFactory;-><init>(Lorg/briarproject/bramble/crypto/CryptoModule;)V

    return-object v0
.end method

.method public static provideInstance(Lorg/briarproject/bramble/crypto/CryptoModule;)Lorg/briarproject/bramble/crypto/AuthenticatedCipher;
    .locals 0

    .line 25
    invoke-static {p0}, Lorg/briarproject/bramble/crypto/CryptoModule_ProvideAuthenticatedCipherFactory;->proxyProvideAuthenticatedCipher(Lorg/briarproject/bramble/crypto/CryptoModule;)Lorg/briarproject/bramble/crypto/AuthenticatedCipher;

    move-result-object p0

    return-object p0
.end method

.method public static proxyProvideAuthenticatedCipher(Lorg/briarproject/bramble/crypto/CryptoModule;)Lorg/briarproject/bramble/crypto/AuthenticatedCipher;
    .locals 1

    .line 34
    invoke-virtual {p0}, Lorg/briarproject/bramble/crypto/CryptoModule;->provideAuthenticatedCipher()Lorg/briarproject/bramble/crypto/AuthenticatedCipher;

    move-result-object p0

    const-string v0, "Cannot return null from a non-@Nullable @Provides method"

    .line 33
    invoke-static {p0, v0}, Ldagger/internal/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lorg/briarproject/bramble/crypto/AuthenticatedCipher;

    return-object p0
.end method


# virtual methods
.method public bridge synthetic get()Ljava/lang/Object;
    .locals 1

    .line 7
    invoke-virtual {p0}, Lorg/briarproject/bramble/crypto/CryptoModule_ProvideAuthenticatedCipherFactory;->get()Lorg/briarproject/bramble/crypto/AuthenticatedCipher;

    move-result-object v0

    return-object v0
.end method

.method public get()Lorg/briarproject/bramble/crypto/AuthenticatedCipher;
    .locals 1

    .line 21
    iget-object v0, p0, Lorg/briarproject/bramble/crypto/CryptoModule_ProvideAuthenticatedCipherFactory;->module:Lorg/briarproject/bramble/crypto/CryptoModule;

    invoke-static {v0}, Lorg/briarproject/bramble/crypto/CryptoModule_ProvideAuthenticatedCipherFactory;->provideInstance(Lorg/briarproject/bramble/crypto/CryptoModule;)Lorg/briarproject/bramble/crypto/AuthenticatedCipher;

    move-result-object v0

    return-object v0
.end method
