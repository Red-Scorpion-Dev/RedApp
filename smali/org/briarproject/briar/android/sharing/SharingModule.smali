.class public Lorg/briarproject/briar/android/sharing/SharingModule;
.super Ljava/lang/Object;
.source "SharingModule.java"


# annotations
.annotation runtime Ldagger/Module;
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method provideInvitationBlogController(Lorg/briarproject/briar/android/activity/BaseActivity;Lorg/briarproject/briar/android/sharing/BlogInvitationControllerImpl;)Lorg/briarproject/briar/android/sharing/BlogInvitationController;
    .locals 0
    .annotation runtime Ldagger/Provides;
    .end annotation

    .annotation runtime Lorg/briarproject/briar/android/activity/ActivityScope;
    .end annotation

    .line 24
    invoke-virtual {p1, p2}, Lorg/briarproject/briar/android/activity/BaseActivity;->addLifecycleController(Lorg/briarproject/briar/android/controller/ActivityLifecycleController;)V

    return-object p2
.end method

.method provideInvitationForumController(Lorg/briarproject/briar/android/activity/BaseActivity;Lorg/briarproject/briar/android/sharing/ForumInvitationControllerImpl;)Lorg/briarproject/briar/android/sharing/ForumInvitationController;
    .locals 0
    .annotation runtime Ldagger/Provides;
    .end annotation

    .annotation runtime Lorg/briarproject/briar/android/activity/ActivityScope;
    .end annotation

    .line 33
    invoke-virtual {p1, p2}, Lorg/briarproject/briar/android/activity/BaseActivity;->addLifecycleController(Lorg/briarproject/briar/android/controller/ActivityLifecycleController;)V

    return-object p2
.end method

.method provideShareBlogController(Lorg/briarproject/briar/android/sharing/ShareBlogControllerImpl;)Lorg/briarproject/briar/android/sharing/ShareBlogController;
    .locals 0
    .annotation runtime Ldagger/Provides;
    .end annotation

    .annotation runtime Lorg/briarproject/briar/android/activity/ActivityScope;
    .end annotation

    return-object p1
.end method

.method provideShareForumController(Lorg/briarproject/briar/android/sharing/ShareForumControllerImpl;)Lorg/briarproject/briar/android/sharing/ShareForumController;
    .locals 0
    .annotation runtime Ldagger/Provides;
    .end annotation

    .annotation runtime Lorg/briarproject/briar/android/activity/ActivityScope;
    .end annotation

    return-object p1
.end method
