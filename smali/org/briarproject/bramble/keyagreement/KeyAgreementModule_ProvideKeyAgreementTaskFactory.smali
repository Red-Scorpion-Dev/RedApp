.class public final Lorg/briarproject/bramble/keyagreement/KeyAgreementModule_ProvideKeyAgreementTaskFactory;
.super Ljava/lang/Object;
.source "KeyAgreementModule_ProvideKeyAgreementTaskFactory.java"

# interfaces
.implements Ldagger/internal/Factory;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ldagger/internal/Factory<",
        "Lorg/briarproject/bramble/api/keyagreement/KeyAgreementTask;",
        ">;"
    }
.end annotation


# instance fields
.field private final keyAgreementTaskProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lorg/briarproject/bramble/keyagreement/KeyAgreementTaskImpl;",
            ">;"
        }
    .end annotation
.end field

.field private final module:Lorg/briarproject/bramble/keyagreement/KeyAgreementModule;


# direct methods
.method public constructor <init>(Lorg/briarproject/bramble/keyagreement/KeyAgreementModule;Ljavax/inject/Provider;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/briarproject/bramble/keyagreement/KeyAgreementModule;",
            "Ljavax/inject/Provider<",
            "Lorg/briarproject/bramble/keyagreement/KeyAgreementTaskImpl;",
            ">;)V"
        }
    .end annotation

    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 21
    iput-object p1, p0, Lorg/briarproject/bramble/keyagreement/KeyAgreementModule_ProvideKeyAgreementTaskFactory;->module:Lorg/briarproject/bramble/keyagreement/KeyAgreementModule;

    .line 22
    iput-object p2, p0, Lorg/briarproject/bramble/keyagreement/KeyAgreementModule_ProvideKeyAgreementTaskFactory;->keyAgreementTaskProvider:Ljavax/inject/Provider;

    return-void
.end method

.method public static create(Lorg/briarproject/bramble/keyagreement/KeyAgreementModule;Ljavax/inject/Provider;)Lorg/briarproject/bramble/keyagreement/KeyAgreementModule_ProvideKeyAgreementTaskFactory;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/briarproject/bramble/keyagreement/KeyAgreementModule;",
            "Ljavax/inject/Provider<",
            "Lorg/briarproject/bramble/keyagreement/KeyAgreementTaskImpl;",
            ">;)",
            "Lorg/briarproject/bramble/keyagreement/KeyAgreementModule_ProvideKeyAgreementTaskFactory;"
        }
    .end annotation

    .line 37
    new-instance v0, Lorg/briarproject/bramble/keyagreement/KeyAgreementModule_ProvideKeyAgreementTaskFactory;

    invoke-direct {v0, p0, p1}, Lorg/briarproject/bramble/keyagreement/KeyAgreementModule_ProvideKeyAgreementTaskFactory;-><init>(Lorg/briarproject/bramble/keyagreement/KeyAgreementModule;Ljavax/inject/Provider;)V

    return-object v0
.end method

.method public static provideInstance(Lorg/briarproject/bramble/keyagreement/KeyAgreementModule;Ljavax/inject/Provider;)Lorg/briarproject/bramble/api/keyagreement/KeyAgreementTask;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/briarproject/bramble/keyagreement/KeyAgreementModule;",
            "Ljavax/inject/Provider<",
            "Lorg/briarproject/bramble/keyagreement/KeyAgreementTaskImpl;",
            ">;)",
            "Lorg/briarproject/bramble/api/keyagreement/KeyAgreementTask;"
        }
    .end annotation

    .line 32
    invoke-interface {p1}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object p1

    invoke-static {p0, p1}, Lorg/briarproject/bramble/keyagreement/KeyAgreementModule_ProvideKeyAgreementTaskFactory;->proxyProvideKeyAgreementTask(Lorg/briarproject/bramble/keyagreement/KeyAgreementModule;Ljava/lang/Object;)Lorg/briarproject/bramble/api/keyagreement/KeyAgreementTask;

    move-result-object p0

    return-object p0
.end method

.method public static proxyProvideKeyAgreementTask(Lorg/briarproject/bramble/keyagreement/KeyAgreementModule;Ljava/lang/Object;)Lorg/briarproject/bramble/api/keyagreement/KeyAgreementTask;
    .locals 0

    .line 42
    check-cast p1, Lorg/briarproject/bramble/keyagreement/KeyAgreementTaskImpl;

    .line 43
    invoke-virtual {p0, p1}, Lorg/briarproject/bramble/keyagreement/KeyAgreementModule;->provideKeyAgreementTask(Lorg/briarproject/bramble/keyagreement/KeyAgreementTaskImpl;)Lorg/briarproject/bramble/api/keyagreement/KeyAgreementTask;

    move-result-object p0

    const-string p1, "Cannot return null from a non-@Nullable @Provides method"

    .line 42
    invoke-static {p0, p1}, Ldagger/internal/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lorg/briarproject/bramble/api/keyagreement/KeyAgreementTask;

    return-object p0
.end method


# virtual methods
.method public bridge synthetic get()Ljava/lang/Object;
    .locals 1

    .line 9
    invoke-virtual {p0}, Lorg/briarproject/bramble/keyagreement/KeyAgreementModule_ProvideKeyAgreementTaskFactory;->get()Lorg/briarproject/bramble/api/keyagreement/KeyAgreementTask;

    move-result-object v0

    return-object v0
.end method

.method public get()Lorg/briarproject/bramble/api/keyagreement/KeyAgreementTask;
    .locals 2

    .line 27
    iget-object v0, p0, Lorg/briarproject/bramble/keyagreement/KeyAgreementModule_ProvideKeyAgreementTaskFactory;->module:Lorg/briarproject/bramble/keyagreement/KeyAgreementModule;

    iget-object v1, p0, Lorg/briarproject/bramble/keyagreement/KeyAgreementModule_ProvideKeyAgreementTaskFactory;->keyAgreementTaskProvider:Ljavax/inject/Provider;

    invoke-static {v0, v1}, Lorg/briarproject/bramble/keyagreement/KeyAgreementModule_ProvideKeyAgreementTaskFactory;->provideInstance(Lorg/briarproject/bramble/keyagreement/KeyAgreementModule;Ljavax/inject/Provider;)Lorg/briarproject/bramble/api/keyagreement/KeyAgreementTask;

    move-result-object v0

    return-object v0
.end method
