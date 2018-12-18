.class public final Lorg/briarproject/briar/android/sharing/ShareForumControllerImpl_Factory;
.super Ljava/lang/Object;
.source "ShareForumControllerImpl_Factory.java"

# interfaces
.implements Ldagger/internal/Factory;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ldagger/internal/Factory<",
        "Lorg/briarproject/briar/android/sharing/ShareForumControllerImpl;",
        ">;"
    }
.end annotation


# instance fields
.field private final clockProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lorg/briarproject/bramble/api/system/Clock;",
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

.field private final dbExecutorProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Ljava/util/concurrent/Executor;",
            ">;"
        }
    .end annotation
.end field

.field private final forumSharingManagerProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lorg/briarproject/briar/api/forum/ForumSharingManager;",
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


# direct methods
.method public constructor <init>(Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavax/inject/Provider<",
            "Ljava/util/concurrent/Executor;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lorg/briarproject/bramble/api/lifecycle/LifecycleManager;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lorg/briarproject/bramble/api/contact/ContactManager;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lorg/briarproject/briar/api/conversation/ConversationManager;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lorg/briarproject/briar/api/forum/ForumSharingManager;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lorg/briarproject/bramble/api/system/Clock;",
            ">;)V"
        }
    .end annotation

    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 37
    iput-object p1, p0, Lorg/briarproject/briar/android/sharing/ShareForumControllerImpl_Factory;->dbExecutorProvider:Ljavax/inject/Provider;

    .line 38
    iput-object p2, p0, Lorg/briarproject/briar/android/sharing/ShareForumControllerImpl_Factory;->lifecycleManagerProvider:Ljavax/inject/Provider;

    .line 39
    iput-object p3, p0, Lorg/briarproject/briar/android/sharing/ShareForumControllerImpl_Factory;->contactManagerProvider:Ljavax/inject/Provider;

    .line 40
    iput-object p4, p0, Lorg/briarproject/briar/android/sharing/ShareForumControllerImpl_Factory;->conversationManagerProvider:Ljavax/inject/Provider;

    .line 41
    iput-object p5, p0, Lorg/briarproject/briar/android/sharing/ShareForumControllerImpl_Factory;->forumSharingManagerProvider:Ljavax/inject/Provider;

    .line 42
    iput-object p6, p0, Lorg/briarproject/briar/android/sharing/ShareForumControllerImpl_Factory;->clockProvider:Ljavax/inject/Provider;

    return-void
.end method

.method public static create(Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)Lorg/briarproject/briar/android/sharing/ShareForumControllerImpl_Factory;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavax/inject/Provider<",
            "Ljava/util/concurrent/Executor;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lorg/briarproject/bramble/api/lifecycle/LifecycleManager;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lorg/briarproject/bramble/api/contact/ContactManager;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lorg/briarproject/briar/api/conversation/ConversationManager;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lorg/briarproject/briar/api/forum/ForumSharingManager;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lorg/briarproject/bramble/api/system/Clock;",
            ">;)",
            "Lorg/briarproject/briar/android/sharing/ShareForumControllerImpl_Factory;"
        }
    .end annotation

    .line 79
    new-instance v7, Lorg/briarproject/briar/android/sharing/ShareForumControllerImpl_Factory;

    move-object v0, v7

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    move-object v6, p5

    invoke-direct/range {v0 .. v6}, Lorg/briarproject/briar/android/sharing/ShareForumControllerImpl_Factory;-><init>(Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)V

    return-object v7
.end method

.method public static newShareForumControllerImpl(Ljava/util/concurrent/Executor;Lorg/briarproject/bramble/api/lifecycle/LifecycleManager;Lorg/briarproject/bramble/api/contact/ContactManager;Lorg/briarproject/briar/api/conversation/ConversationManager;Lorg/briarproject/briar/api/forum/ForumSharingManager;Lorg/briarproject/bramble/api/system/Clock;)Lorg/briarproject/briar/android/sharing/ShareForumControllerImpl;
    .locals 8

    .line 95
    new-instance v7, Lorg/briarproject/briar/android/sharing/ShareForumControllerImpl;

    move-object v0, v7

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    move-object v6, p5

    invoke-direct/range {v0 .. v6}, Lorg/briarproject/briar/android/sharing/ShareForumControllerImpl;-><init>(Ljava/util/concurrent/Executor;Lorg/briarproject/bramble/api/lifecycle/LifecycleManager;Lorg/briarproject/bramble/api/contact/ContactManager;Lorg/briarproject/briar/api/conversation/ConversationManager;Lorg/briarproject/briar/api/forum/ForumSharingManager;Lorg/briarproject/bramble/api/system/Clock;)V

    return-object v7
