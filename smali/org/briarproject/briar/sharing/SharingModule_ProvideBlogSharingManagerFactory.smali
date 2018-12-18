.class public final Lorg/briarproject/briar/sharing/SharingModule_ProvideBlogSharingManagerFactory;
.super Ljava/lang/Object;
.source "SharingModule_ProvideBlogSharingManagerFactory.java"

# interfaces
.implements Ldagger/internal/Factory;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ldagger/internal/Factory<",
        "Lorg/briarproject/briar/api/blog/BlogSharingManager;",
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

.field private final blogSharingManagerProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lorg/briarproject/briar/sharing/BlogSharingManagerImpl;",
            ">;"
        }
    .end annotation
.end field

.field private final clientVersioningManagerProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lorg/briarproject/bramble/api/versioning/ClientVersioningManager;",
            ">;"
        }
    .end annotation
.end field

.field private final contactManagerProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lorg/briarproject/bramble/api/contact/ContactManager;",
            ">;"
        }
    .end annotation
.end field

.field private final conversationManagerProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lorg/briarproject/briar/api/conversation/ConversationManager;",
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

.field private final module:Lorg/briarproject/briar/sharing/SharingModule;

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
.method public constructor <init>(Lorg/briarproject/briar/sharing/SharingModule;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/briarproject/briar/sharing/SharingModule;",
            "Ljavax/inject/Provider<",
            "Lorg/briarproject/bramble/api/lifecycle/LifecycleManager;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lorg/briarproject/bramble/api/contact/ContactManager;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lorg/briarproject/bramble/api/sync/ValidationManager;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lorg/briarproject/briar/api/conversation/ConversationManager;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lorg/briarproject/briar/api/blog/BlogManager;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lorg/briarproject/bramble/api/versioning/ClientVersioningManager;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lorg/briarproject/briar/sharing/BlogSharingManagerImpl;",
            ">;)V"
        }
    .end annotation

    .line 45
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 46
    iput-object p1, p0, Lorg/briarproject/briar/sharing/SharingModule_ProvideBlogSharingManagerFactory;->module:Lorg/briarproject/briar/sharing/SharingModule;

    .line 47
    iput-object p2, p0, Lorg/briarproject/briar/sharing/SharingModule_ProvideBlogSharingManagerFactory;->lifecycleManagerProvider:Ljavax/inject/Provider;

    .line 48
    iput-object p3, p0, Lorg/briarproject/briar/sharing/SharingModule_ProvideBlogSharingManagerFactory;->contactManagerProvider:Ljavax/inject/Provider;

    .line 49
    iput-object p4, p0, Lorg/briarproject/briar/sharing/SharingModule_ProvideBlogSharingManagerFactory;->validationManagerProvider:Ljavax/inject/Provider;

    .line 50
    iput-object p5, p0, Lorg/briarproject/briar/sharing/SharingModule_ProvideBlogSharingManagerFactory;->conversationManagerProvider:Ljavax/inject/Provider;

    .line 51
    iput-object p6, p0, Lorg/briarproject/briar/sharing/SharingModule_ProvideBlogSharingManagerFactory;->blogManagerProvider:Ljavax/inject/Provider;

    .line 52
    iput-object p7, p0, Lorg/briarproject/briar/sharing/SharingModule_ProvideBlogSharingManagerFactory;->clientVersioningManagerProvider:Ljavax/inject/Provider;

    .line 53
    iput-object p8, p0, Lorg/briarproject/briar/sharing/SharingModule_ProvideBlogSharingManagerFactory;->blogSharingManagerProvider:Ljavax/inject/Provider;

    return-void
.end method

