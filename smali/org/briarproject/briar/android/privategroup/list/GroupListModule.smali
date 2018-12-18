.class public Lorg/briarproject/briar/android/privategroup/list/GroupListModule;
.super Ljava/lang/Object;
.source "GroupListModule.java"


# annotations
.annotation runtime Ldagger/Module;
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method provideGroupListController(Lorg/briarproject/briar/android/privategroup/list/GroupListControllerImpl;)Lorg/briarproject/briar/android/privategroup/list/GroupListController;
    .locals 0
    .annotation runtime Ldagger/Provides;
    .end annotation

    .annotation runtime Lorg/briarproject/briar/android/activity/ActivityScope;
    .end annotation

    return-object p1
.end method
