.class public final Lorg/briarproject/briar/feed/FeedManagerImpl_Factory;
.super Ljava/lang/Object;
.source "FeedManagerImpl_Factory.java"

# interfaces
.implements Ldagger/internal/Factory;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ldagger/internal/Factory<",
        "Lorg/briarproject/briar/feed/FeedManagerImpl;",
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

.field private final blogPostFactoryProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lorg/briarproject/briar/api/blog/BlogPostFactory;",
            ">;"
        }
    .end annotation
.end field

.field private final clientHelperProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lorg/briarproject/bramble/api/client/ClientHelper;",
            ">;"
        }
    .end annotation
.end field

.field private final clockProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lorg/briarproject/bramble/api/system/Clock;",
            ">;"
        }
    .end annotation
.end field

.field private final contactGroupFactoryProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lorg/briarproject/bramble/api/client/ContactGroupFactory;",
            ">;"
        }
    .end annotation
.end field

.field private final dbProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lorg/briarproject/bramble/api/db/DatabaseComponent;",
            ">;"
        }
    .end annotation
.end field

.field private final feedFactoryProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lorg/briarproject/briar/feed/FeedFactory;",
            ">;"
        }
    .end annotation
.end field

.field private final ioExecutorProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Ljava/util/concurrent/Executor;",
            ">;"
        }
    .end annotation
.end field

.field private final noDnsLookupsProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lokhttp3/Dns;",
            ">;"
        }
    .end annotation
.end field

.field private final schedulerProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Ljava/util/concurrent/ScheduledExecutorService;",
            ">;"
        }
    .end annotation
.end field

.field private final torSocketFactoryProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Ljavax/net/SocketFactory;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavax/inject/Provider<",
            "Ljava/util/concurrent/ScheduledExecutorService;",
            ">;",
            "Ljavax/inject/Provider<",
            "Ljava/util/concurrent/Executor;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lorg/briarproject/bramble/api/db/DatabaseComponent;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lorg/briarproject/bramble/api/client/ContactGroupFactory;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lorg/briarproject/bramble/api/client/ClientHelper;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lorg/briarproject/briar/api/blog/BlogManager;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lorg/briarproject/briar/api/blog/BlogPostFactory;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lorg/briarproject/briar/feed/FeedFactory;",
            ">;",
            "Ljavax/inject/Provider<",
            "Ljavax/net/SocketFactory;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lorg/briarproject/bramble/api/system/Clock;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lokhttp3/Dns;",
            ">;)V"
        }
    .end annotation

    .line 55
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 56
    iput-object p1, p0, Lorg/briarproject/briar/feed/FeedManagerImpl_Factory;->schedulerProvider:Ljavax/inject/Provider;

    .line 57
    iput-object p2, p0, Lorg/briarproject/briar/feed/FeedManagerImpl_Factory;->ioExecutorProvider:Ljavax/inject/Provider;

    .line 58
    iput-object p3, p0, Lorg/briarproject/briar/feed/FeedManagerImpl_Factory;->dbProvider:Ljavax/inject/Provider;

    .line 59
    iput-object p4, p0, Lorg/briarproject/briar/feed/FeedManagerImpl_Factory;->contactGroupFactoryProvider:Ljavax/inject/Provider;

    .line 60
    iput-object p5, p0, Lorg/briarproject/briar/feed/FeedManagerImpl_Factory;->clientHelperProvider:Ljavax/inject/Provider;

    .line 61
    iput-object p6, p0, Lorg/briarproject/briar/feed/FeedManagerImpl_Factory;->blogManagerProvider:Ljavax/inject/Provider;

    .line 62
    iput-object p7, p0, Lorg/briarproject/briar/feed/FeedManagerImpl_Factory;->blogPostFactoryProvider:Ljavax/inject/Provider;

    .line 63
    iput-object p8, p0, Lorg/briarproject/briar/feed/FeedManagerImpl_Factory;->feedFactoryProvider:Ljavax/inject/Provider;

    .line 64
    iput-object p9, p0, Lorg/briarproject/briar/feed/FeedManagerImpl_Factory;->torSocketFactoryProvider:Ljavax/inject/Provider;

    .line 65
    iput-object p10, p0, Lorg/briarproject/briar/feed/FeedManagerImpl_Factory;->clockProvider:Ljavax/inject/Provider;

    .line 66
    iput-object p11, p0, Lorg/briarproject/briar/feed/FeedManagerImpl_Factory;->noDnsLookupsProvider:Ljavax/inject/Provider;

    return-void
.end method