.method public static create(Lorg/briarproject/briar/sharing/SharingModule;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)Lorg/briarproject/briar/sharing/SharingModule_ProvideBlogSharingManagerFactory;
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/briarproject/briar/sharing/SharingModule;",
            "Ljavax/inject/Provider<",
            "Lorg/briarproject/bramble/api/lifecycle/LifecycleManager;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lorg/briarproject/bramble/api/contact/ContactManager;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lorg/briarproject/bramble/api/sync/ValidationManager;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lorg/briarproject/briar/api/conversation/ConversationManager;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lorg/briarproject/briar/api/blog/BlogManager;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lorg/briarproject/bramble/api/versioning/ClientVersioningManager;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lorg/briarproject/briar/sharing/BlogSharingManagerImpl;",
            ">;)",
            "Lorg/briarproject/briar/sharing/SharingModule_ProvideBlogSharingManagerFactory;"
        }
    .end annotation

    .line 98
    new-instance v9, Lorg/briarproject/briar/sharing/SharingModule_ProvideBlogSharingManagerFactory;

    move-object v0, v9

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    move-object v6, p5

    move-object/from16 v7, p6

    move-object/from16 v8, p7

    invoke-direct/range {v0 .. v8}, Lorg/briarproject/briar/sharing/SharingModule_ProvideBlogSharingManagerFactory;-><init>(Lorg/briarproject/briar/sharing/SharingModule;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)V

    return-object v9
.end method

.method public static provideInstance(Lorg/briarproject/briar/sharing/SharingModule;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)Lorg/briarproject/briar/api/blog/BlogSharingManager;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/briarproject/briar/sharing/SharingModule;",
            "Ljavax/inject/Provider<",
            "Lorg/briarproject/bramble/api/lifecycle/LifecycleManager;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lorg/briarproject/bramble/api/contact/ContactManager;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lorg/briarproject/bramble/api/sync/ValidationManager;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lorg/briarproject/briar/api/conversation/ConversationManager;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lorg/briarproject/briar/api/blog/BlogManager;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lorg/briarproject/bramble/api/versioning/ClientVersioningManager;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lorg/briarproject/briar/sharing/BlogSharingManagerImpl;",
            ">;)",
            "Lorg/briarproject/briar/api/blog/BlogSharingManager;"
        }
    .end annotation

    .line 80
    invoke-interface {p1}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object p1

    move-object v1, p1

    check-cast v1, Lorg/briarproject/bramble/api/lifecycle/LifecycleManager;

    .line 81
    invoke-interface {p2}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object p1

    move-object v2, p1

    check-cast v2, Lorg/briarproject/bramble/api/contact/ContactManager;

    .line 82
    invoke-interface {p3}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object p1

    move-object v3, p1

    check-cast v3, Lorg/briarproject/bramble/api/sync/ValidationManager;

    .line 83
    invoke-interface {p4}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object p1

    move-object v4, p1

    check-cast v4, Lorg/briarproject/briar/api/conversation/ConversationManager;

    .line 84
    invoke-interface {p5}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object p1

    move-object v5, p1

    check-cast v5, Lorg/briarproject/briar/api/blog/BlogManager;

    .line 85
    invoke-interface {p6}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object p1

    move-object v6, p1

    check-cast v6, Lorg/briarproject/bramble/api/versioning/ClientVersioningManager;

    .line 86
    invoke-interface {p7}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v7

    move-object v0, p0

    .line 78
    invoke-static/range {v0 .. v7}, Lorg/briarproject/briar/sharing/SharingModule_ProvideBlogSharingManagerFactory;->proxyProvideBlogSharingManager(Lorg/briarproject/briar/sharing/SharingModule;Lorg/briarproject/bramble/api/lifecycle/LifecycleManager;Lorg/briarproject/bramble/api/contact/ContactManager;Lorg/briarproject/bramble/api/sync/ValidationManager;Lorg/briarproject/briar/api/conversation/ConversationManager;Lorg/briarproject/briar/api/blog/BlogManager;Lorg/briarproject/bramble/api/versioning/ClientVersioningManager;Ljava/lang/Object;)Lorg/briarproject/briar/api/blog/BlogSharingManager;

    move-result-object p0

    return-object p0
.end method

