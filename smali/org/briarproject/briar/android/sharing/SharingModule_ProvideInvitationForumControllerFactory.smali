.class public final Lorg/briarproject/briar/android/sharing/SharingModule_ProvideInvitationForumControllerFactory;
.super Ljava/lang/Object;
.source "SharingModule_ProvideInvitationForumControllerFactory.java"

# interfaces
.implements Ldagger/internal/Factory;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ldagger/internal/Factory<",
        "Lorg/briarproject/briar/android/sharing/ForumInvitationController;",
        ">;"
    }
.end annotation


# instance fields
.field private final activityProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lorg/briarproject/briar/android/activity/BaseActivity;",
            ">;"
        }
    .end annotation
.end field

.field private final forumInvitationControllerProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lorg/briarproject/briar/android/sharing/ForumInvitationControllerImpl;",
            ">;"
        }
    .end annotation
.end field

.field private final module:Lorg/briarproject/briar/android/sharing/SharingModule;


# direct methods
.method public constructor <init>(Lorg/briarproject/briar/android/sharing/SharingModule;Ljavax/inject/Provider;Ljavax/inject/Provider;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/briarproject/briar/android/sharing/SharingModule;",
            "Ljavax/inject/Provider<",
            "Lorg/briarproject/briar/android/activity/BaseActivity;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lorg/briarproject/briar/android/sharing/ForumInvitationControllerImpl;",
            ">;)V"
        }
    .end annotation

    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 25
    iput-object p1, p0, Lorg/briarproject/briar/android/sharing/SharingModule_ProvideInvitationForumControllerFactory;->module:Lorg/briarproject/briar/android/sharing/SharingModule;

    .line 26
    iput-object p2, p0, Lorg/briarproject/briar/android/sharing/SharingModule_ProvideInvitationForumControllerFactory;->activityProvider:Ljavax/inject/Provider;

    .line 27
    iput-object p3, p0, Lorg/briarproject/briar/android/sharing/SharingModule_ProvideInvitationForumControllerFactory;->forumInvitationControllerProvider:Ljavax/inject/Provider;

    return-void
.end method

.method public static create(Lorg/briarproject/briar/android/sharing/SharingModule;Ljavax/inject/Provider;Ljavax/inject/Provider;)Lorg/briarproject/briar/android/sharing/SharingModule_ProvideInvitationForumControllerFactory;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/briarproject/briar/android/sharing/SharingModule;",
            "Ljavax/inject/Provider<",
            "Lorg/briarproject/briar/android/activity/BaseActivity;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lorg/briarproject/briar/android/sharing/ForumInvitationControllerImpl;",
            ">;)",
            "Lorg/briarproject/briar/android/sharing/SharingModule_ProvideInvitationForumControllerFactory;"
        }
    .end annotation

    .line 47
    new-instance v0, Lorg/briarproject/briar/android/sharing/SharingModule_ProvideInvitationForumControllerFactory;

    invoke-direct {v0, p0, p1, p2}, Lorg/briarproject/briar/android/sharing/SharingModule_ProvideInvitationForumControllerFactory;-><init>(Lorg/briarproject/briar/android/sharing/SharingModule;Ljavax/inject/Provider;Ljavax/inject/Provider;)V

    return-object v0
.end method

.method public static provideInstance(Lorg/briarproject/briar/android/sharing/SharingModule;Ljavax/inject/Provider;Ljavax/inject/Provider;)Lorg/briarproject/briar/android/sharing/ForumInvitationController;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/briarproject/briar/android/sharing/SharingModule;",
            "Ljavax/inject/Provider<",
            "Lorg/briarproject/briar/android/activity/BaseActivity;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lorg/briarproject/briar/android/sharing/ForumInvitationControllerImpl;",
            ">;)",
            "Lorg/briarproject/briar/android/sharing/ForumInvitationController;"
        }
    .end annotation

    .line 40
    invoke-interface {p1}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/briarproject/briar/android/activity/BaseActivity;

    invoke-interface {p2}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object p2

    .line 39
    invoke-static {p0, p1, p2}, Lorg/briarproject/briar/android/sharing/SharingModule_ProvideInvitationForumControllerFactory;->proxyProvideInvitationForumController(Lorg/briarproject/briar/android/sharing/SharingModule;Lorg/briarproject/briar/android/activity/BaseActivity;Ljava/lang/Object;)Lorg/briarproject/briar/android/sharing/ForumInvitationController;

    move-result-object p0

    return-object p0
.end method

.method public static proxyProvideInvitationForumController(Lorg/briarproject/briar/android/sharing/SharingModule;Lorg/briarproject/briar/android/activity/BaseActivity;Ljava/lang/Object;)Lorg/briarproject/briar/android/sharing/ForumInvitationController;
    .locals 0

    .line 53
    check-cast p2, Lorg/briarproject/briar/android/sharing/ForumInvitationControllerImpl;

    .line 54
    invoke-virtual {p0, p1, p2}, Lorg/briarproject/briar/android/sharing/SharingModule;->provideInvitationForumController(Lorg/briarproject/briar/android/activity/BaseActivity;Lorg/briarproject/briar/android/sharing/ForumInvitationControllerImpl;)Lorg/briarproject/briar/android/sharing/ForumInvitationController;

    move-result-object p0

    const-string p1, "Cannot return null from a non-@Nullable @Provides method"

    .line 53
    invoke-static {p0, p1}, Ldagger/internal/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lorg/briarproject/briar/android/sharing/ForumInvitationController;

    return-object p0
.end method


# virtual methods
.method public bridge synthetic get()Ljava/lang/Object;
    .locals 1

    .line 9
    invoke-virtual {p0}, Lorg/briarproject/briar/android/sharing/SharingModule_ProvideInvitationForumControllerFactory;->get()Lorg/briarproject/briar/android/sharing/ForumInvitationController;

    move-result-object v0

    return-object v0
.end method

.method public get()Lorg/briarproject/briar/android/sharing/ForumInvitationController;
    .locals 3

    .line 32
    iget-object v0, p0, Lorg/briarproject/briar/android/sharing/SharingModule_ProvideInvitationForumControllerFactory;->module:Lorg/briarproject/briar/android/sharing/SharingModule;

    iget-object v1, p0, Lorg/briarproject/briar/android/sharing/SharingModule_ProvideInvitationForumControllerFactory;->activityProvider:Ljavax/inject/Provider;

    iget-object v2, p0, Lorg/briarproject/briar/android/sharing/SharingModule_ProvideInvitationForumControllerFactory;->forumInvitationControllerProvider:Ljavax/inject/Provider;

    invoke-static {v0, v1, v2}, Lorg/briarproject/briar/android/sharing/SharingModule_ProvideInvitationForumControllerFactory;->provideInstance(Lorg/briarproject/briar/android/sharing/SharingModule;Ljavax/inject/Provider;Ljavax/inject/Provider;)Lorg/briarproject/briar/android/sharing/ForumInvitationController;

    move-result-object v0

    return-object v0
.end method
