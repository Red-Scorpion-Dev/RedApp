.class public final Lorg/briarproject/briar/feed/FeedModule_ProvideFeedManagerFactory;
.super Ljava/lang/Object;
.source "FeedModule_ProvideFeedManagerFactory.java"

# interfaces
.implements Ldagger/internal/Factory;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ldagger/internal/Factory<",
        "Lorg/briarproject/briar/api/feed/FeedManager;",
        ">;"
    }
.end annotation


# instance fields
.field private final blogManagerProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lorg/briarproject/briar/api/blog/BlogManager;",
            ">;"
        }
    .end annotation
.end field

.field private final eventBusProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lorg/briarproject/bramble/api/event/EventBus;",
            ">;"
        }
    .end annotation
.end field

.field private final feedManagerProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lorg/briarproject/briar/feed/FeedManagerImpl;",
            ">;"
        }
    .end annotation
.end field

.field private final lifecycleManagerProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lorg/briarproject/bramble/api/lifecycle/LifecycleManager;",
            ">;"
        }
    .end annotation
.end field

.field private final module:Lorg/briarproject/briar/feed/FeedModule;


# direct methods
.method public constructor <init>(Lorg/briarproject/briar/feed/FeedModule;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/briarproject/briar/feed/FeedModule;",
            "Ljavax/inject/Provider<",
            "Lorg/briarproject/briar/feed/FeedManagerImpl;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lorg/briarproject/bramble/api/lifecycle/LifecycleManager;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lorg/briarproject/bramble/api/event/EventBus;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lorg/briarproject/briar/api/blog/BlogManager;",
            ">;)V"
        }
    .end annotation

    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 33
    iput-object p1, p0, Lorg/briarproject/briar/feed/FeedModule_ProvideFeedManagerFactory;->module:Lorg/briarproject/briar/feed/FeedModule;

    .line 34
    iput-object p2, p0, Lorg/briarproject/briar/feed/FeedModule_ProvideFeedManagerFactory;->feedManagerProvider:Ljavax/inject/Provider;

    .line 35
    iput-object p3, p0, Lorg/briarproject/briar/feed/FeedModule_ProvideFeedManagerFactory;->lifecycleManagerProvider:Ljavax/inject/Provider;

    .line 36
    iput-object p4, p0, Lorg/briarproject/briar/feed/FeedModule_ProvideFeedManagerFactory;->eventBusProvider:Ljavax/inject/Provider;

    .line 37
    iput-object p5, p0, Lorg/briarproject/briar/feed/FeedModule_ProvideFeedManagerFactory;->blogManagerProvider:Ljavax/inject/Provider;

    return-void
.end method

.method public static create(Lorg/briarproject/briar/feed/FeedModule;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)Lorg/briarproject/briar/feed/FeedModule_ProvideFeedManagerFactory;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/briarproject/briar/feed/FeedModule;",
            "Ljavax/inject/Provider<",
            "Lorg/briarproject/briar/feed/FeedManagerImpl;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lorg/briarproject/bramble/api/lifecycle/LifecycleManager;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lorg/briarproject/bramble/api/event/EventBus;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lorg/briarproject/briar/api/blog/BlogManager;",
            ">;)",
            "Lorg/briarproject/briar/feed/FeedModule_ProvideFeedManagerFactory;"
        }
    .end annotation

    .line 70
    new-instance v6, Lorg/briarproject/briar/feed/FeedModule_ProvideFeedManagerFactory;

    move-object v0, v6

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    invoke-direct/range {v0 .. v5}, Lorg/briarproject/briar/feed/FeedModule_ProvideFeedManagerFactory;-><init>(Lorg/briarproject/briar/feed/FeedModule;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)V

    return-object v6
.end method

