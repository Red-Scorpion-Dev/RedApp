.class public final Lorg/briarproject/bramble/contact/ContactModule_ProvideContactExchangeTaskFactory;
.super Ljava/lang/Object;
.source "ContactModule_ProvideContactExchangeTaskFactory.java"

# interfaces
.implements Ldagger/internal/Factory;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ldagger/internal/Factory<",
        "Lorg/briarproject/bramble/api/contact/ContactExchangeTask;",
        ">;"
    }
.end annotation


# instance fields
.field private final contactExchangeTaskProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lorg/briarproject/bramble/contact/ContactExchangeTaskImpl;",
            ">;"
        }
    .end annotation
.end field

.field private final module:Lorg/briarproject/bramble/contact/ContactModule;


# direct methods
.method public constructor <init>(Lorg/briarproject/bramble/contact/ContactModule;Ljavax/inject/Provider;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/briarproject/bramble/contact/ContactModule;",
            "Ljavax/inject/Provider<",
            "Lorg/briarproject/bramble/contact/ContactExchangeTaskImpl;",
            ">;)V"
        }
    .end annotation

    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 21
    iput-object p1, p0, Lorg/briarproject/bramble/contact/ContactModule_ProvideContactExchangeTaskFactory;->module:Lorg/briarproject/bramble/contact/ContactModule;

    .line 22
    iput-object p2, p0, Lorg/briarproject/bramble/contact/ContactModule_ProvideContactExchangeTaskFactory;->contactExchangeTaskProvider:Ljavax/inject/Provider;

    return-void
.end method

.method public static create(Lorg/briarproject/bramble/contact/ContactModule;Ljavax/inject/Provider;)Lorg/briarproject/bramble/contact/ContactModule_ProvideContactExchangeTaskFactory;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/briarproject/bramble/contact/ContactModule;",
            "Ljavax/inject/Provider<",
            "Lorg/briarproject/bramble/contact/ContactExchangeTaskImpl;",
            ">;)",
            "Lorg/briarproject/bramble/contact/ContactModule_ProvideContactExchangeTaskFactory;"
        }
    .end annotation

    .line 37
    new-instance v0, Lorg/briarproject/bramble/contact/ContactModule_ProvideContactExchangeTaskFactory;

    invoke-direct {v0, p0, p1}, Lorg/briarproject/bramble/contact/ContactModule_ProvideContactExchangeTaskFactory;-><init>(Lorg/briarproject/bramble/contact/ContactModule;Ljavax/inject/Provider;)V

    return-object v0
.end method

.method public static provideInstance(Lorg/briarproject/bramble/contact/ContactModule;Ljavax/inject/Provider;)Lorg/briarproject/bramble/api/contact/ContactExchangeTask;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/briarproject/bramble/contact/ContactModule;",
            "Ljavax/inject/Provider<",
            "Lorg/briarproject/bramble/contact/ContactExchangeTaskImpl;",
            ">;)",
            "Lorg/briarproject/bramble/api/contact/ContactExchangeTask;"
        }
    .end annotation

    .line 32
    invoke-interface {p1}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object p1

    invoke-static {p0, p1}, Lorg/briarproject/bramble/contact/ContactModule_ProvideContactExchangeTaskFactory;->proxyProvideContactExchangeTask(Lorg/briarproject/bramble/contact/ContactModule;Ljava/lang/Object;)Lorg/briarproject/bramble/api/contact/ContactExchangeTask;

    move-result-object p0

    return-object p0
.end method

.method public static proxyProvideContactExchangeTask(Lorg/briarproject/bramble/contact/ContactModule;Ljava/lang/Object;)Lorg/briarproject/bramble/api/contact/ContactExchangeTask;
    .locals 0

    .line 42
    check-cast p1, Lorg/briarproject/bramble/contact/ContactExchangeTaskImpl;

    .line 43
    invoke-virtual {p0, p1}, Lorg/briarproject/bramble/contact/ContactModule;->provideContactExchangeTask(Lorg/briarproject/bramble/contact/ContactExchangeTaskImpl;)Lorg/briarproject/bramble/api/contact/ContactExchangeTask;

    move-result-object p0

    const-string p1, "Cannot return null from a non-@Nullable @Provides method"

    .line 42
    invoke-static {p0, p1}, Ldagger/internal/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lorg/briarproject/bramble/api/contact/ContactExchangeTask;

    return-object p0
.end method


# virtual methods
.method public bridge synthetic get()Ljava/lang/Object;
    .locals 1

    .line 9
    invoke-virtual {p0}, Lorg/briarproject/bramble/contact/ContactModule_ProvideContactExchangeTaskFactory;->get()Lorg/briarproject/bramble/api/contact/ContactExchangeTask;

    move-result-object v0

    return-object v0
.end method

.method public get()Lorg/briarproject/bramble/api/contact/ContactExchangeTask;
    .locals 2

    .line 27
    iget-object v0, p0, Lorg/briarproject/bramble/contact/ContactModule_ProvideContactExchangeTaskFactory;->module:Lorg/briarproject/bramble/contact/ContactModule;

    iget-object v1, p0, Lorg/briarproject/bramble/contact/ContactModule_ProvideContactExchangeTaskFactory;->contactExchangeTaskProvider:Ljavax/inject/Provider;

    invoke-static {v0, v1}, Lorg/briarproject/bramble/contact/ContactModule_ProvideContactExchangeTaskFactory;->provideInstance(Lorg/briarproject/bramble/contact/ContactModule;Ljavax/inject/Provider;)Lorg/briarproject/bramble/api/contact/ContactExchangeTask;

    move-result-object v0

    return-object v0
.end method
