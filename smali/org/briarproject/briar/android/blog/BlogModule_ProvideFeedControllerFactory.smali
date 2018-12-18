.class public final Lorg/briarproject/briar/android/blog/BlogModule_ProvideFeedControllerFactory;
.super Ljava/lang/Object;
.source "BlogModule_ProvideFeedControllerFactory.java"

# interfaces
.implements Ldagger/internal/Factory;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ldagger/internal/Factory<",
        "Lorg/briarproject/briar/android/blog/FeedController;",
        ">;"
    }
.end annotation


# instance fields
.field private final feedControllerProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lorg/briarproject/briar/android/blog/FeedControllerImpl;",
            ">;"
        }
    .end annotation
.end field

.field private final module:Lorg/briarproject/briar/android/blog/BlogModule;


# direct methods
.method public constructor <init>(Lorg/briarproject/briar/android/blog/BlogModule;Ljavax/inject/Provider;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/briarproject/briar/android/blog/BlogModule;",
            "Ljavax/inject/Provider<",
            "Lorg/briarproject/briar/android/blog/FeedControllerImpl;",
            ">;)V"
        }
    .end annotation

    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 19
    iput-object p1, p0, Lorg/briarproject/briar/android/blog/BlogModule_ProvideFeedControllerFactory;->module:Lorg/briarproject/briar/android/blog/BlogModule;

    .line 20
    iput-object p2, p0, Lorg/briarproject/briar/android/blog/BlogModule_ProvideFeedControllerFactory;->feedControllerProvider:Ljavax/inject/Provider;

    return-void
.end method

.method public static create(Lorg/briarproject/briar/android/blog/BlogModule;Ljavax/inject/Provider;)Lorg/briarproject/briar/android/blog/BlogModule_ProvideFeedControllerFactory;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/briarproject/briar/android/blog/BlogModule;",
            "Ljavax/inject/Provider<",
            "Lorg/briarproject/briar/android/blog/FeedControllerImpl;",
            ">;)",
            "Lorg/briarproject/briar/android/blog/BlogModule_ProvideFeedControllerFactory;"
        }
    .end annotation

    .line 35
    new-instance v0, Lorg/briarproject/briar/android/blog/BlogModule_ProvideFeedControllerFactory;

    invoke-direct {v0, p0, p1}, Lorg/briarproject/briar/android/blog/BlogModule_ProvideFeedControllerFactory;-><init>(Lorg/briarproject/briar/android/blog/BlogModule;Ljavax/inject/Provider;)V

    return-object v0
.end method

.method public static provideInstance(Lorg/briarproject/briar/android/blog/BlogModule;Ljavax/inject/Provider;)Lorg/briarproject/briar/android/blog/FeedController;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/briarproject/briar/android/blog/BlogModule;",
            "Ljavax/inject/Provider<",
            "Lorg/briarproject/briar/android/blog/FeedControllerImpl;",
            ">;)",
            "Lorg/briarproject/briar/android/blog/FeedController;"
        }
    .end annotation

    .line 30
    invoke-interface {p1}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object p1

    invoke-static {p0, p1}, Lorg/briarproject/briar/android/blog/BlogModule_ProvideFeedControllerFactory;->proxyProvideFeedController(Lorg/briarproject/briar/android/blog/BlogModule;Ljava/lang/Object;)Lorg/briarproject/briar/android/blog/FeedController;

    move-result-object p0

    return-object p0
.end method

.method public static proxyProvideFeedController(Lorg/briarproject/briar/android/blog/BlogModule;Ljava/lang/Object;)Lorg/briarproject/briar/android/blog/FeedController;
    .locals 0

    .line 40
    check-cast p1, Lorg/briarproject/briar/android/blog/FeedControllerImpl;

    .line 41
    invoke-virtual {p0, p1}, Lorg/briarproject/briar/android/blog/BlogModule;->provideFeedController(Lorg/briarproject/briar/android/blog/FeedControllerImpl;)Lorg/briarproject/briar/android/blog/FeedController;

    move-result-object p0

    const-string p1, "Cannot return null from a non-@Nullable @Provides method"

    .line 40
    invoke-static {p0, p1}, Ldagger/internal/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lorg/briarproject/briar/android/blog/FeedController;

    return-object p0
.end method


# virtual methods
.method public bridge synthetic get()Ljava/lang/Object;
    .locals 1

    .line 8
    invoke-virtual {p0}, Lorg/briarproject/briar/android/blog/BlogModule_ProvideFeedControllerFactory;->get()Lorg/briarproject/briar/android/blog/FeedController;

    move-result-object v0

    return-object v0
.end method

.method public get()Lorg/briarproject/briar/android/blog/FeedController;
    .locals 2

    .line 25
    iget-object v0, p0, Lorg/briarproject/briar/android/blog/BlogModule_ProvideFeedControllerFactory;->module:Lorg/briarproject/briar/android/blog/BlogModule;

    iget-object v1, p0, Lorg/briarproject/briar/android/blog/BlogModule_ProvideFeedControllerFactory;->feedControllerProvider:Ljavax/inject/Provider;

    invoke-static {v0, v1}, Lorg/briarproject/briar/android/blog/BlogModule_ProvideFeedControllerFactory;->provideInstance(Lorg/briarproject/briar/android/blog/BlogModule;Ljavax/inject/Provider;)Lorg/briarproject/briar/android/blog/FeedController;

    move-result-object v0

    return-object v0
.end method