.method public static create(Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)Lorg/briarproject/briar/feed/FeedManagerImpl_Factory;
    .locals 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavax/inject/Provider<",
            "Ljava/util/concurrent/ScheduledExecutorService;",
            ">;",
            "Ljavax/inject/Provider<",
            "Ljava/util/concurrent/Executor;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lorg/briarproject/bramble/api/db/DatabaseComponent;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lorg/briarproject/bramble/api/client/ContactGroupFactory;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lorg/briarproject/bramble/api/client/ClientHelper;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lorg/briarproject/briar/api/blog/BlogManager;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lorg/briarproject/briar/api/blog/BlogPostFactory;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lorg/briarproject/briar/feed/FeedFactory;",
            ">;",
            "Ljavax/inject/Provider<",
            "Ljavax/net/SocketFactory;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lorg/briarproject/bramble/api/system/Clock;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lokhttp3/Dns;",
            ">;)",
            "Lorg/briarproject/briar/feed/FeedManagerImpl_Factory;"
        }
    .end annotation

    .line 123
    new-instance v12, Lorg/briarproject/briar/feed/FeedManagerImpl_Factory;

    move-object v0, v12

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object/from16 v4, p3

    move-object/from16 v5, p4

    move-object/from16 v6, p5

    move-object/from16 v7, p6

    move-object/from16 v8, p7

    move-object/from16 v9, p8

    move-object/from16 v10, p9

    move-object/from16 v11, p10

    invoke-direct/range {v0 .. v11}, Lorg/briarproject/briar/feed/FeedManagerImpl_Factory;-><init>(Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)V

    return-object v12
.end method

.method public static newFeedManagerImpl(Ljava/util/concurrent/ScheduledExecutorService;Ljava/util/concurrent/Executor;Lorg/briarproject/bramble/api/db/DatabaseComponent;Lorg/briarproject/bramble/api/client/ContactGroupFactory;Lorg/briarproject/bramble/api/client/ClientHelper;Lorg/briarproject/briar/api/blog/BlogManager;Lorg/briarproject/briar/api/blog/BlogPostFactory;Ljava/lang/Object;Ljavax/net/SocketFactory;Lorg/briarproject/bramble/api/system/Clock;Lokhttp3/Dns;)Lorg/briarproject/briar/feed/FeedManagerImpl;
    .locals 13

    .line 149
    new-instance v12, Lorg/briarproject/briar/feed/FeedManagerImpl;

    move-object/from16 v8, p7

    check-cast v8, Lorg/briarproject/briar/feed/FeedFactory;

    move-object v0, v12

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object/from16 v4, p3

    move-object/from16 v5, p4

    move-object/from16 v6, p5

    move-object/from16 v7, p6

    move-object/from16 v9, p8

    move-object/from16 v10, p9

    move-object/from16 v11, p10

    invoke-direct/range {v0 .. v11}, Lorg/briarproject/briar/feed/FeedManagerImpl;-><init>(Ljava/util/concurrent/ScheduledExecutorService;Ljava/util/concurrent/Executor;Lorg/briarproject/bramble/api/db/DatabaseComponent;Lorg/briarproject/bramble/api/client/ContactGroupFactory;Lorg/briarproject/bramble/api/client/ClientHelper;Lorg/briarproject/briar/api/blog/BlogManager;Lorg/briarproject/briar/api/blog/BlogPostFactory;Lorg/briarproject/briar/feed/FeedFactory;Ljavax/net/SocketFactory;Lorg/briarproject/bramble/api/system/Clock;Lokhttp3/Dns;)V

    return-object v12
.end method

