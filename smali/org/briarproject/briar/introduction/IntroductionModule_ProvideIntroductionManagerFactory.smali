.class public final Lorg/briarproject/briar/introduction/IntroductionModule_ProvideIntroductionManagerFactory;
.super Ljava/lang/Object;
.source "IntroductionModule_ProvideIntroductionManagerFactory.java"

# interfaces
.implements Ldagger/internal/Factory;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ldagger/internal/Factory<",
        "Lorg/briarproject/briar/api/introduction/IntroductionManager;",
        ">;"
    }
.end annotation


# instance fields
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

.field private final introductionManagerProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lorg/briarproject/briar/introduction/IntroductionManagerImpl;",
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

.field private final module:Lorg/briarproject/briar/introduction/IntroductionModule;

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
.method public constructor <init>(Lorg/briarproject/briar/introduction/IntroductionModule;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/briarproject/briar/introduction/IntroductionModule;",
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
            "Lorg/briarproject/bramble/api/versioning/ClientVersioningManager;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lorg/briarproject/briar/introduction/IntroductionManagerImpl;",
            ">;)V"
        }
    .end annotation

    .line 41
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 42
    iput-object p1, p0, Lorg/briarproject/briar/introduction/IntroductionModule_ProvideIntroductionManagerFactory;->module:Lorg/briarproject/briar/introduction/IntroductionModule;

    .line 43
    iput-object p2, p0, Lorg/briarproject/briar/introduction/IntroductionModule_ProvideIntroductionManagerFactory;->lifecycleManagerProvider:Ljavax/inject/Provider;

    .line 44
    iput-object p3, p0, Lorg/briarproject/briar/introduction/IntroductionModule_ProvideIntroductionManagerFactory;->contactManagerProvider:Ljavax/inject/Provider;

    .line 45
    iput-object p4, p0, Lorg/briarproject/briar/introduction/IntroductionModule_ProvideIntroductionManagerFactory;->validationManagerProvider:Ljavax/inject/Provider;

    .line 46
    iput-object p5, p0, Lorg/briarproject/briar/introduction/IntroductionModule_ProvideIntroductionManagerFactory;->conversationManagerProvider:Ljavax/inject/Provider;

    .line 47
    iput-object p6, p0, Lorg/briarproject/briar/introduction/IntroductionModule_ProvideIntroductionManagerFactory;->clientVersioningManagerProvider:Ljavax/inject/Provider;

    .line 48
    iput-object p7, p0, Lorg/briarproject/briar/introduction/IntroductionModule_ProvideIntroductionManagerFactory;->introductionManagerProvider:Ljavax/inject/Provider;

    return-void
.end method

.method public static create(Lorg/briarproject/briar/introduction/IntroductionModule;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)Lorg/briarproject/briar/introduction/IntroductionModule_ProvideIntroductionManagerFactory;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/briarproject/briar/introduction/IntroductionModule;",
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
            "Lorg/briarproject/bramble/api/versioning/ClientVersioningManager;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lorg/briarproject/briar/introduction/IntroductionManagerImpl;",
            ">;)",
            "Lorg/briarproject/briar/introduction/IntroductionModule_ProvideIntroductionManagerFactory;"
        }
    .end annotation

    .line 89
    new-instance v8, Lorg/briarproject/briar/introduction/IntroductionModule_ProvideIntroductionManagerFactory;

    move-object v0, v8

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    move-object v6, p5

    move-object v7, p6

    invoke-direct/range {v0 .. v7}, Lorg/briarproject/briar/introduction/IntroductionModule_ProvideIntroductionManagerFactory;-><init>(Lorg/briarproject/briar/introduction/IntroductionModule;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)V

    return-object v8
.end method

.method public static provideInstance(Lorg/briarproject/briar/introduction/IntroductionModule;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)Lorg/briarproject/briar/api/introduction/IntroductionManager;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/briarproject/briar/introduction/IntroductionModule;",
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
            "Lorg/briarproject/bramble/api/versioning/ClientVersioningManager;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lorg/briarproject/briar/introduction/IntroductionManagerImpl;",
            ">;)",
            "Lorg/briarproject/briar/api/introduction/IntroductionManager;"
        }
    .end annotation

    .line 73
    invoke-interface {p1}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object p1

    move-object v1, p1

    check-cast v1, Lorg/briarproject/bramble/api/lifecycle/LifecycleManager;

    .line 74
    invoke-interface {p2}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object p1

    move-object v2, p1

    check-cast v2, Lorg/briarproject/bramble/api/contact/ContactManager;

    .line 75
    invoke-interface {p3}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object p1

    move-object v3, p1

    check-cast v3, Lorg/briarproject/bramble/api/sync/ValidationManager;

    .line 76
    invoke-interface {p4}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object p1

    move-object v4, p1

    check-cast v4, Lorg/briarproject/briar/api/conversation/ConversationManager;

    .line 77
    invoke-interface {p5}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object p1

    move-object v5, p1

    check-cast v5, Lorg/briarproject/bramble/api/versioning/ClientVersioningManager;

    .line 78
    invoke-interface {p6}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v6

    move-object v0, p0

    .line 71
    invoke-static/range {v0 .. v6}, Lorg/briarproject/briar/introduction/IntroductionModule_ProvideIntroductionManagerFactory;->proxyProvideIntroductionManager(Lorg/briarproject/briar/introduction/IntroductionModule;Lorg/briarproject/bramble/api/lifecycle/LifecycleManager;Lorg/briarproject/bramble/api/contact/ContactManager;Lorg/briarproject/bramble/api/sync/ValidationManager;Lorg/briarproject/briar/api/conversation/ConversationManager;Lorg/briarproject/bramble/api/versioning/ClientVersioningManager;Ljava/lang/Object;)Lorg/briarproject/briar/api/introduction/IntroductionManager;

    move-result-object p0

    return-object p0
