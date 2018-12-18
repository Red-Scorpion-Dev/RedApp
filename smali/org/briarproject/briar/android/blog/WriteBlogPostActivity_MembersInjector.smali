.class public final Lorg/briarproject/briar/android/blog/WriteBlogPostActivity_MembersInjector;
.super Ljava/lang/Object;
.source "WriteBlogPostActivity_MembersInjector.java"

# interfaces
.implements Ldagger/MembersInjector;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ldagger/MembersInjector<",
        "Lorg/briarproject/briar/android/blog/WriteBlogPostActivity;",
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

.field private final blogPostFactoryProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lorg/briarproject/briar/api/blog/BlogPostFactory;",
            ">;"
        }
    .end annotation
.end field

.field private final briarControllerProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lorg/briarproject/briar/android/controller/BriarController;",
            ">;"
        }
    .end annotation
.end field

.field private final dbControllerProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lorg/briarproject/briar/android/controller/DbController;",
            ">;"
        }
    .end annotation
.end field

.field private final identityManagerProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lorg/briarproject/bramble/api/identity/IdentityManager;",
            ">;"
        }
    .end annotation
.end field

.field private final lockManagerProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lorg/briarproject/briar/api/android/LockManager;",
            ">;"
        }
    .end annotation
.end field

.field private final notificationManagerProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lorg/briarproject/briar/api/android/AndroidNotificationManager;",
            ">;"
        }
    .end annotation
.end field

.field private final screenFilterMonitorProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lorg/briarproject/briar/api/android/ScreenFilterMonitor;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavax/inject/Provider<",
            "Lorg/briarproject/briar/api/android/ScreenFilterMonitor;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lorg/briarproject/briar/android/controller/BriarController;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lorg/briarproject/briar/android/controller/DbController;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lorg/briarproject/briar/api/android/LockManager;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lorg/briarproject/briar/api/android/AndroidNotificationManager;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lorg/briarproject/bramble/api/identity/IdentityManager;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lorg/briarproject/briar/api/blog/BlogPostFactory;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lorg/briarproject/briar/api/blog/BlogManager;",
            ">;)V"
        }
    .end annotation

    .line 47
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 48
    iput-object p1, p0, Lorg/briarproject/briar/android/blog/WriteBlogPostActivity_MembersInjector;->screenFilterMonitorProvider:Ljavax/inject/Provider;

    .line 49
    iput-object p2, p0, Lorg/briarproject/briar/android/blog/WriteBlogPostActivity_MembersInjector;->briarControllerProvider:Ljavax/inject/Provider;

    .line 50
    iput-object p3, p0, Lorg/briarproject/briar/android/blog/WriteBlogPostActivity_MembersInjector;->dbControllerProvider:Ljavax/inject/Provider;

    .line 51
    iput-object p4, p0, Lorg/briarproject/briar/android/blog/WriteBlogPostActivity_MembersInjector;->lockManagerProvider:Ljavax/inject/Provider;

    .line 52
    iput-object p5, p0, Lorg/briarproject/briar/android/blog/WriteBlogPostActivity_MembersInjector;->notificationManagerProvider:Ljavax/inject/Provider;

    .line 53
    iput-object p6, p0, Lorg/briarproject/briar/android/blog/WriteBlogPostActivity_MembersInjector;->identityManagerProvider:Ljavax/inject/Provider;

    .line 54
    iput-object p7, p0, Lorg/briarproject/briar/android/blog/WriteBlogPostActivity_MembersInjector;->blogPostFactoryProvider:Ljavax/inject/Provider;

    .line 55
    iput-object p8, p0, Lorg/briarproject/briar/android/blog/WriteBlogPostActivity_MembersInjector;->blogManagerProvider:Ljavax/inject/Provider;

    return-void
.end method

.method public static create(Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)Ldagger/MembersInjector;
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavax/inject/Provider<",
            "Lorg/briarproject/briar/api/android/ScreenFilterMonitor;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lorg/briarproject/briar/android/controller/BriarController;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lorg/briarproject/briar/android/controller/DbController;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lorg/briarproject/briar/api/android/LockManager;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lorg/briarproject/briar/api/android/AndroidNotificationManager;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lorg/briarproject/bramble/api/identity/IdentityManager;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lorg/briarproject/briar/api/blog/BlogPostFactory;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lorg/briarproject/briar/api/blog/BlogManager;",
            ">;)",
            "Ldagger/MembersInjector<",
            "Lorg/briarproject/briar/android/blog/WriteBlogPostActivity;",
            ">;"
        }
    .end annotation

    .line 67
    new-instance v9, Lorg/briarproject/briar/android/blog/WriteBlogPostActivity_MembersInjector;

    move-object v0, v9

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    move-object v6, p5

    move-object/from16 v7, p6

    move-object/from16 v8, p7

    invoke-direct/range {v0 .. v8}, Lorg/briarproject/briar/android/blog/WriteBlogPostActivity_MembersInjector;-><init>(Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)V

    return-object v9
.end method

.method public static injectBlogManager(Lorg/briarproject/briar/android/blog/WriteBlogPostActivity;Lorg/briarproject/briar/api/blog/BlogManager;)V
    .locals 0

    .line 107
    iput-object p1, p0, Lorg/briarproject/briar/android/blog/WriteBlogPostActivity;->blogManager:Lorg/briarproject/briar/api/blog/BlogManager;

    return-void
.end method

.method public static injectBlogPostFactory(Lorg/briarproject/briar/android/blog/WriteBlogPostActivity;Lorg/briarproject/briar/api/blog/BlogPostFactory;)V
    .locals 0

    .line 103
    iput-object p1, p0, Lorg/briarproject/briar/android/blog/WriteBlogPostActivity;->blogPostFactory:Lorg/briarproject/briar/api/blog/BlogPostFactory;

    return-void