.end method

.method public static provideInstance(Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)Lorg/briarproject/briar/android/sharing/ShareForumControllerImpl;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavax/inject/Provider<",
            "Ljava/util/concurrent/Executor;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lorg/briarproject/bramble/api/lifecycle/LifecycleManager;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lorg/briarproject/bramble/api/contact/ContactManager;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lorg/briarproject/briar/api/conversation/ConversationManager;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lorg/briarproject/briar/api/forum/ForumSharingManager;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lorg/briarproject/bramble/api/system/Clock;",
            ">;)",
            "Lorg/briarproject/briar/android/sharing/ShareForumControllerImpl;"
        }
    .end annotation

    .line 63
    new-instance v7, Lorg/briarproject/briar/android/sharing/ShareForumControllerImpl;

    .line 64
    invoke-interface {p0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object p0

    move-object v1, p0

    check-cast v1, Ljava/util/concurrent/Executor;

    .line 65
    invoke-interface {p1}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object p0

    move-object v2, p0

    check-cast v2, Lorg/briarproject/bramble/api/lifecycle/LifecycleManager;

    .line 66
    invoke-interface {p2}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object p0

    move-object v3, p0

    check-cast v3, Lorg/briarproject/bramble/api/contact/ContactManager;

    .line 67
    invoke-interface {p3}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object p0

    move-object v4, p0

    check-cast v4, Lorg/briarproject/briar/api/conversation/ConversationManager;

    .line 68
    invoke-interface {p4}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object p0

    move-object v5, p0

    check-cast v5, Lorg/briarproject/briar/api/forum/ForumSharingManager;

    .line 69
    invoke-interface {p5}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object p0

    move-object v6, p0

    check-cast v6, Lorg/briarproject/bramble/api/system/Clock;

    move-object v0, v7

    invoke-direct/range {v0 .. v6}, Lorg/briarproject/briar/android/sharing/ShareForumControllerImpl;-><init>(Ljava/util/concurrent/Executor;Lorg/briarproject/bramble/api/lifecycle/LifecycleManager;Lorg/briarproject/bramble/api/contact/ContactManager;Lorg/briarproject/briar/api/conversation/ConversationManager;Lorg/briarproject/briar/api/forum/ForumSharingManager;Lorg/briarproject/bramble/api/system/Clock;)V

    return-object v7
.end method


# virtual methods
.method public bridge synthetic get()Ljava/lang/Object;
    .locals 1

    .line 13
    invoke-virtual {p0}, Lorg/briarproject/briar/android/sharing/ShareForumControllerImpl_Factory;->get()Lorg/briarproject/briar/android/sharing/ShareForumControllerImpl;

    move-result-object v0

    return-object v0
.end method

.method public get()Lorg/briarproject/briar/android/sharing/ShareForumControllerImpl;
    .locals 6

    .line 47
    iget-object v0, p0, Lorg/briarproject/briar/android/sharing/ShareForumControllerImpl_Factory;->dbExecutorProvider:Ljavax/inject/Provider;

    iget-object v1, p0, Lorg/briarproject/briar/android/sharing/ShareForumControllerImpl_Factory;->lifecycleManagerProvider:Ljavax/inject/Provider;

    iget-object v2, p0, Lorg/briarproject/briar/android/sharing/ShareForumControllerImpl_Factory;->contactManagerProvider:Ljavax/inject/Provider;

    iget-object v3, p0, Lorg/briarproject/briar/android/sharing/ShareForumControllerImpl_Factory;->conversationManagerProvider:Ljavax/inject/Provider;

    iget-object v4, p0, Lorg/briarproject/briar/android/sharing/ShareForumControllerImpl_Factory;->forumSharingManagerProvider:Ljavax/inject/Provider;

    iget-object v5, p0, Lorg/briarproject/briar/android/sharing/ShareForumControllerImpl_Factory;->clockProvider:Ljavax/inject/Provider;

    invoke-static/range {v0 .. v5}, Lorg/briarproject/briar/android/sharing/ShareForumControllerImpl_Factory;->provideInstance(Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)Lorg/briarproject/briar/android/sharing/ShareForumControllerImpl;

    move-result-object v0

    return-object v0
.end method
