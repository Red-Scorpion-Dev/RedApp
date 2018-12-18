.class public Lorg/briarproject/briar/feed/FeedModule;
.super Ljava/lang/Object;
.source "FeedModule.java"


# annotations
.annotation runtime Ldagger/Module;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/briarproject/briar/feed/FeedModule$EagerSingletons;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method provideFeedFactory(Lorg/briarproject/briar/feed/FeedFactoryImpl;)Lorg/briarproject/briar/feed/FeedFactory;
    .locals 0
    .annotation runtime Ldagger/Provides;
    .end annotation

    return-object p1
.end method

.method provideFeedManager(Lorg/briarproject/briar/feed/FeedManagerImpl;Lorg/briarproject/bramble/api/lifecycle/LifecycleManager;Lorg/briarproject/bramble/api/event/EventBus;Lorg/briarproject/briar/api/blog/BlogManager;)Lorg/briarproject/briar/api/feed/FeedManager;
    .locals 0
    .annotation runtime Ldagger/Provides;
    .end annotation

    .line 28
    invoke-interface {p2, p1}, Lorg/briarproject/bramble/api/lifecycle/LifecycleManager;->registerClient(Lorg/briarproject/bramble/api/sync/Client;)V

    .line 29
    invoke-interface {p3, p1}, Lorg/briarproject/bramble/api/event/EventBus;->addListener(Lorg/briarproject/bramble/api/event/EventListener;)V

    .line 30
    invoke-interface {p4, p1}, Lorg/briarproject/briar/api/blog/BlogManager;->registerRemoveBlogHook(Lorg/briarproject/briar/api/blog/BlogManager$RemoveBlogHook;)V

    return-object p1
.end method
