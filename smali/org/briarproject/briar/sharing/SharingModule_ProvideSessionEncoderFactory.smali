.class public final Lorg/briarproject/briar/sharing/SharingModule_ProvideSessionEncoderFactory;
.super Ljava/lang/Object;
.source "SharingModule_ProvideSessionEncoderFactory.java"

# interfaces
.implements Ldagger/internal/Factory;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ldagger/internal/Factory<",
        "Lorg/briarproject/briar/sharing/SessionEncoder;",
        ">;"
    }
.end annotation


# instance fields
.field private final module:Lorg/briarproject/briar/sharing/SharingModule;

.field private final sessionEncoderProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lorg/briarproject/briar/sharing/SessionEncoderImpl;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lorg/briarproject/briar/sharing/SharingModule;Ljavax/inject/Provider;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/briarproject/briar/sharing/SharingModule;",
            "Ljavax/inject/Provider<",
            "Lorg/briarproject/briar/sharing/SessionEncoderImpl;",
            ">;)V"
        }
    .end annotation

    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 19
    iput-object p1, p0, Lorg/briarproject/briar/sharing/SharingModule_ProvideSessionEncoderFactory;->module:Lorg/briarproject/briar/sharing/SharingModule;

    .line 20
    iput-object p2, p0, Lorg/briarproject/briar/sharing/SharingModule_ProvideSessionEncoderFactory;->sessionEncoderProvider:Ljavax/inject/Provider;

    return-void
.end method

.method public static create(Lorg/briarproject/briar/sharing/SharingModule;Ljavax/inject/Provider;)Lorg/briarproject/briar/sharing/SharingModule_ProvideSessionEncoderFactory;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/briarproject/briar/sharing/SharingModule;",
            "Ljavax/inject/Provider<",
            "Lorg/briarproject/briar/sharing/SessionEncoderImpl;",
            ">;)",
            "Lorg/briarproject/briar/sharing/SharingModule_ProvideSessionEncoderFactory;"
        }
    .end annotation

    .line 35
    new-instance v0, Lorg/briarproject/briar/sharing/SharingModule_ProvideSessionEncoderFactory;

    invoke-direct {v0, p0, p1}, Lorg/briarproject/briar/sharing/SharingModule_ProvideSessionEncoderFactory;-><init>(Lorg/briarproject/briar/sharing/SharingModule;Ljavax/inject/Provider;)V

    return-object v0
.end method

.method public static provideInstance(Lorg/briarproject/briar/sharing/SharingModule;Ljavax/inject/Provider;)Lorg/briarproject/briar/sharing/SessionEncoder;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/briarproject/briar/sharing/SharingModule;",
            "Ljavax/inject/Provider<",
            "Lorg/briarproject/briar/sharing/SessionEncoderImpl;",
            ">;)",
            "Lorg/briarproject/briar/sharing/SessionEncoder;"
        }
    .end annotation

    .line 30
    invoke-interface {p1}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object p1

    invoke-static {p0, p1}, Lorg/briarproject/briar/sharing/SharingModule_ProvideSessionEncoderFactory;->proxyProvideSessionEncoder(Lorg/briarproject/briar/sharing/SharingModule;Ljava/lang/Object;)Lorg/briarproject/briar/sharing/SessionEncoder;

    move-result-object p0

    return-object p0
.end method

.method public static proxyProvideSessionEncoder(Lorg/briarproject/briar/sharing/SharingModule;Ljava/lang/Object;)Lorg/briarproject/briar/sharing/SessionEncoder;
    .locals 0

    .line 40
    check-cast p1, Lorg/briarproject/briar/sharing/SessionEncoderImpl;

    .line 41
    invoke-virtual {p0, p1}, Lorg/briarproject/briar/sharing/SharingModule;->provideSessionEncoder(Lorg/briarproject/briar/sharing/SessionEncoderImpl;)Lorg/briarproject/briar/sharing/SessionEncoder;

    move-result-object p0

    const-string p1, "Cannot return null from a non-@Nullable @Provides method"

    .line 40
    invoke-static {p0, p1}, Ldagger/internal/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lorg/briarproject/briar/sharing/SessionEncoder;

    return-object p0
.end method


# virtual methods
.method public bridge synthetic get()Ljava/lang/Object;
    .locals 1

    .line 8
    invoke-virtual {p0}, Lorg/briarproject/briar/sharing/SharingModule_ProvideSessionEncoderFactory;->get()Lorg/briarproject/briar/sharing/SessionEncoder;

    move-result-object v0

    return-object v0
.end method

.method public get()Lorg/briarproject/briar/sharing/SessionEncoder;
    .locals 2

    .line 25
    iget-object v0, p0, Lorg/briarproject/briar/sharing/SharingModule_ProvideSessionEncoderFactory;->module:Lorg/briarproject/briar/sharing/SharingModule;

    iget-object v1, p0, Lorg/briarproject/briar/sharing/SharingModule_ProvideSessionEncoderFactory;->sessionEncoderProvider:Ljavax/inject/Provider;

    invoke-static {v0, v1}, Lorg/briarproject/briar/sharing/SharingModule_ProvideSessionEncoderFactory;->provideInstance(Lorg/briarproject/briar/sharing/SharingModule;Ljavax/inject/Provider;)Lorg/briarproject/briar/sharing/SessionEncoder;

    move-result-object v0

    return-object v0
.end method