.end method

.method public static injectIdentityManager(Lorg/briarproject/briar/android/blog/WriteBlogPostActivity;Lorg/briarproject/bramble/api/identity/IdentityManager;)V
    .locals 0

    .line 98
    iput-object p1, p0, Lorg/briarproject/briar/android/blog/WriteBlogPostActivity;->identityManager:Lorg/briarproject/bramble/api/identity/IdentityManager;

    return-void
.end method

.method public static injectNotificationManager(Lorg/briarproject/briar/android/blog/WriteBlogPostActivity;Lorg/briarproject/briar/api/android/AndroidNotificationManager;)V
    .locals 0

    .line 93
    iput-object p1, p0, Lorg/briarproject/briar/android/blog/WriteBlogPostActivity;->notificationManager:Lorg/briarproject/briar/api/android/AndroidNotificationManager;

    return-void
.end method


# virtual methods
.method public bridge synthetic injectMembers(Ljava/lang/Object;)V
    .locals 0

    .line 17
    check-cast p1, Lorg/briarproject/briar/android/blog/WriteBlogPostActivity;

    invoke-virtual {p0, p1}, Lorg/briarproject/briar/android/blog/WriteBlogPostActivity_MembersInjector;->injectMembers(Lorg/briarproject/briar/android/blog/WriteBlogPostActivity;)V

    return-void
.end method

.method public injectMembers(Lorg/briarproject/briar/android/blog/WriteBlogPostActivity;)V
    .locals 1

    .line 80
    iget-object v0, p0, Lorg/briarproject/briar/android/blog/WriteBlogPostActivity_MembersInjector;->screenFilterMonitorProvider:Ljavax/inject/Provider;

    .line 81
    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/briarproject/briar/api/android/ScreenFilterMonitor;

    .line 80
    invoke-static {p1, v0}, Lorg/briarproject/briar/android/activity/BaseActivity_MembersInjector;->injectScreenFilterMonitor(Lorg/briarproject/briar/android/activity/BaseActivity;Lorg/briarproject/briar/api/android/ScreenFilterMonitor;)V

    .line 82
    iget-object v0, p0, Lorg/briarproject/briar/android/blog/WriteBlogPostActivity_MembersInjector;->briarControllerProvider:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/briarproject/briar/android/controller/BriarController;

    invoke-static {p1, v0}, Lorg/briarproject/briar/android/activity/BriarActivity_MembersInjector;->injectBriarController(Lorg/briarproject/briar/android/activity/BriarActivity;Lorg/briarproject/briar/android/controller/BriarController;)V

    .line 83
    iget-object v0, p0, Lorg/briarproject/briar/android/blog/WriteBlogPostActivity_MembersInjector;->dbControllerProvider:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/briarproject/briar/android/controller/DbController;

    invoke-static {p1, v0}, Lorg/briarproject/briar/android/activity/BriarActivity_MembersInjector;->injectDbController(Lorg/briarproject/briar/android/activity/BriarActivity;Lorg/briarproject/briar/android/controller/DbController;)V

    .line 84
    iget-object v0, p0, Lorg/briarproject/briar/android/blog/WriteBlogPostActivity_MembersInjector;->lockManagerProvider:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/briarproject/briar/api/android/LockManager;

    invoke-static {p1, v0}, Lorg/briarproject/briar/android/activity/BriarActivity_MembersInjector;->injectLockManager(Lorg/briarproject/briar/android/activity/BriarActivity;Lorg/briarproject/briar/api/android/LockManager;)V

    .line 85
    iget-object v0, p0, Lorg/briarproject/briar/android/blog/WriteBlogPostActivity_MembersInjector;->notificationManagerProvider:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/briarproject/briar/api/android/AndroidNotificationManager;

    invoke-static {p1, v0}, Lorg/briarproject/briar/android/blog/WriteBlogPostActivity_MembersInjector;->injectNotificationManager(Lorg/briarproject/briar/android/blog/WriteBlogPostActivity;Lorg/briarproject/briar/api/android/AndroidNotificationManager;)V

    .line 86
    iget-object v0, p0, Lorg/briarproject/briar/android/blog/WriteBlogPostActivity_MembersInjector;->identityManagerProvider:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/briarproject/bramble/api/identity/IdentityManager;

    invoke-static {p1, v0}, Lorg/briarproject/briar/android/blog/WriteBlogPostActivity_MembersInjector;->injectIdentityManager(Lorg/briarproject/briar/android/blog/WriteBlogPostActivity;Lorg/briarproject/bramble/api/identity/IdentityManager;)V

    .line 87
    iget-object v0, p0, Lorg/briarproject/briar/android/blog/WriteBlogPostActivity_MembersInjector;->blogPostFactoryProvider:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/briarproject/briar/api/blog/BlogPostFactory;

    invoke-static {p1, v0}, Lorg/briarproject/briar/android/blog/WriteBlogPostActivity_MembersInjector;->injectBlogPostFactory(Lorg/briarproject/briar/android/blog/WriteBlogPostActivity;Lorg/briarproject/briar/api/blog/BlogPostFactory;)V

    .line 88
    iget-object v0, p0, Lorg/briarproject/briar/android/blog/WriteBlogPostActivity_MembersInjector;->blogManagerProvider:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/briarproject/briar/api/blog/BlogManager;

    invoke-static {p1, v0}, Lorg/briarproject/briar/android/blog/WriteBlogPostActivity_MembersInjector;->injectBlogManager(Lorg/briarproject/briar/android/blog/WriteBlogPostActivity;Lorg/briarproject/briar/api/blog/BlogManager;)V

    return-void
.end method
