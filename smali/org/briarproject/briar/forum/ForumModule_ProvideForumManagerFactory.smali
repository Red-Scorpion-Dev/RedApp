.class public final Lorg/briarproject/briar/forum/ForumModule_ProvideForumManagerFactory;
.super Ljava/lang/Object;
.source "ForumModule_ProvideForumManagerFactory.java"

# interfaces
.implements Ldagger/internal/Factory;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ldagger/internal/Factory<",
        "Lorg/briarproject/briar/api/forum/ForumManager;",
        ">;"
    }
.end annotation


# instance fields
.field private final forumManagerProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lorg/briarproject/briar/forum/ForumManagerImpl;",
            ">;"
        }
    .end annotation
.end field

.field private final module:Lorg/briarproject/briar/forum/ForumModule;

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
.method public constructor <init>(Lorg/briarproject/briar/forum/ForumModule;Ljavax/inject/Provider;Ljavax/inject/Provider;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/briarproject/briar/forum/ForumModule;",
            "Ljavax/inject/Provider<",
            "Lorg/briarproject/briar/forum/ForumManagerImpl;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lorg/briarproject/bramble/api/sync/ValidationManager;",
            ">;)V"
        }
    .end annotation

    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 25
    iput-object p1, p0, Lorg/briarproject/briar/forum/ForumModule_ProvideForumManagerFactory;->module:Lorg/briarproject/briar/forum/ForumModule;

    .line 26
    iput-object p2, p0, Lorg/briarproject/briar/forum/ForumModule_ProvideForumManagerFactory;->forumManagerProvider:Ljavax/inject/Provider;

    .line 27
    iput-object p3, p0, Lorg/briarproject/briar/forum/ForumModule_ProvideForumManagerFactory;->validationManagerProvider:Ljavax/inject/Provider;

    return-void
.end method

.method public static create(Lorg/briarproject/briar/forum/ForumModule;Ljavax/inject/Provider;Ljavax/inject/Provider;)Lorg/briarproject/briar/forum/ForumModule_ProvideForumManagerFactory;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/briarproject/briar/forum/ForumModule;",
            "Ljavax/inject/Provider<",
            "Lorg/briarproject/briar/forum/ForumManagerImpl;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lorg/briarproject/bramble/api/sync/ValidationManager;",
            ">;)",
            "Lorg/briarproject/briar/forum/ForumModule_ProvideForumManagerFactory;"
        }
    .end annotation

    .line 47
    new-instance v0, Lorg/briarproject/briar/forum/ForumModule_ProvideForumManagerFactory;

    invoke-direct {v0, p0, p1, p2}, Lorg/briarproject/briar/forum/ForumModule_ProvideForumManagerFactory;-><init>(Lorg/briarproject/briar/forum/ForumModule;Ljavax/inject/Provider;Ljavax/inject/Provider;)V

    return-object v0
.end method

.method public static provideInstance(Lorg/briarproject/briar/forum/ForumModule;Ljavax/inject/Provider;Ljavax/inject/Provider;)Lorg/briarproject/briar/api/forum/ForumManager;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/briarproject/briar/forum/ForumModule;",
            "Ljavax/inject/Provider<",
            "Lorg/briarproject/briar/forum/ForumManagerImpl;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lorg/briarproject/bramble/api/sync/ValidationManager;",
            ">;)",
            "Lorg/briarproject/briar/api/forum/ForumManager;"
        }
    .end annotation

    .line 40
    invoke-interface {p1}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object p1

    invoke-interface {p2}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lorg/briarproject/bramble/api/sync/ValidationManager;

    .line 39
    invoke-static {p0, p1, p2}, Lorg/briarproject/briar/forum/ForumModule_ProvideForumManagerFactory;->proxyProvideForumManager(Lorg/briarproject/briar/forum/ForumModule;Ljava/lang/Object;Lorg/briarproject/bramble/api/sync/ValidationManager;)Lorg/briarproject/briar/api/forum/ForumManager;

    move-result-object p0

    return-object p0
.end method

.method public static proxyProvideForumManager(Lorg/briarproject/briar/forum/ForumModule;Ljava/lang/Object;Lorg/briarproject/bramble/api/sync/ValidationManager;)Lorg/briarproject/briar/api/forum/ForumManager;
    .locals 0

    .line 53
    check-cast p1, Lorg/briarproject/briar/forum/ForumManagerImpl;

    .line 54
    invoke-virtual {p0, p1, p2}, Lorg/briarproject/briar/forum/ForumModule;->provideForumManager(Lorg/briarproject/briar/forum/ForumManagerImpl;Lorg/briarproject/bramble/api/sync/ValidationManager;)Lorg/briarproject/briar/api/forum/ForumManager;

    move-result-object p0

    const-string p1, "Cannot return null from a non-@Nullable @Provides method"

    .line 53
    invoke-static {p0, p1}, Ldagger/internal/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lorg/briarproject/briar/api/forum/ForumManager;

    return-object p0
.end method


# virtual methods
.method public bridge synthetic get()Ljava/lang/Object;
    .locals 1

    .line 10
    invoke-virtual {p0}, Lorg/briarproject/briar/forum/ForumModule_ProvideForumManagerFactory;->get()Lorg/briarproject/briar/api/forum/ForumManager;

    move-result-object v0

    return-object v0
.end method

.method public get()Lorg/briarproject/briar/api/forum/ForumManager;
    .locals 3

    .line 32
    iget-object v0, p0, Lorg/briarproject/briar/forum/ForumModule_ProvideForumManagerFactory;->module:Lorg/briarproject/briar/forum/ForumModule;

    iget-object v1, p0, Lorg/briarproject/briar/forum/ForumModule_ProvideForumManagerFactory;->forumManagerProvider:Ljavax/inject/Provider;

    iget-object v2, p0, Lorg/briarproject/briar/forum/ForumModule_ProvideForumManagerFactory;->validationManagerProvider:Ljavax/inject/Provider;

    invoke-static {v0, v1, v2}, Lorg/briarproject/briar/forum/ForumModule_ProvideForumManagerFactory;->provideInstance(Lorg/briarproject/briar/forum/ForumModule;Ljavax/inject/Provider;Ljavax/inject/Provider;)Lorg/briarproject/briar/api/forum/ForumManager;

    move-result-object v0

    return-object v0
.end method
