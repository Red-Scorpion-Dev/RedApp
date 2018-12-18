.class public final Lorg/briarproject/briar/feed/FeedModule_ProvideFeedFactoryFactory;
.super Ljava/lang/Object;
.source "FeedModule_ProvideFeedFactoryFactory.java"

# interfaces
.implements Ldagger/internal/Factory;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ldagger/internal/Factory<",
        "Lorg/briarproject/briar/feed/FeedFactory;",
        ">;"
    }
.end annotation


# instance fields
.field private final feedFactoryProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lorg/briarproject/briar/feed/FeedFactoryImpl;",
            ">;"
        }
    .end annotation
.end field

.field private final module:Lorg/briarproject/briar/feed/FeedModule;


# direct methods
.method public constructor <init>(Lorg/briarproject/briar/feed/FeedModule;Ljavax/inject/Provider;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/briarproject/briar/feed/FeedModule;",
            "Ljavax/inject/Provider<",
            "Lorg/briarproject/briar/feed/FeedFactoryImpl;",
            ">;)V"
        }
    .end annotation

    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 19
    iput-object p1, p0, Lorg/briarproject/briar/feed/FeedModule_ProvideFeedFactoryFactory;->module:Lorg/briarproject/briar/feed/FeedModule;

    .line 20
    iput-object p2, p0, Lorg/briarproject/briar/feed/FeedModule_ProvideFeedFactoryFactory;->feedFactoryProvider:Ljavax/inject/Provider;

    return-void
.end method

.method public static create(Lorg/briarproject/briar/feed/FeedModule;Ljavax/inject/Provider;)Lorg/briarproject/briar/feed/FeedModule_ProvideFeedFactoryFactory;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/briarproject/briar/feed/FeedModule;",
            "Ljavax/inject/Provider<",
            "Lorg/briarproject/briar/feed/FeedFactoryImpl;",
            ">;)",
            "Lorg/briarproject/briar/feed/FeedModule_ProvideFeedFactoryFactory;"
        }
    .end annotation

    .line 35
    new-instance v0, Lorg/briarproject/briar/feed/FeedModule_ProvideFeedFactoryFactory;

    invoke-direct {v0, p0, p1}, Lorg/briarproject/briar/feed/FeedModule_ProvideFeedFactoryFactory;-><init>(Lorg/briarproject/briar/feed/FeedModule;Ljavax/inject/Provider;)V

    return-object v0
.end method

.method public static provideInstance(Lorg/briarproject/briar/feed/FeedModule;Ljavax/inject/Provider;)Lorg/briarproject/briar/feed/FeedFactory;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/briarproject/briar/feed/FeedModule;",
            "Ljavax/inject/Provider<",
            "Lorg/briarproject/briar/feed/FeedFactoryImpl;",
            ">;)",
            "Lorg/briarproject/briar/feed/FeedFactory;"
        }
    .end annotation

    .line 30
    invoke-interface {p1}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object p1

    invoke-static {p0, p1}, Lorg/briarproject/briar/feed/FeedModule_ProvideFeedFactoryFactory;->proxyProvideFeedFactory(Lorg/briarproject/briar/feed/FeedModule;Ljava/lang/Object;)Lorg/briarproject/briar/feed/FeedFactory;

    move-result-object p0

    return-object p0
.end method

.method public static proxyProvideFeedFactory(Lorg/briarproject/briar/feed/FeedModule;Ljava/lang/Object;)Lorg/briarproject/briar/feed/FeedFactory;
    .locals 0

    .line 39
    check-cast p1, Lorg/briarproject/briar/feed/FeedFactoryImpl;

    .line 40
    invoke-virtual {p0, p1}, Lorg/briarproject/briar/feed/FeedModule;->provideFeedFactory(Lorg/briarproject/briar/feed/FeedFactoryImpl;)Lorg/briarproject/briar/feed/FeedFactory;

    move-result-object p0

    const-string p1, "Cannot return null from a non-@Nullable @Provides method"

    .line 39
    invoke-static {p0, p1}, Ldagger/internal/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lorg/briarproject/briar/feed/FeedFactory;

    return-object p0
.end method


# virtual methods
.method public bridge synthetic get()Ljava/lang/Object;
    .locals 1

    .line 8
    invoke-virtual {p0}, Lorg/briarproject/briar/feed/FeedModule_ProvideFeedFactoryFactory;->get()Lorg/briarproject/briar/feed/FeedFactory;

    move-result-object v0

    return-object v0
.end method

.method public get()Lorg/briarproject/briar/feed/FeedFactory;
    .locals 2

    .line 25
    iget-object v0, p0, Lorg/briarproject/briar/feed/FeedModule_ProvideFeedFactoryFactory;->module:Lorg/briarproject/briar/feed/FeedModule;

    iget-object v1, p0, Lorg/briarproject/briar/feed/FeedModule_ProvideFeedFactoryFactory;->feedFactoryProvider:Ljavax/inject/Provider;

    invoke-static {v0, v1}, Lorg/briarproject/briar/feed/FeedModule_ProvideFeedFactoryFactory;->provideInstance(Lorg/briarproject/briar/feed/FeedModule;Ljavax/inject/Provider;)Lorg/briarproject/briar/feed/FeedFactory;

    move-result-object v0

    return-object v0
.end method