.method public static provideInstance(Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)Lorg/briarproject/briar/feed/FeedManagerImpl;
    .locals 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavax/inject/Provider<",
            "Ljava/util/concurrent/ScheduledExecutorService;",
            ">;",
            "Ljavax/inject/Provider<",
            "Ljava/util/concurrent/Executor;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lorg/briarproject/bramble/api/db/DatabaseComponent;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lorg/briarproject/bramble/api/client/ContactGroupFactory;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lorg/briarproject/bramble/api/client/ClientHelper;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lorg/briarproject/briar/api/blog/BlogManager;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lorg/briarproject/briar/api/blog/BlogPostFactory;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lorg/briarproject/briar/feed/FeedFactory;",
            ">;",
            "Ljavax/inject/Provider<",
            "Ljavax/net/SocketFactory;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lorg/briarproject/bramble/api/system/Clock;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lokhttp3/Dns;",
            ">;)",
            "Lorg/briarproject/briar/feed/FeedManagerImpl;"
        }
    .end annotation

    .line 97
    new-instance v12, Lorg/briarproject/briar/feed/FeedManagerImpl;

    .line 98
    invoke-interface {p0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    move-object v1, v0

    check-cast v1, Ljava/util/concurrent/ScheduledExecutorService;

    .line 99
    invoke-interface {p1}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    move-object v2, v0

    check-cast v2, Ljava/util/concurrent/Executor;

    .line 100
    invoke-interface {p2}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    move-object v3, v0

    check-cast v3, Lorg/briarproject/bramble/api/db/DatabaseComponent;

    .line 101
    invoke-interface/range {p3 .. p3}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    move-object v4, v0

    check-cast v4, Lorg/briarproject/bramble/api/client/ContactGroupFactory;

    .line 102
    invoke-interface/range {p4 .. p4}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    move-object v5, v0

    check-cast v5, Lorg/briarproject/bramble/api/client/ClientHelper;

    .line 103
    invoke-interface/range {p5 .. p5}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    move-object v6, v0

    check-cast v6, Lorg/briarproject/briar/api/blog/BlogManager;

    .line 104
    invoke-interface/range {p6 .. p6}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    move-object v7, v0

    check-cast v7, Lorg/briarproject/briar/api/blog/BlogPostFactory;

    .line 105
    invoke-interface/range {p7 .. p7}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    move-object v8, v0

    check-cast v8, Lorg/briarproject/briar/feed/FeedFactory;

    .line 106
    invoke-interface/range {p8 .. p8}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    move-object v9, v0

    check-cast v9, Ljavax/net/SocketFactory;

    .line 107
    invoke-interface/range {p9 .. p9}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    move-object v10, v0

    check-cast v10, Lorg/briarproject/bramble/api/system/Clock;

    .line 108
    invoke-interface/range {p10 .. p10}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    move-object v11, v0

    check-cast v11, Lokhttp3/Dns;

    move-object v0, v12

    invoke-direct/range {v0 .. v11}, Lorg/briarproject/briar/feed/FeedManagerImpl;-><init>(Ljava/util/concurrent/ScheduledExecutorService;Ljava/util/concurrent/Executor;Lorg/briarproject/bramble/api/db/DatabaseComponent;Lorg/briarproject/bramble/api/client/ContactGroupFactory;Lorg/briarproject/bramble/api/client/ClientHelper;Lorg/briarproject/briar/api/blog/BlogManager;Lorg/briarproject/briar/api/blog/BlogPostFactory;Lorg/briarproject/briar/feed/FeedFactory;Ljavax/net/SocketFactory;Lorg/briarproject/bramble/api/system/Clock;Lokhttp3/Dns;)V

    return-object v12
.end method


# virtual methods
.method public bridge synthetic get()Ljava/lang/Object;
    .locals 1

    .line 17
    invoke-virtual {p0}, Lorg/briarproject/briar/feed/FeedManagerImpl_Factory;->get()Lorg/briarproject/briar/feed/FeedManagerImpl;

    move-result-object v0

    return-object v0
.end method

.method public get()Lorg/briarproject/briar/feed/FeedManagerImpl;
    .locals 11

    .line 71
    iget-object v0, p0, Lorg/briarproject/briar/feed/FeedManagerImpl_Factory;->schedulerProvider:Ljavax/inject/Provider;

    iget-object v1, p0, Lorg/briarproject/briar/feed/FeedManagerImpl_Factory;->ioExecutorProvider:Ljavax/inject/Provider;

    iget-object v2, p0, Lorg/briarproject/briar/feed/FeedManagerImpl_Factory;->dbProvider:Ljavax/inject/Provider;

    iget-object v3, p0, Lorg/briarproject/briar/feed/FeedManagerImpl_Factory;->contactGroupFactoryProvider:Ljavax/inject/Provider;

    iget-object v4, p0, Lorg/briarproject/briar/feed/FeedManagerImpl_Factory;->clientHelperProvider:Ljavax/inject/Provider;

    iget-object v5, p0, Lorg/briarproject/briar/feed/FeedManagerImpl_Factory;->blogManagerProvider:Ljavax/inject/Provider;

    iget-object v6, p0, Lorg/briarproject/briar/feed/FeedManagerImpl_Factory;->blogPostFactoryProvider:Ljavax/inject/Provider;

    iget-object v7, p0, Lorg/briarproject/briar/feed/FeedManagerImpl_Factory;->feedFactoryProvider:Ljavax/inject/Provider;

    iget-object v8, p0, Lorg/briarproject/briar/feed/FeedManagerImpl_Factory;->torSocketFactoryProvider:Ljavax/inject/Provider;

    iget-object v9, p0, Lorg/briarproject/briar/feed/FeedManagerImpl_Factory;->clockProvider:Ljavax/inject/Provider;

    iget-object v10, p0, Lorg/briarproject/briar/feed/FeedManagerImpl_Factory;->noDnsLookupsProvider:Ljavax/inject/Provider;

    invoke-static/range {v0 .. v10}, Lorg/briarproject/briar/feed/FeedManagerImpl_Factory;->provideInstance(Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)Lorg/briarproject/briar/feed/FeedManagerImpl;

    move-result-object v0

    return-object v0
.end method
