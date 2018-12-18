.class public Lorg/briarproject/briar/android/blog/BlogModule;
.super Ljava/lang/Object;
.source "BlogModule.java"


# annotations
.annotation runtime Ldagger/Module;
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method provideBlogController(Lorg/briarproject/briar/android/activity/BaseActivity;Lorg/briarproject/briar/android/blog/BlogControllerImpl;)Lorg/briarproject/briar/android/blog/BlogController;
    .locals 0
    .annotation runtime Ldagger/Provides;
    .end annotation

    .annotation runtime Lorg/briarproject/briar/android/activity/ActivityScope;
    .end annotation

    .line 18
    invoke-virtual {p1, p2}, Lorg/briarproject/briar/android/activity/BaseActivity;->addLifecycleController(Lorg/briarproject/briar/android/controller/ActivityLifecycleController;)V

    return-object p2
.end method

.method provideFeedController(Lorg/briarproject/briar/android/blog/FeedControllerImpl;)Lorg/briarproject/briar/android/blog/FeedController;
    .locals 0
    .annotation runtime Ldagger/Provides;
    .end annotation

    .annotation runtime Lorg/briarproject/briar/android/activity/ActivityScope;
    .end annotation

    return-object p1
.end method

.method provideSharingController(Lorg/briarproject/briar/android/controller/SharingControllerImpl;)Lorg/briarproject/briar/android/controller/SharingController;
    .locals 0
    .annotation runtime Ldagger/Provides;
    .end annotation

    .annotation runtime Lorg/briarproject/briar/android/activity/ActivityScope;
    .end annotation

    return-object p1
.end method
