.class public final Lorg/briarproject/briar/blog/BlogModule_ProvideBlogPostFactoryFactory;
.super Ljava/lang/Object;
.source "BlogModule_ProvideBlogPostFactoryFactory.java"

# interfaces
.implements Ldagger/internal/Factory;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ldagger/internal/Factory<",
        "Lorg/briarproject/briar/api/blog/BlogPostFactory;",
        ">;"
    }
.end annotation


# instance fields
.field private final blogPostFactoryProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lorg/briarproject/briar/blog/BlogPostFactoryImpl;",
            ">;"
        }
    .end annotation
.end field

.field private final module:Lorg/briarproject/briar/blog/BlogModule;


# direct methods
.method public constructor <init>(Lorg/briarproject/briar/blog/BlogModule;Ljavax/inject/Provider;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/briarproject/briar/blog/BlogModule;",
            "Ljavax/inject/Provider<",
            "Lorg/briarproject/briar/blog/BlogPostFactoryImpl;",
            ">;)V"
        }
    .end annotation

    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 20
    iput-object p1, p0, Lorg/briarproject/briar/blog/BlogModule_ProvideBlogPostFactoryFactory;->module:Lorg/briarproject/briar/blog/BlogModule;

    .line 21
    iput-object p2, p0, Lorg/briarproject/briar/blog/BlogModule_ProvideBlogPostFactoryFactory;->blogPostFactoryProvider:Ljavax/inject/Provider;

    return-void
.end method

.method public static create(Lorg/briarproject/briar/blog/BlogModule;Ljavax/inject/Provider;)Lorg/briarproject/briar/blog/BlogModule_ProvideBlogPostFactoryFactory;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/briarproject/briar/blog/BlogModule;",
            "Ljavax/inject/Provider<",
            "Lorg/briarproject/briar/blog/BlogPostFactoryImpl;",
            ">;)",
            "Lorg/briarproject/briar/blog/BlogModule_ProvideBlogPostFactoryFactory;"
        }
    .end annotation

    .line 36
    new-instance v0, Lorg/briarproject/briar/blog/BlogModule_ProvideBlogPostFactoryFactory;

    invoke-direct {v0, p0, p1}, Lorg/briarproject/briar/blog/BlogModule_ProvideBlogPostFactoryFactory;-><init>(Lorg/briarproject/briar/blog/BlogModule;Ljavax/inject/Provider;)V

    return-object v0
.end method

.method public static provideInstance(Lorg/briarproject/briar/blog/BlogModule;Ljavax/inject/Provider;)Lorg/briarproject/briar/api/blog/BlogPostFactory;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/briarproject/briar/blog/BlogModule;",
            "Ljavax/inject/Provider<",
            "Lorg/briarproject/briar/blog/BlogPostFactoryImpl;",
            ">;)",
            "Lorg/briarproject/briar/api/blog/BlogPostFactory;"
        }
    .end annotation

    .line 31
    invoke-interface {p1}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object p1

    invoke-static {p0, p1}, Lorg/briarproject/briar/blog/BlogModule_ProvideBlogPostFactoryFactory;->proxyProvideBlogPostFactory(Lorg/briarproject/briar/blog/BlogModule;Ljava/lang/Object;)Lorg/briarproject/briar/api/blog/BlogPostFactory;

    move-result-object p0

    return-object p0
.end method

.method public static proxyProvideBlogPostFactory(Lorg/briarproject/briar/blog/BlogModule;Ljava/lang/Object;)Lorg/briarproject/briar/api/blog/BlogPostFactory;
    .locals 0

    .line 41
    check-cast p1, Lorg/briarproject/briar/blog/BlogPostFactoryImpl;

    .line 42
    invoke-virtual {p0, p1}, Lorg/briarproject/briar/blog/BlogModule;->provideBlogPostFactory(Lorg/briarproject/briar/blog/BlogPostFactoryImpl;)Lorg/briarproject/briar/api/blog/BlogPostFactory;

    move-result-object p0

    const-string p1, "Cannot return null from a non-@Nullable @Provides method"

    .line 41
    invoke-static {p0, p1}, Ldagger/internal/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lorg/briarproject/briar/api/blog/BlogPostFactory;

    return-object p0
.end method


# virtual methods
.method public bridge synthetic get()Ljava/lang/Object;
    .locals 1

    .line 9
    invoke-virtual {p0}, Lorg/briarproject/briar/blog/BlogModule_ProvideBlogPostFactoryFactory;->get()Lorg/briarproject/briar/api/blog/BlogPostFactory;

    move-result-object v0

    return-object v0
.end method

.method public get()Lorg/briarproject/briar/api/blog/BlogPostFactory;
    .locals 2

    .line 26
    iget-object v0, p0, Lorg/briarproject/briar/blog/BlogModule_ProvideBlogPostFactoryFactory;->module:Lorg/briarproject/briar/blog/BlogModule;

    iget-object v1, p0, Lorg/briarproject/briar/blog/BlogModule_ProvideBlogPostFactoryFactory;->blogPostFactoryProvider:Ljavax/inject/Provider;

    invoke-static {v0, v1}, Lorg/briarproject/briar/blog/BlogModule_ProvideBlogPostFactoryFactory;->provideInstance(Lorg/briarproject/briar/blog/BlogModule;Ljavax/inject/Provider;)Lorg/briarproject/briar/api/blog/BlogPostFactory;

    move-result-object v0

    return-object v0
.end method