.method public static provideInstance(Lorg/briarproject/briar/feed/FeedModule;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)Lorg/briarproject/briar/api/feed/FeedManager;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/briarproject/briar/feed/FeedModule;",
            "Ljavax/inject/Provider<",
            "Lorg/briarproject/briar/feed/FeedManagerImpl;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lorg/briarproject/bramble/api/lifecycle/LifecycleManager;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lorg/briarproject/bramble/api/event/EventBus;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lorg/briarproject/briar/api/blog/BlogManager;",
            ">;)",
            "Lorg/briarproject/briar/api/feed/FeedManager;"
        }
    .end annotation

    .line 58
    invoke-interface {p1}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object p1

    .line 59
    invoke-interface {p2}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lorg/briarproject/bramble/api/lifecycle/LifecycleManager;

    .line 60
    invoke-interface {p3}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lorg/briarproject/bramble/api/event/EventBus;

    .line 61
    invoke-interface {p4}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object p4

    check-cast p4, Lorg/briarproject/briar/api/blog/BlogManager;

    .line 56
    invoke-static {p0, p1, p2, p3, p4}, Lorg/briarproject/briar/feed/FeedModule_ProvideFeedManagerFactory;->proxyProvideFeedManager(Lorg/briarproject/briar/feed/FeedModule;Ljava/lang/Object;Lorg/briarproject/bramble/api/lifecycle/LifecycleManager;Lorg/briarproject/bramble/api/event/EventBus;Lorg/briarproject/briar/api/blog/BlogManager;)Lorg/briarproject/briar/api/feed/FeedManager;

    move-result-object p0

    return-object p0
.end method

.method public static proxyProvideFeedManager(Lorg/briarproject/briar/feed/FeedModule;Ljava/lang/Object;Lorg/briarproject/bramble/api/lifecycle/LifecycleManager;Lorg/briarproject/bramble/api/event/EventBus;Lorg/briarproject/briar/api/blog/BlogManager;)Lorg/briarproject/briar/api/feed/FeedManager;
    .locals 0

    .line 84
    check-cast p1, Lorg/briarproject/briar/feed/FeedManagerImpl;

    .line 85
    invoke-virtual {p0, p1, p2, p3, p4}, Lorg/briarproject/briar/feed/FeedModule;->provideFeedManager(Lorg/briarproject/briar/feed/FeedManagerImpl;Lorg/briarproject/bramble/api/lifecycle/LifecycleManager;Lorg/briarproject/bramble/api/event/EventBus;Lorg/briarproject/briar/api/blog/BlogManager;)Lorg/briarproject/briar/api/feed/FeedManager;

    move-result-object p0

    const-string p1, "Cannot return null from a non-@Nullable @Provides method"

    .line 84
    invoke-static {p0, p1}, Ldagger/internal/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lorg/briarproject/briar/api/feed/FeedManager;

    return-object p0
.end method


# virtual methods
.method public bridge synthetic get()Ljava/lang/Object;
    .locals 1

    .line 12
    invoke-virtual {p0}, Lorg/briarproject/briar/feed/FeedModule_ProvideFeedManagerFactory;->get()Lorg/briarproject/briar/api/feed/FeedManager;

    move-result-object v0

    return-object v0
.end method

.method public get()Lorg/briarproject/briar/api/feed/FeedManager;
    .locals 5

    .line 42
    iget-object v0, p0, Lorg/briarproject/briar/feed/FeedModule_ProvideFeedManagerFactory;->module:Lorg/briarproject/briar/feed/FeedModule;

    iget-object v1, p0, Lorg/briarproject/briar/feed/FeedModule_ProvideFeedManagerFactory;->feedManagerProvider:Ljavax/inject/Provider;

    iget-object v2, p0, Lorg/briarproject/briar/feed/FeedModule_ProvideFeedManagerFactory;->lifecycleManagerProvider:Ljavax/inject/Provider;

    iget-object v3, p0, Lorg/briarproject/briar/feed/FeedModule_ProvideFeedManagerFactory;->eventBusProvider:Ljavax/inject/Provider;

    iget-object v4, p0, Lorg/briarproject/briar/feed/FeedModule_ProvideFeedManagerFactory;->blogManagerProvider:Ljavax/inject/Provider;

    invoke-static {v0, v1, v2, v3, v4}, Lorg/briarproject/briar/feed/FeedModule_ProvideFeedManagerFactory;->provideInstance(Lorg/briarproject/briar/feed/FeedModule;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)Lorg/briarproject/briar/api/feed/FeedManager;

    move-result-object v0

    return-object v0
.end method
