.class public final Lorg/briarproject/briar/privategroup/invitation/GroupInvitationModule_ProvideGroupInvitationManagerFactory;
.super Ljava/lang/Object;
.source "GroupInvitationModule_ProvideGroupInvitationManagerFactory.java"

# interfaces
.implements Ldagger/internal/Factory;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ldagger/internal/Factory<",
        "Lorg/briarproject/briar/api/privategroup/invitation/GroupInvitationManager;",
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

.field private final groupInvitationManagerProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lorg/briarproject/briar/privategroup/invitation/GroupInvitationManagerImpl;",
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

.field private final module:Lorg/briarproject/briar/privategroup/invitation/GroupInvitationModule;

.field private final privateGroupManagerProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lorg/briarproject/briar/api/privategroup/PrivateGroupManager;",
            ">;"
        }
    .end annotation
.end field

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
.method public constructor <init>(Lorg/briarproject/briar/privategroup/invitation/GroupInvitationModule;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/briarproject/briar/privategroup/invitation/GroupInvitationModule;",
            "Ljavax/inject/Provider<",
            "Lorg/briarproject/briar/privategroup/invitation/GroupInvitationManagerImpl;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lorg/briarproject/bramble/api/lifecycle/LifecycleManager;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lorg/briarproject/bramble/api/sync/ValidationManager;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lorg/briarproject/bramble/api/contact/ContactManager;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lorg/briarproject/briar/api/privategroup/PrivateGroupManager;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lorg/briarproject/briar/api/conversation/ConversationManager;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lorg/briarproject/bramble/api/versioning/ClientVersioningManager;",
            ">;)V"
        }
    .end annotation

    .line 45
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 46
    iput-object p1, p0, Lorg/briarproject/briar/privategroup/invitation/GroupInvitationModule_ProvideGroupInvitationManagerFactory;->module:Lorg/briarproject/briar/privategroup/invitation/GroupInvitationModule;

    .line 47
    iput-object p2, p0, Lorg/briarproject/briar/privategroup/invitation/GroupInvitationModule_ProvideGroupInvitationManagerFactory;->groupInvitationManagerProvider:Ljavax/inject/Provider;

    .line 48
    iput-object p3, p0, Lorg/briarproject/briar/privategroup/invitation/GroupInvitationModule_ProvideGroupInvitationManagerFactory;->lifecycleManagerProvider:Ljavax/inject/Provider;

    .line 49
    iput-object p4, p0, Lorg/briarproject/briar/privategroup/invitation/GroupInvitationModule_ProvideGroupInvitationManagerFactory;->validationManagerProvider:Ljavax/inject/Provider;

    .line 50
    iput-object p5, p0, Lorg/briarproject/briar/privategroup/invitation/GroupInvitationModule_ProvideGroupInvitationManagerFactory;->contactManagerProvider:Ljavax/inject/Provider;

    .line 51
    iput-object p6, p0, Lorg/briarproject/briar/privategroup/invitation/GroupInvitationModule_ProvideGroupInvitationManagerFactory;->privateGroupManagerProvider:Ljavax/inject/Provider;

    .line 52
    iput-object p7, p0, Lorg/briarproject/briar/privategroup/invitation/GroupInvitationModule_ProvideGroupInvitationManagerFactory;->conversationManagerProvider:Ljavax/inject/Provider;

    .line 53
    iput-object p8, p0, Lorg/briarproject/briar/privategroup/invitation/GroupInvitationModule_ProvideGroupInvitationManagerFactory;->clientVersioningManagerProvider:Ljavax/inject/Provider;

    return-void
.end method

