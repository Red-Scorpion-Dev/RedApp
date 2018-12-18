.class public final Lorg/briarproject/briar/privategroup/PrivateGroupModule_ProvideGroupManagerFactory;
.super Ljava/lang/Object;
.source "PrivateGroupModule_ProvideGroupManagerFactory.java"

# interfaces
.implements Ldagger/internal/Factory;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ldagger/internal/Factory<",
        "Lorg/briarproject/briar/api/privategroup/PrivateGroupManager;",
        ">;"
    }
.end annotation


# instance fields
.field private final groupManagerProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lorg/briarproject/briar/privategroup/PrivateGroupManagerImpl;",
            ">;"
        }
    .end annotation
.end field

.field private final module:Lorg/briarproject/briar/privategroup/PrivateGroupModule;

.field private final validationManagerProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lorg/briarproject/bramble/api/sync/ValidationManager;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lorg/briarproject/briar/privategroup/PrivateGroupModule;Ljavax/inject/Provider;Ljavax/inject/Provider;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/briarproject/briar/privategroup/PrivateGroupModule;",
            "Ljavax/inject/Provider<",
            "Lorg/briarproject/briar/privategroup/PrivateGroupManagerImpl;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lorg/briarproject/bramble/api/sync/ValidationManager;",
            ">;)V"
        }
    .end annotation

    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 26
    iput-object p1, p0, Lorg/briarproject/briar/privategroup/PrivateGroupModule_ProvideGroupManagerFactory;->module:Lorg/briarproject/briar/privategroup/PrivateGroupModule;

    .line 27
    iput-object p2, p0, Lorg/briarproject/briar/privategroup/PrivateGroupModule_ProvideGroupManagerFactory;->groupManagerProvider:Ljavax/inject/Provider;

    .line 28
    iput-object p3, p0, Lorg/briarproject/briar/privategroup/PrivateGroupModule_ProvideGroupManagerFactory;->validationManagerProvider:Ljavax/inject/Provider;

    return-void
.end method

.method public static create(Lorg/briarproject/briar/privategroup/PrivateGroupModule;Ljavax/inject/Provider;Ljavax/inject/Provider;)Lorg/briarproject/briar/privategroup/PrivateGroupModule_ProvideGroupManagerFactory;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/briarproject/briar/privategroup/PrivateGroupModule;",
            "Ljavax/inject/Provider<",
            "Lorg/briarproject/briar/privategroup/PrivateGroupManagerImpl;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lorg/briarproject/bramble/api/sync/ValidationManager;",
            ">;)",
            "Lorg/briarproject/briar/privategroup/PrivateGroupModule_ProvideGroupManagerFactory;"
        }
    .end annotation

    .line 48
    new-instance v0, Lorg/briarproject/briar/privategroup/PrivateGroupModule_ProvideGroupManagerFactory;

    invoke-direct {v0, p0, p1, p2}, Lorg/briarproject/briar/privategroup/PrivateGroupModule_ProvideGroupManagerFactory;-><init>(Lorg/briarproject/briar/privategroup/PrivateGroupModule;Ljavax/inject/Provider;Ljavax/inject/Provider;)V

    return-object v0
.end method

.method public static provideInstance(Lorg/briarproject/briar/privategroup/PrivateGroupModule;Ljavax/inject/Provider;Ljavax/inject/Provider;)Lorg/briarproject/briar/api/privategroup/PrivateGroupManager;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/briarproject/briar/privategroup/PrivateGroupModule;",
            "Ljavax/inject/Provider<",
            "Lorg/briarproject/briar/privategroup/PrivateGroupManagerImpl;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lorg/briarproject/bramble/api/sync/ValidationManager;",
            ">;)",
            "Lorg/briarproject/briar/api/privategroup/PrivateGroupManager;"
        }
    .end annotation

    .line 41
    invoke-interface {p1}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object p1

    invoke-interface {p2}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lorg/briarproject/bramble/api/sync/ValidationManager;

    .line 40
    invoke-static {p0, p1, p2}, Lorg/briarproject/briar/privategroup/PrivateGroupModule_ProvideGroupManagerFactory;->proxyProvideGroupManager(Lorg/briarproject/briar/privategroup/PrivateGroupModule;Ljava/lang/Object;Lorg/briarproject/bramble/api/sync/ValidationManager;)Lorg/briarproject/briar/api/privategroup/PrivateGroupManager;

    move-result-object p0

    return-object p0
.end method

.method public static proxyProvideGroupManager(Lorg/briarproject/briar/privategroup/PrivateGroupModule;Ljava/lang/Object;Lorg/briarproject/bramble/api/sync/ValidationManager;)Lorg/briarproject/briar/api/privategroup/PrivateGroupManager;
    .locals 0

    .line 54
    check-cast p1, Lorg/briarproject/briar/privategroup/PrivateGroupManagerImpl;

    .line 55
    invoke-virtual {p0, p1, p2}, Lorg/briarproject/briar/privategroup/PrivateGroupModule;->provideGroupManager(Lorg/briarproject/briar/privategroup/PrivateGroupManagerImpl;Lorg/briarproject/bramble/api/sync/ValidationManager;)Lorg/briarproject/briar/api/privategroup/PrivateGroupManager;

    move-result-object p0

    const-string p1, "Cannot return null from a non-@Nullable @Provides method"

    .line 54
    invoke-static {p0, p1}, Ldagger/internal/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lorg/briarproject/briar/api/privategroup/PrivateGroupManager;

    return-object p0
.end method


# virtual methods
.method public bridge synthetic get()Ljava/lang/Object;
    .locals 1

    .line 10
    invoke-virtual {p0}, Lorg/briarproject/briar/privategroup/PrivateGroupModule_ProvideGroupManagerFactory;->get()Lorg/briarproject/briar/api/privategroup/PrivateGroupManager;

    move-result-object v0

    return-object v0
.end method

.method public get()Lorg/briarproject/briar/api/privategroup/PrivateGroupManager;
    .locals 3

    .line 33
    iget-object v0, p0, Lorg/briarproject/briar/privategroup/PrivateGroupModule_ProvideGroupManagerFactory;->module:Lorg/briarproject/briar/privategroup/PrivateGroupModule;

    iget-object v1, p0, Lorg/briarproject/briar/privategroup/PrivateGroupModule_ProvideGroupManagerFactory;->groupManagerProvider:Ljavax/inject/Provider;

    iget-object v2, p0, Lorg/briarproject/briar/privategroup/PrivateGroupModule_ProvideGroupManagerFactory;->validationManagerProvider:Ljavax/inject/Provider;

    invoke-static {v0, v1, v2}, Lorg/briarproject/briar/privategroup/PrivateGroupModule_ProvideGroupManagerFactory;->provideInstance(Lorg/briarproject/briar/privategroup/PrivateGroupModule;Ljavax/inject/Provider;Ljavax/inject/Provider;)Lorg/briarproject/briar/api/privategroup/PrivateGroupManager;

    move-result-object v0

    return-object v0
.end method
