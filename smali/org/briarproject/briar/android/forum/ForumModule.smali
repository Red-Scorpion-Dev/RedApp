.class public Lorg/briarproject/briar/android/forum/ForumModule;
.super Ljava/lang/Object;
.source "ForumModule.java"


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
.method provideForumController(Lorg/briarproject/briar/android/activity/BaseActivity;Lorg/briarproject/briar/android/forum/ForumControllerImpl;)Lorg/briarproject/briar/android/forum/ForumController;
    .locals 0
    .annotation runtime Ldagger/Provides;
    .end annotation

    .annotation runtime Lorg/briarproject/briar/android/activity/ActivityScope;
    .end annotation

    .line 16
    invoke-virtual {p1, p2}, Lorg/briarproject/briar/android/activity/BaseActivity;->addLifecycleController(Lorg/briarproject/briar/android/controller/ActivityLifecycleController;)V

    return-object p2
.end method