.method public static create(Lorg/briarproject/briar/privategroup/invitation/GroupInvitationModule;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)Lorg/briarproject/briar/privategroup/invitation/GroupInvitationModule_ProvideGroupInvitationManagerFactory;
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/briarproject/briar/privategroup/invitation/GroupInvitationModule;",
            "Ljavax/inject/Provider<",
            "Lorg/briarproject/briar/privategroup/invitation/GroupInvitationManagerImpl;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lorg/briarproject/bramble/api/lifecycle/LifecycleManager;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lorg/briarproject/bramble/api/sync/ValidationManager;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lorg/briarproject/bramble/api/contact/ContactManager;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lorg/briarproject/briar/api/privategroup/PrivateGroupManager;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lorg/briarproject/briar/api/conversation/ConversationManager;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lorg/briarproject/bramble/api/versioning/ClientVersioningManager;",
            ">;)",
            "Lorg/briarproject/briar/privategroup/invitation/GroupInvitationModule_ProvideGroupInvitationManagerFactory;"
        }
    .end annotation

    .line 98
    new-instance v9, Lorg/briarproject/briar/privategroup/invitation/GroupInvitationModule_ProvideGroupInvitationManagerFactory;

    move-object v0, v9

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    move-object v6, p5

    move-object/from16 v7, p6

    move-object/from16 v8, p7

    invoke-direct/range {v0 .. v8}, Lorg/briarproject/briar/privategroup/invitation/GroupInvitationModule_ProvideGroupInvitationManagerFactory;-><init>(Lorg/briarproject/briar/privategroup/invitation/GroupInvitationModule;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)V

    return-object v9
.end method

.method public static provideInstance(Lorg/briarproject/briar/privategroup/invitation/GroupInvitationModule;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)Lorg/briarproject/briar/api/privategroup/invitation/GroupInvitationManager;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/briarproject/briar/privategroup/invitation/GroupInvitationModule;",
            "Ljavax/inject/Provider<",
            "Lorg/briarproject/briar/privategroup/invitation/GroupInvitationManagerImpl;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lorg/briarproject/bramble/api/lifecycle/LifecycleManager;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lorg/briarproject/bramble/api/sync/ValidationManager;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lorg/briarproject/bramble/api/contact/ContactManager;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lorg/briarproject/briar/api/privategroup/PrivateGroupManager;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lorg/briarproject/briar/api/conversation/ConversationManager;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lorg/briarproject/bramble/api/versioning/ClientVersioningManager;",
            ">;)",
            "Lorg/briarproject/briar/api/privategroup/invitation/GroupInvitationManager;"
        }
    .end annotation

    .line 80
    invoke-interface {p1}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object p1

    .line 81
    invoke-interface {p2}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lorg/briarproject/bramble/api/lifecycle/LifecycleManager;

    .line 82
    invoke-interface {p3}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lorg/briarproject/bramble/api/sync/ValidationManager;

    .line 83
    invoke-interface {p4}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object p4

    check-cast p4, Lorg/briarproject/bramble/api/contact/ContactManager;

    .line 84
    invoke-interface {p5}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object p5

    check-cast p5, Lorg/briarproject/briar/api/privategroup/PrivateGroupManager;

    .line 85
    invoke-interface {p6}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object p6

    check-cast p6, Lorg/briarproject/briar/api/conversation/ConversationManager;

    .line 86
    invoke-interface {p7}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object p7

    check-cast p7, Lorg/briarproject/bramble/api/versioning/ClientVersioningManager;

    .line 78
    invoke-static/range {p0 .. p7}, Lorg/briarproject/briar/privategroup/invitation/GroupInvitationModule_ProvideGroupInvitationManagerFactory;->proxyProvideGroupInvitationManager(Lorg/briarproject/briar/privategroup/invitation/GroupInvitationModule;Ljava/lang/Object;Lorg/briarproject/bramble/api/lifecycle/LifecycleManager;Lorg/briarproject/bramble/api/sync/ValidationManager;Lorg/briarproject/bramble/api/contact/ContactManager;Lorg/briarproject/briar/api/privategroup/PrivateGroupManager;Lorg/briarproject/briar/api/conversation/ConversationManager;Lorg/briarproject/bramble/api/versioning/ClientVersioningManager;)Lorg/briarproject/briar/api/privategroup/invitation/GroupInvitationManager;

    move-result-object p0

    return-object p0
.end method

