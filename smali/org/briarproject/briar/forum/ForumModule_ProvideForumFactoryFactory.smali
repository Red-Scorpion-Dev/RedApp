.class public final Lorg/briarproject/briar/forum/ForumModule_ProvideForumFactoryFactory;
.super Ljava/lang/Object;
.source "ForumModule_ProvideForumFactoryFactory.java"

# interfaces
.implements Ldagger/internal/Factory;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ldagger/internal/Factory<",
        "Lorg/briarproject/briar/api/forum/ForumFactory;",
        ">;"
    }
.end annotation


# instance fields
.field private final forumFactoryProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lorg/briarproject/briar/forum/ForumFactoryImpl;",
            ">;"
        }
    .end annotation
.end field

.field private final module:Lorg/briarproject/briar/forum/ForumModule;


# direct methods
.method public constructor <init>(Lorg/briarproject/briar/forum/ForumModule;Ljavax/inject/Provider;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/briarproject/briar/forum/ForumModule;",
            "Ljavax/inject/Provider<",
            "Lorg/briarproject/briar/forum/ForumFactoryImpl;",
            ">;)V"
        }
    .end annotation

    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 20
    iput-object p1, p0, Lorg/briarproject/briar/forum/ForumModule_ProvideForumFactoryFactory;->module:Lorg/briarproject/briar/forum/ForumModule;

    .line 21
    iput-object p2, p0, Lorg/briarproject/briar/forum/ForumModule_ProvideForumFactoryFactory;->forumFactoryProvider:Ljavax/inject/Provider;

    return-void
.end method

.method public static create(Lorg/briarproject/briar/forum/ForumModule;Ljavax/inject/Provider;)Lorg/briarproject/briar/forum/ForumModule_ProvideForumFactoryFactory;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/briarproject/briar/forum/ForumModule;",
            "Ljavax/inject/Provider<",
            "Lorg/briarproject/briar/forum/ForumFactoryImpl;",
            ">;)",
            "Lorg/briarproject/briar/forum/ForumModule_ProvideForumFactoryFactory;"
        }
    .end annotation

    .line 36
    new-instance v0, Lorg/briarproject/briar/forum/ForumModule_ProvideForumFactoryFactory;

    invoke-direct {v0, p0, p1}, Lorg/briarproject/briar/forum/ForumModule_ProvideForumFactoryFactory;-><init>(Lorg/briarproject/briar/forum/ForumModule;Ljavax/inject/Provider;)V

    return-object v0
.end method

.method public static provideInstance(Lorg/briarproject/briar/forum/ForumModule;Ljavax/inject/Provider;)Lorg/briarproject/briar/api/forum/ForumFactory;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/briarproject/briar/forum/ForumModule;",
            "Ljavax/inject/Provider<",
            "Lorg/briarproject/briar/forum/ForumFactoryImpl;",
            ">;)",
            "Lorg/briarproject/briar/api/forum/ForumFactory;"
        }
    .end annotation

    .line 31
    invoke-interface {p1}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object p1

    invoke-static {p0, p1}, Lorg/briarproject/briar/forum/ForumModule_ProvideForumFactoryFactory;->proxyProvideForumFactory(Lorg/briarproject/briar/forum/ForumModule;Ljava/lang/Object;)Lorg/briarproject/briar/api/forum/ForumFactory;

    move-result-object p0

    return-object p0
.end method

.method public static proxyProvideForumFactory(Lorg/briarproject/briar/forum/ForumModule;Ljava/lang/Object;)Lorg/briarproject/briar/api/forum/ForumFactory;
    .locals 0

    .line 40
    check-cast p1, Lorg/briarproject/briar/forum/ForumFactoryImpl;

    .line 41
    invoke-virtual {p0, p1}, Lorg/briarproject/briar/forum/ForumModule;->provideForumFactory(Lorg/briarproject/briar/forum/ForumFactoryImpl;)Lorg/briarproject/briar/api/forum/ForumFactory;

    move-result-object p0

    const-string p1, "Cannot return null from a non-@Nullable @Provides method"

    .line 40
    invoke-static {p0, p1}, Ldagger/internal/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lorg/briarproject/briar/api/forum/ForumFactory;

    return-object p0
.end method


# virtual methods
.method public bridge synthetic get()Ljava/lang/Object;
    .locals 1

    .line 9
    invoke-virtual {p0}, Lorg/briarproject/briar/forum/ForumModule_ProvideForumFactoryFactory;->get()Lorg/briarproject/briar/api/forum/ForumFactory;

    move-result-object v0

    return-object v0
.end method

.method public get()Lorg/briarproject/briar/api/forum/ForumFactory;
    .locals 2

    .line 26
    iget-object v0, p0, Lorg/briarproject/briar/forum/ForumModule_ProvideForumFactoryFactory;->module:Lorg/briarproject/briar/forum/ForumModule;

    iget-object v1, p0, Lorg/briarproject/briar/forum/ForumModule_ProvideForumFactoryFactory;->forumFactoryProvider:Ljavax/inject/Provider;

    invoke-static {v0, v1}, Lorg/briarproject/briar/forum/ForumModule_ProvideForumFactoryFactory;->provideInstance(Lorg/briarproject/briar/forum/ForumModule;Ljavax/inject/Provider;)Lorg/briarproject/briar/api/forum/ForumFactory;

    move-result-object v0

    return-object v0
.end method