.end method

.method public static proxyProvideIntroductionManager(Lorg/briarproject/briar/introduction/IntroductionModule;Lorg/briarproject/bramble/api/lifecycle/LifecycleManager;Lorg/briarproject/bramble/api/contact/ContactManager;Lorg/briarproject/bramble/api/sync/ValidationManager;Lorg/briarproject/briar/api/conversation/ConversationManager;Lorg/briarproject/bramble/api/versioning/ClientVersioningManager;Ljava/lang/Object;)Lorg/briarproject/briar/api/introduction/IntroductionManager;
    .locals 7

    .line 107
    move-object v6, p6

    check-cast v6, Lorg/briarproject/briar/introduction/IntroductionManagerImpl;

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    .line 108
    invoke-virtual/range {v0 .. v6}, Lorg/briarproject/briar/introduction/IntroductionModule;->provideIntroductionManager(Lorg/briarproject/bramble/api/lifecycle/LifecycleManager;Lorg/briarproject/bramble/api/contact/ContactManager;Lorg/briarproject/bramble/api/sync/ValidationManager;Lorg/briarproject/briar/api/conversation/ConversationManager;Lorg/briarproject/bramble/api/versioning/ClientVersioningManager;Lorg/briarproject/briar/introduction/IntroductionManagerImpl;)Lorg/briarproject/briar/api/introduction/IntroductionManager;

    move-result-object p0

    const-string p1, "Cannot return null from a non-@Nullable @Provides method"

    .line 107
    invoke-static {p0, p1}, Ldagger/internal/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lorg/briarproject/briar/api/introduction/IntroductionManager;

    return-object p0
.end method


# virtual methods
.method public bridge synthetic get()Ljava/lang/Object;
    .locals 1

    .line 14
    invoke-virtual {p0}, Lorg/briarproject/briar/introduction/IntroductionModule_ProvideIntroductionManagerFactory;->get()Lorg/briarproject/briar/api/introduction/IntroductionManager;

    move-result-object v0

    return-object v0
.end method

.method public get()Lorg/briarproject/briar/api/introduction/IntroductionManager;
    .locals 7

    .line 53
    iget-object v0, p0, Lorg/briarproject/briar/introduction/IntroductionModule_ProvideIntroductionManagerFactory;->module:Lorg/briarproject/briar/introduction/IntroductionModule;

    iget-object v1, p0, Lorg/briarproject/briar/introduction/IntroductionModule_ProvideIntroductionManagerFactory;->lifecycleManagerProvider:Ljavax/inject/Provider;

    iget-object v2, p0, Lorg/briarproject/briar/introduction/IntroductionModule_ProvideIntroductionManagerFactory;->contactManagerProvider:Ljavax/inject/Provider;

    iget-object v3, p0, Lorg/briarproject/briar/introduction/IntroductionModule_ProvideIntroductionManagerFactory;->validationManagerProvider:Ljavax/inject/Provider;

    iget-object v4, p0, Lorg/briarproject/briar/introduction/IntroductionModule_ProvideIntroductionManagerFactory;->conversationManagerProvider:Ljavax/inject/Provider;

    iget-object v5, p0, Lorg/briarproject/briar/introduction/IntroductionModule_ProvideIntroductionManagerFactory;->clientVersioningManagerProvider:Ljavax/inject/Provider;

    iget-object v6, p0, Lorg/briarproject/briar/introduction/IntroductionModule_ProvideIntroductionManagerFactory;->introductionManagerProvider:Ljavax/inject/Provider;

    invoke-static/range {v0 .. v6}, Lorg/briarproject/briar/introduction/IntroductionModule_ProvideIntroductionManagerFactory;->provideInstance(Lorg/briarproject/briar/introduction/IntroductionModule;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)Lorg/briarproject/briar/api/introduction/IntroductionManager;

    move-result-object v0

    return-object v0
.end method