.method public static proxyProvideGroupInvitationManager(Lorg/briarproject/briar/privategroup/invitation/GroupInvitationModule;Ljava/lang/Object;Lorg/briarproject/bramble/api/lifecycle/LifecycleManager;Lorg/briarproject/bramble/api/sync/ValidationManager;Lorg/briarproject/bramble/api/contact/ContactManager;Lorg/briarproject/briar/api/privategroup/PrivateGroupManager;Lorg/briarproject/briar/api/conversation/ConversationManager;Lorg/briarproject/bramble/api/versioning/ClientVersioningManager;)Lorg/briarproject/briar/api/privategroup/invitation/GroupInvitationManager;
    .locals 8

    .line 118
    move-object v1, p1

    check-cast v1, Lorg/briarproject/briar/privategroup/invitation/GroupInvitationManagerImpl;

    move-object v0, p0

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    move-object v6, p6

    move-object v7, p7

    .line 119
    invoke-virtual/range {v0 .. v7}, Lorg/briarproject/briar/privategroup/invitation/GroupInvitationModule;->provideGroupInvitationManager(Lorg/briarproject/briar/privategroup/invitation/GroupInvitationManagerImpl;Lorg/briarproject/bramble/api/lifecycle/LifecycleManager;Lorg/briarproject/bramble/api/sync/ValidationManager;Lorg/briarproject/bramble/api/contact/ContactManager;Lorg/briarproject/briar/api/privategroup/PrivateGroupManager;Lorg/briarproject/briar/api/conversation/ConversationManager;Lorg/briarproject/bramble/api/versioning/ClientVersioningManager;)Lorg/briarproject/briar/api/privategroup/invitation/GroupInvitationManager;

    move-result-object p0

    const-string p1, "Cannot return null from a non-@Nullable @Provides method"

    .line 118
    invoke-static {p0, p1}, Ldagger/internal/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lorg/briarproject/briar/api/privategroup/invitation/GroupInvitationManager;

    return-object p0
.end method


# virtual methods
.method public bridge synthetic get()Ljava/lang/Object;
    .locals 1

    .line 15
    invoke-virtual {p0}, Lorg/briarproject/briar/privategroup/invitation/GroupInvitationModule_ProvideGroupInvitationManagerFactory;->get()Lorg/briarproject/briar/api/privategroup/invitation/GroupInvitationManager;

    move-result-object v0

    return-object v0
.end method

.method public get()Lorg/briarproject/briar/api/privategroup/invitation/GroupInvitationManager;
    .locals 8

    .line 58
    iget-object v0, p0, Lorg/briarproject/briar/privategroup/invitation/GroupInvitationModule_ProvideGroupInvitationManagerFactory;->module:Lorg/briarproject/briar/privategroup/invitation/GroupInvitationModule;

    iget-object v1, p0, Lorg/briarproject/briar/privategroup/invitation/GroupInvitationModule_ProvideGroupInvitationManagerFactory;->groupInvitationManagerProvider:Ljavax/inject/Provider;

    iget-object v2, p0, Lorg/briarproject/briar/privategroup/invitation/GroupInvitationModule_ProvideGroupInvitationManagerFactory;->lifecycleManagerProvider:Ljavax/inject/Provider;

    iget-object v3, p0, Lorg/briarproject/briar/privategroup/invitation/GroupInvitationModule_ProvideGroupInvitationManagerFactory;->validationManagerProvider:Ljavax/inject/Provider;

    iget-object v4, p0, Lorg/briarproject/briar/privategroup/invitation/GroupInvitationModule_ProvideGroupInvitationManagerFactory;->contactManagerProvider:Ljavax/inject/Provider;

    iget-object v5, p0, Lorg/briarproject/briar/privategroup/invitation/GroupInvitationModule_ProvideGroupInvitationManagerFactory;->privateGroupManagerProvider:Ljavax/inject/Provider;

    iget-object v6, p0, Lorg/briarproject/briar/privategroup/invitation/GroupInvitationModule_ProvideGroupInvitationManagerFactory;->conversationManagerProvider:Ljavax/inject/Provider;

    iget-object v7, p0, Lorg/briarproject/briar/privategroup/invitation/GroupInvitationModule_ProvideGroupInvitationManagerFactory;->clientVersioningManagerProvider:Ljavax/inject/Provider;

    invoke-static/range {v0 .. v7}, Lorg/briarproject/briar/privategroup/invitation/GroupInvitationModule_ProvideGroupInvitationManagerFactory;->provideInstance(Lorg/briarproject/briar/privategroup/invitation/GroupInvitationModule;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)Lorg/briarproject/briar/api/privategroup/invitation/GroupInvitationManager;

    move-result-object v0

    return-object v0
.end method
