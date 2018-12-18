.class public final Lorg/briarproject/briar/feed/FeedModule_EagerSingletons_MembersInjector;
.super Ljava/lang/Object;
.source "FeedModule_EagerSingletons_MembersInjector.java"

# interfaces
.implements Ldagger/MembersInjector;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ldagger/MembersInjector<",
        "Lorg/briarproject/briar/feed/FeedModule$EagerSingletons;",
        ">;"
    }
.end annotation


# instance fields
.field private final feedManagerProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lorg/briarproject/briar/api/feed/FeedManager;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljavax/inject/Provider;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavax/inject/Provider<",
            "Lorg/briarproject/briar/api/feed/FeedManager;",
            ">;)V"
        }
    .end annotation

    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 17
    iput-object p1, p0, Lorg/briarproject/briar/feed/FeedModule_EagerSingletons_MembersInjector;->feedManagerProvider:Ljavax/inject/Provider;

    return-void
.end method

.method public static create(Ljavax/inject/Provider;)Ldagger/MembersInjector;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavax/inject/Provider<",
            "Lorg/briarproject/briar/api/feed/FeedManager;",
            ">;)",
            "Ldagger/MembersInjector<",
            "Lorg/briarproject/briar/feed/FeedModule$EagerSingletons;",
            ">;"
        }
    .end annotation

    .line 22
    new-instance v0, Lorg/briarproject/briar/feed/FeedModule_EagerSingletons_MembersInjector;

    invoke-direct {v0, p0}, Lorg/briarproject/briar/feed/FeedModule_EagerSingletons_MembersInjector;-><init>(Ljavax/inject/Provider;)V

    return-object v0
.end method

.method public static injectFeedManager(Lorg/briarproject/briar/feed/FeedModule$EagerSingletons;Lorg/briarproject/briar/api/feed/FeedManager;)V
    .locals 0

    .line 32
    iput-object p1, p0, Lorg/briarproject/briar/feed/FeedModule$EagerSingletons;->feedManager:Lorg/briarproject/briar/api/feed/FeedManager;

    return-void
.end method


# virtual methods
.method public bridge synthetic injectMembers(Ljava/lang/Object;)V
    .locals 0

    .line 8
    check-cast p1, Lorg/briarproject/briar/feed/FeedModule$EagerSingletons;

    invoke-virtual {p0, p1}, Lorg/briarproject/briar/feed/FeedModule_EagerSingletons_MembersInjector;->injectMembers(Lorg/briarproject/briar/feed/FeedModule$EagerSingletons;)V

    return-void
.end method

.method public injectMembers(Lorg/briarproject/briar/feed/FeedModule$EagerSingletons;)V
    .locals 1

    .line 27
    iget-object v0, p0, Lorg/briarproject/briar/feed/FeedModule_EagerSingletons_MembersInjector;->feedManagerProvider:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/briarproject/briar/api/feed/FeedManager;

    invoke-static {p1, v0}, Lorg/briarproject/briar/feed/FeedModule_EagerSingletons_MembersInjector;->injectFeedManager(Lorg/briarproject/briar/feed/FeedModule$EagerSingletons;Lorg/briarproject/briar/api/feed/FeedManager;)V

    return-void
.end method
