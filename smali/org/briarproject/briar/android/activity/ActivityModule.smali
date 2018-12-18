.class public Lorg/briarproject/briar/android/activity/ActivityModule;
.super Ljava/lang/Object;
.source "ActivityModule.java"


# annotations
.annotation runtime Ldagger/Module;
.end annotation


# instance fields
.field private final activity:Lorg/briarproject/briar/android/activity/BaseActivity;


# direct methods
.method public constructor <init>(Lorg/briarproject/briar/android/activity/BaseActivity;)V
    .locals 0

    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 27
    iput-object p1, p0, Lorg/briarproject/briar/android/activity/ActivityModule;->activity:Lorg/briarproject/briar/android/activity/BaseActivity;

    return-void
.end method


# virtual methods
.method provideActivity()Landroid/app/Activity;
    .locals 1
    .annotation runtime Ldagger/Provides;
    .end annotation

    .annotation runtime Lorg/briarproject/briar/android/activity/ActivityScope;
    .end annotation

    .line 39
    iget-object v0, p0, Lorg/briarproject/briar/android/activity/ActivityModule;->activity:Lorg/briarproject/briar/android/activity/BaseActivity;

    return-object v0
.end method

.method provideBaseActivity()Lorg/briarproject/briar/android/activity/BaseActivity;
    .locals 1
    .annotation runtime Ldagger/Provides;
    .end annotation

    .annotation runtime Lorg/briarproject/briar/android/activity/ActivityScope;
    .end annotation

    .line 33
    iget-object v0, p0, Lorg/briarproject/briar/android/activity/ActivityModule;->activity:Lorg/briarproject/briar/android/activity/BaseActivity;

    return-object v0
.end method

.method protected provideBriarController(Lorg/briarproject/briar/android/controller/BriarControllerImpl;)Lorg/briarproject/briar/android/controller/BriarController;
    .locals 1
    .annotation runtime Ldagger/Provides;
    .end annotation

    .annotation runtime Lorg/briarproject/briar/android/activity/ActivityScope;
    .end annotation

    .line 60
    iget-object v0, p0, Lorg/briarproject/briar/android/activity/ActivityModule;->activity:Lorg/briarproject/briar/android/activity/BaseActivity;

    invoke-virtual {v0, p1}, Lorg/briarproject/briar/android/activity/BaseActivity;->addLifecycleController(Lorg/briarproject/briar/android/controller/ActivityLifecycleController;)V

    return-object p1
.end method

.method provideBriarServiceConnection()Lorg/briarproject/briar/android/BriarService$BriarServiceConnection;
    .locals 1
    .annotation runtime Ldagger/Provides;
    .end annotation

    .annotation runtime Lorg/briarproject/briar/android/activity/ActivityScope;
    .end annotation

    .line 81
    new-instance v0, Lorg/briarproject/briar/android/BriarService$BriarServiceConnection;

    invoke-direct {v0}, Lorg/briarproject/briar/android/BriarService$BriarServiceConnection;-><init>()V

    return-object v0
.end method

.method provideDBController(Lorg/briarproject/briar/android/controller/DbControllerImpl;)Lorg/briarproject/briar/android/controller/DbController;
    .locals 0
    .annotation runtime Ldagger/Provides;
    .end annotation

    .annotation runtime Lorg/briarproject/briar/android/activity/ActivityScope;
    .end annotation

    return-object p1
.end method

.method provideNavDrawerController(Lorg/briarproject/briar/android/navdrawer/NavDrawerControllerImpl;)Lorg/briarproject/briar/android/navdrawer/NavDrawerController;
    .locals 1
    .annotation runtime Ldagger/Provides;
    .end annotation

    .annotation runtime Lorg/briarproject/briar/android/activity/ActivityScope;
    .end annotation

    .line 74
    iget-object v0, p0, Lorg/briarproject/briar/android/activity/ActivityModule;->activity:Lorg/briarproject/briar/android/activity/BaseActivity;

    invoke-virtual {v0, p1}, Lorg/briarproject/briar/android/activity/BaseActivity;->addLifecycleController(Lorg/briarproject/briar/android/controller/ActivityLifecycleController;)V

    return-object p1
.end method

.method providePasswordController(Lorg/briarproject/briar/android/login/PasswordControllerImpl;)Lorg/briarproject/briar/android/login/PasswordController;
    .locals 0
    .annotation runtime Ldagger/Provides;
    .end annotation

    .annotation runtime Lorg/briarproject/briar/android/activity/ActivityScope;
    .end annotation

    return-object p1
.end method

.method provideSetupController(Lorg/briarproject/briar/android/login/SetupControllerImpl;)Lorg/briarproject/briar/android/login/SetupController;
    .locals 0
    .annotation runtime Ldagger/Provides;
    .end annotation

    .annotation runtime Lorg/briarproject/briar/android/activity/ActivityScope;
    .end annotation

    return-object p1
.end method
