.class public final Lorg/briarproject/briar/android/forum/ForumModule_ProvideForumControllerFactory;
.super Ljava/lang/Object;
.source "ForumModule_ProvideForumControllerFactory.java"

# interfaces
.implements Ldagger/internal/Factory;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ldagger/internal/Factory<",
        "Lorg/briarproject/briar/android/forum/ForumController;",
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

.field private final forumControllerProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lorg/briarproject/briar/android/forum/ForumControllerImpl;",
            ">;"
        }
    .end annotation
.end field

.field private final module:Lorg/briarproject/briar/android/forum/ForumModule;


# direct methods
.method public constructor <init>(Lorg/briarproject/briar/android/forum/ForumModule;Ljavax/inject/Provider;Ljavax/inject/Provider;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/briarproject/briar/android/forum/ForumModule;",
            "Ljavax/inject/Provider<",
            "Lorg/briarproject/briar/android/activity/BaseActivity;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lorg/briarproject/briar/android/forum/ForumControllerImpl;",
            ">;)V"
        }
    .end annotation

    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 24
    iput-object p1, p0, Lorg/briarproject/briar/android/forum/ForumModule_ProvideForumControllerFactory;->module:Lorg/briarproject/briar/android/forum/ForumModule;

    .line 25
    iput-object p2, p0, Lorg/briarproject/briar/android/forum/ForumModule_ProvideForumControllerFactory;->activityProvider:Ljavax/inject/Provider;

    .line 26
    iput-object p3, p0, Lorg/briarproject/briar/android/forum/ForumModule_ProvideForumControllerFactory;->forumControllerProvider:Ljavax/inject/Provider;

    return-void
.end method

.method public static create(Lorg/briarproject/briar/android/forum/ForumModule;Ljavax/inject/Provider;Ljavax/inject/Provider;)Lorg/briarproject/briar/android/forum/ForumModule_ProvideForumControllerFactory;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/briarproject/briar/android/forum/ForumModule;",
            "Ljavax/inject/Provider<",
            "Lorg/briarproject/briar/android/activity/BaseActivity;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lorg/briarproject/briar/android/forum/ForumControllerImpl;",
            ">;)",
            "Lorg/briarproject/briar/android/forum/ForumModule_ProvideForumControllerFactory;"
        }
    .end annotation

    .line 46
    new-instance v0, Lorg/briarproject/briar/android/forum/ForumModule_ProvideForumControllerFactory;

    invoke-direct {v0, p0, p1, p2}, Lorg/briarproject/briar/android/forum/ForumModule_ProvideForumControllerFactory;-><init>(Lorg/briarproject/briar/android/forum/ForumModule;Ljavax/inject/Provider;Ljavax/inject/Provider;)V

    return-object v0
.end method

.method public static provideInstance(Lorg/briarproject/briar/android/forum/ForumModule;Ljavax/inject/Provider;Ljavax/inject/Provider;)Lorg/briarproject/briar/android/forum/ForumController;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/briarproject/briar/android/forum/ForumModule;",
            "Ljavax/inject/Provider<",
            "Lorg/briarproject/briar/android/activity/BaseActivity;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lorg/briarproject/briar/android/forum/ForumControllerImpl;",
            ">;)",
            "Lorg/briarproject/briar/android/forum/ForumController;"
        }
    .end annotation

    .line 39
    invoke-interface {p1}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/briarproject/briar/android/activity/BaseActivity;

    invoke-interface {p2}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object p2

    .line 38
    invoke-static {p0, p1, p2}, Lorg/briarproject/briar/android/forum/ForumModule_ProvideForumControllerFactory;->proxyProvideForumController(Lorg/briarproject/briar/android/forum/ForumModule;Lorg/briarproject/briar/android/activity/BaseActivity;Ljava/lang/Object;)Lorg/briarproject/briar/android/forum/ForumController;

    move-result-object p0

    return-object p0
.end method

.method public static proxyProvideForumController(Lorg/briarproject/briar/android/forum/ForumModule;Lorg/briarproject/briar/android/activity/BaseActivity;Ljava/lang/Object;)Lorg/briarproject/briar/android/forum/ForumController;
    .locals 0

    .line 52
    check-cast p2, Lorg/briarproject/briar/android/forum/ForumControllerImpl;

    .line 53
    invoke-virtual {p0, p1, p2}, Lorg/briarproject/briar/android/forum/ForumModule;->provideForumController(Lorg/briarproject/briar/android/activity/BaseActivity;Lorg/briarproject/briar/android/forum/ForumControllerImpl;)Lorg/briarproject/briar/android/forum/ForumController;

    move-result-object p0

    const-string p1, "Cannot return null from a non-@Nullable @Provides method"

    .line 52
    invoke-static {p0, p1}, Ldagger/internal/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lorg/briarproject/briar/android/forum/ForumController;

    return-object p0
.end method


# virtual methods
.method public bridge synthetic get()Ljava/lang/Object;
    .locals 1

    .line 9
    invoke-virtual {p0}, Lorg/briarproject/briar/android/forum/ForumModule_ProvideForumControllerFactory;->get()Lorg/briarproject/briar/android/forum/ForumController;

    move-result-object v0

    return-object v0
.end method

.method public get()Lorg/briarproject/briar/android/forum/ForumController;
    .locals 3

    .line 31
    iget-object v0, p0, Lorg/briarproject/briar/android/forum/ForumModule_ProvideForumControllerFactory;->module:Lorg/briarproject/briar/android/forum/ForumModule;

    iget-object v1, p0, Lorg/briarproject/briar/android/forum/ForumModule_ProvideForumControllerFactory;->activityProvider:Ljavax/inject/Provider;

    iget-object v2, p0, Lorg/briarproject/briar/android/forum/ForumModule_ProvideForumControllerFactory;->forumControllerProvider:Ljavax/inject/Provider;

    invoke-static {v0, v1, v2}, Lorg/briarproject/briar/android/forum/ForumModule_ProvideForumControllerFactory;->provideInstance(Lorg/briarproject/briar/android/forum/ForumModule;Ljavax/inject/Provider;Ljavax/inject/Provider;)Lorg/briarproject/briar/android/forum/ForumController;

    move-result-object v0

    return-object v0
.end method