.method public static proxyProvideBlogSharingManager(Lorg/briarproject/briar/sharing/SharingModule;Lorg/briarproject/bramble/api/lifecycle/LifecycleManager;Lorg/briarproject/bramble/api/contact/ContactManager;Lorg/briarproject/bramble/api/sync/ValidationManager;Lorg/briarproject/briar/api/conversation/ConversationManager;Lorg/briarproject/briar/api/blog/BlogManager;Lorg/briarproject/bramble/api/versioning/ClientVersioningManager;Ljava/lang/Object;)Lorg/briarproject/briar/api/blog/BlogSharingManager;
    .locals 8

    .line 118
    move-object v7, p7

    check-cast v7, Lorg/briarproject/briar/sharing/BlogSharingManagerImpl;

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    move-object v6, p6

    .line 119
    invoke-virtual/range {v0 .. v7}, Lorg/briarproject/briar/sharing/SharingModule;->provideBlogSharingManager(Lorg/briarproject/bramble/api/lifecycle/LifecycleManager;Lorg/briarproject/bramble/api/contact/ContactManager;Lorg/briarproject/bramble/api/sync/ValidationManager;Lorg/briarproject/briar/api/conversation/ConversationManager;Lorg/briarproject/briar/api/blog/BlogManager;Lorg/briarproject/bramble/api/versioning/ClientVersioningManager;Lorg/briarproject/briar/sharing/BlogSharingManagerImpl;)Lorg/briarproject/briar/api/blog/BlogSharingManager;

    move-result-object p0

    const-string p1, "Cannot return null from a non-@Nullable @Provides method"

    .line 118
    invoke-static {p0, p1}, Ldagger/internal/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lorg/briarproject/briar/api/blog/BlogSharingManager;

    return-object p0
.end method


# virtual methods
.method public bridge synthetic get()Ljava/lang/Object;
    .locals 1

    .line 15
    invoke-virtual {p0}, Lorg/briarproject/briar/sharing/SharingModule_ProvideBlogSharingManagerFactory;->get()Lorg/briarproject/briar/api/blog/BlogSharingManager;

    move-result-object v0

    return-object v0
.end method

.method public get()Lorg/briarproject/briar/api/blog/BlogSharingManager;
    .locals 8

    .line 58
    iget-object v0, p0, Lorg/briarproject/briar/sharing/SharingModule_ProvideBlogSharingManagerFactory;->module:Lorg/briarproject/briar/sharing/SharingModule;

    iget-object v1, p0, Lorg/briarproject/briar/sharing/SharingModule_ProvideBlogSharingManagerFactory;->lifecycleManagerProvider:Ljavax/inject/Provider;

    iget-object v2, p0, Lorg/briarproject/briar/sharing/SharingModule_ProvideBlogSharingManagerFactory;->contactManagerProvider:Ljavax/inject/Provider;

    iget-object v3, p0, Lorg/briarproject/briar/sharing/SharingModule_ProvideBlogSharingManagerFactory;->validationManagerProvider:Ljavax/inject/Provider;

    iget-object v4, p0, Lorg/briarproject/briar/sharing/SharingModule_ProvideBlogSharingManagerFactory;->conversationManagerProvider:Ljavax/inject/Provider;

    iget-object v5, p0, Lorg/briarproject/briar/sharing/SharingModule_ProvideBlogSharingManagerFactory;->blogManagerProvider:Ljavax/inject/Provider;

    iget-object v6, p0, Lorg/briarproject/briar/sharing/SharingModule_ProvideBlogSharingManagerFactory;->clientVersioningManagerProvider:Ljavax/inject/Provider;

    iget-object v7, p0, Lorg/briarproject/briar/sharing/SharingModule_ProvideBlogSharingManagerFactory;->blogSharingManagerProvider:Ljavax/inject/Provider;

    invoke-static/range {v0 .. v7}, Lorg/briarproject/briar/sharing/SharingModule_ProvideBlogSharingManagerFactory;->provideInstance(Lorg/briarproject/briar/sharing/SharingModule;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)Lorg/briarproject/briar/api/blog/BlogSharingManager;

    move-result-object v0

    return-object v0
.end method
