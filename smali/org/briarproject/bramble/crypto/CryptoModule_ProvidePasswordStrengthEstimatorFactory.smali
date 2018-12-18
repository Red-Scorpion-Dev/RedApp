.class public final Lorg/briarproject/bramble/crypto/CryptoModule_ProvidePasswordStrengthEstimatorFactory;
.super Ljava/lang/Object;
.source "CryptoModule_ProvidePasswordStrengthEstimatorFactory.java"

# interfaces
.implements Ldagger/internal/Factory;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ldagger/internal/Factory<",
        "Lorg/briarproject/bramble/api/crypto/PasswordStrengthEstimator;",
        ">;"
    }
.end annotation


# instance fields
.field private final module:Lorg/briarproject/bramble/crypto/CryptoModule;


# direct methods
.method public constructor <init>(Lorg/briarproject/bramble/crypto/CryptoModule;)V
    .locals 0

    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 17
    iput-object p1, p0, Lorg/briarproject/bramble/crypto/CryptoModule_ProvidePasswordStrengthEstimatorFactory;->module:Lorg/briarproject/bramble/crypto/CryptoModule;

    return-void
.end method

.method public static create(Lorg/briarproject/bramble/crypto/CryptoModule;)Lorg/briarproject/bramble/crypto/CryptoModule_ProvidePasswordStrengthEstimatorFactory;
    .locals 1

    .line 30
    new-instance v0, Lorg/briarproject/bramble/crypto/CryptoModule_ProvidePasswordStrengthEstimatorFactory;

    invoke-direct {v0, p0}, Lorg/briarproject/bramble/crypto/CryptoModule_ProvidePasswordStrengthEstimatorFactory;-><init>(Lorg/briarproject/bramble/crypto/CryptoModule;)V

    return-object v0
.end method

.method public static provideInstance(Lorg/briarproject/bramble/crypto/CryptoModule;)Lorg/briarproject/bramble/api/crypto/PasswordStrengthEstimator;
    .locals 0

    .line 26
    invoke-static {p0}, Lorg/briarproject/bramble/crypto/CryptoModule_ProvidePasswordStrengthEstimatorFactory;->proxyProvidePasswordStrengthEstimator(Lorg/briarproject/bramble/crypto/CryptoModule;)Lorg/briarproject/bramble/api/crypto/PasswordStrengthEstimator;

    move-result-object p0

    return-object p0
.end method

.method public static proxyProvidePasswordStrengthEstimator(Lorg/briarproject/bramble/crypto/CryptoModule;)Lorg/briarproject/bramble/api/crypto/PasswordStrengthEstimator;
    .locals 1

    .line 36
    invoke-virtual {p0}, Lorg/briarproject/bramble/crypto/CryptoModule;->providePasswordStrengthEstimator()Lorg/briarproject/bramble/api/crypto/PasswordStrengthEstimator;

    move-result-object p0

    const-string v0, "Cannot return null from a non-@Nullable @Provides method"

    .line 35
    invoke-static {p0, v0}, Ldagger/internal/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lorg/briarproject/bramble/api/crypto/PasswordStrengthEstimator;

    return-object p0
.end method


# virtual methods
.method public bridge synthetic get()Ljava/lang/Object;
    .locals 1

    .line 8
    invoke-virtual {p0}, Lorg/briarproject/bramble/crypto/CryptoModule_ProvidePasswordStrengthEstimatorFactory;->get()Lorg/briarproject/bramble/api/crypto/PasswordStrengthEstimator;

    move-result-object v0

    return-object v0
.end method

.method public get()Lorg/briarproject/bramble/api/crypto/PasswordStrengthEstimator;
    .locals 1

    .line 22
    iget-object v0, p0, Lorg/briarproject/bramble/crypto/CryptoModule_ProvidePasswordStrengthEstimatorFactory;->module:Lorg/briarproject/bramble/crypto/CryptoModule;

    invoke-static {v0}, Lorg/briarproject/bramble/crypto/CryptoModule_ProvidePasswordStrengthEstimatorFactory;->provideInstance(Lorg/briarproject/bramble/crypto/CryptoModule;)Lorg/briarproject/bramble/api/crypto/PasswordStrengthEstimator;

    move-result-object v0

    return-object v0
.end method
