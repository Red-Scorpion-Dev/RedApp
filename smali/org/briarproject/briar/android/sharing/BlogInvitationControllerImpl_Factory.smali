.class public final Lorg/briarproject/briar/android/sharing/BlogInvitationControllerImpl_Factory;
.super Ljava/lang/Object;
.source "BlogInvitationControllerImpl_Factory.java"

# interfaces
.implements Ldagger/internal/Factory;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ldagger/internal/Factory<",
        "Lorg/briarproject/briar/android/sharing/BlogInvitationControllerImpl;",
        ">;"
    }
.end annotation


# instance fields
.field private final blogSharingManagerProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lorg/briarproject/briar/api/blog/BlogSharingManager;",
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

.field private final eventBusProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lorg/briarproject/bramble/api/event/EventBus;",
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
.method public constructor <init>(Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)V
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
            "Lorg/briarproject/bramble/api/event/EventBus;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lorg/briarproject/briar/api/blog/BlogSharingManager;",
            ">;)V"
        }
    .end annotation

    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 30
    iput-object p1, p0, Lorg/briarproject/briar/android/sharing/BlogInvitationControllerImpl_Factory;->dbExecutorProvider:Ljavax/inject/Provider;

    .line 31
    iput-object p2, p0, Lorg/briarproject/briar/android/sharing/BlogInvitationControllerImpl_Factory;->lifecycleManagerProvider:Ljavax/inject/Provider;

    .line 32
    iput-object p3, p0, Lorg/briarproject/briar/android/sharing/BlogInvitationControllerImpl_Factory;->eventBusProvider:Ljavax/inject/Provider;

    .line 33
    iput-object p4, p0, Lorg/briarproject/briar/android/sharing/BlogInvitationControllerImpl_Factory;->blogSharingManagerProvider:Ljavax/inject/Provider;

    return-void
.end method

.method public static create(Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)Lorg/briarproject/briar/android/sharing/BlogInvitationControllerImpl_Factory;
    .locals 1
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
            "Lorg/briarproject/bramble/api/event/EventBus;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lorg/briarproject/briar/api/blog/BlogSharingManager;",
            ">;)",
            "Lorg/briarproject/briar/android/sharing/BlogInvitationControllerImpl_Factory;"
        }
    .end annotation

    .line 59
    new-instance v0, Lorg/briarproject/briar/android/sharing/BlogInvitationControllerImpl_Factory;

    invoke-direct {v0, p0, p1, p2, p3}, Lorg/briarproject/briar/android/sharing/BlogInvitationControllerImpl_Factory;-><init>(Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)V

    return-object v0
.end method

.method public static newBlogInvitationControllerImpl(Ljava/util/concurrent/Executor;Lorg/briarproject/bramble/api/lifecycle/LifecycleManager;Lorg/briarproject/bramble/api/event/EventBus;Lorg/briarproject/briar/api/blog/BlogSharingManager;)Lorg/briarproject/briar/android/sharing/BlogInvitationControllerImpl;
    .locals 1

    .line 68
    new-instance v0, Lorg/briarproject/briar/android/sharing/BlogInvitationControllerImpl;

    invoke-direct {v0, p0, p1, p2, p3}, Lorg/briarproject/briar/android/sharing/BlogInvitationControllerImpl;-><init>(Ljava/util/concurrent/Executor;Lorg/briarproject/bramble/api/lifecycle/LifecycleManager;Lorg/briarproject/bramble/api/event/EventBus;Lorg/briarproject/briar/api/blog/BlogSharingManager;)V

    return-object v0
.end method

.method public static provideInstance(Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)Lorg/briarproject/briar/android/sharing/BlogInvitationControllerImpl;
    .locals 1
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
            "Lorg/briarproject/bramble/api/event/EventBus;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lorg/briarproject/briar/api/blog/BlogSharingManager;",
            ">;)",
            "Lorg/briarproject/briar/android/sharing/BlogInvitationControllerImpl;"
        }
    .end annotation

    .line 47
    new-instance v0, Lorg/briarproject/briar/android/sharing/BlogInvitationControllerImpl;

    .line 48
    invoke-interface {p0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/concurrent/Executor;

    .line 49
    invoke-interface {p1}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/briarproject/bramble/api/lifecycle/LifecycleManager;

    .line 50
    invoke-interface {p2}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lorg/briarproject/bramble/api/event/EventBus;

    .line 51
    invoke-interface {p3}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lorg/briarproject/briar/api/blog/BlogSharingManager;

    invoke-direct {v0, p0, p1, p2, p3}, Lorg/briarproject/briar/android/sharing/BlogInvitationControllerImpl;-><init>(Ljava/util/concurrent/Executor;Lorg/briarproject/bramble/api/lifecycle/LifecycleManager;Lorg/briarproject/bramble/api/event/EventBus;Lorg/briarproject/briar/api/blog/BlogSharingManager;)V

    return-object v0
.end method


# virtual methods
.method public bridge synthetic get()Ljava/lang/Object;
    .locals 1

    .line 11
    invoke-virtual {p0}, Lorg/briarproject/briar/android/sharing/BlogInvitationControllerImpl_Factory;->get()Lorg/briarproject/briar/android/sharing/BlogInvitationControllerImpl;

    move-result-object v0

    return-object v0
.end method

.method public get()Lorg/briarproject/briar/android/sharing/BlogInvitationControllerImpl;
    .locals 4

    .line 38
    iget-object v0, p0, Lorg/briarproject/briar/android/sharing/BlogInvitationControllerImpl_Factory;->dbExecutorProvider:Ljavax/inject/Provider;

    iget-object v1, p0, Lorg/briarproject/briar/android/sharing/BlogInvitationControllerImpl_Factory;->lifecycleManagerProvider:Ljavax/inject/Provider;

    iget-object v2, p0, Lorg/briarproject/briar/android/sharing/BlogInvitationControllerImpl_Factory;->eventBusProvider:Ljavax/inject/Provider;

    iget-object v3, p0, Lorg/briarproject/briar/android/sharing/BlogInvitationControllerImpl_Factory;->blogSharingManagerProvider:Ljavax/inject/Provider;

    invoke-static {v0, v1, v2, v3}, Lorg/briarproject/briar/android/sharing/BlogInvitationControllerImpl_Factory;->provideInstance(Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)Lorg/briarproject/briar/android/sharing/BlogInvitationControllerImpl;

    move-result-object v0

    return-object v0
.end method
