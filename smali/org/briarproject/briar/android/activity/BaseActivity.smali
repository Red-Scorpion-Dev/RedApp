.class public abstract Lorg/briarproject/briar/android/activity/BaseActivity;
.super Landroid/support/v7/app/AppCompatActivity;
.source "BaseActivity.java"

# interfaces
.implements Lorg/briarproject/briar/android/DestroyableContext;
.implements Lorg/briarproject/briar/android/widget/TapSafeFrameLayout$OnTapFilteredListener;


# static fields
.field private static final LOG:Ljava/util/logging/Logger;


# instance fields
.field protected activityComponent:Lorg/briarproject/briar/android/activity/ActivityComponent;

.field private destroyed:Z

.field private final lifecycleControllers:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lorg/briarproject/briar/android/controller/ActivityLifecycleController;",
            ">;"
        }
    .end annotation
.end field

.field protected screenFilterMonitor:Lorg/briarproject/briar/api/android/ScreenFilterMonitor;

.field private searchedForToolbar:Z

.field private toolbar:Landroid/support/v7/widget/Toolbar;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 57
    const-class v0, Lorg/briarproject/briar/android/activity/BaseActivity;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/logging/Logger;->getLogger(Ljava/lang/String;)Ljava/util/logging/Logger;

    move-result-object v0

    sput-object v0, Lorg/briarproject/briar/android/activity/BaseActivity;->LOG:Ljava/util/logging/Logger;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .line 54
    invoke-direct {p0}, Landroid/support/v7/app/AppCompatActivity;-><init>()V

    .line 64
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/briarproject/briar/android/activity/BaseActivity;->lifecycleControllers:Ljava/util/List;

    const/4 v0, 0x0

    .line 66
    iput-boolean v0, p0, Lorg/briarproject/briar/android/activity/BaseActivity;->destroyed:Z

    const/4 v1, 0x0

    .line 68
    iput-object v1, p0, Lorg/briarproject/briar/android/activity/BaseActivity;->toolbar:Landroid/support/v7/widget/Toolbar;

    .line 70
    iput-boolean v0, p0, Lorg/briarproject/briar/android/activity/BaseActivity;->searchedForToolbar:Z

    return-void
.end method

.method private findDialogFragment()Lorg/briarproject/briar/android/fragment/ScreenFilterDialogFragment;
    .locals 2

    .line 139
    invoke-virtual {p0}, Lorg/briarproject/briar/android/activity/BaseActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v0

    sget-object v1, Lorg/briarproject/briar/android/fragment/ScreenFilterDialogFragment;->TAG:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/support/v4/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroid/support/v4/app/Fragment;

    move-result-object v0

    .line 141
    check-cast v0, Lorg/briarproject/briar/android/fragment/ScreenFilterDialogFragment;

    return-object v0
.end method

.method private findToolbar(Landroid/view/ViewGroup;)Landroid/support/v7/widget/Toolbar;
    .locals 5

    .line 263
    instance-of v0, p1, Lorg/briarproject/briar/android/widget/TapSafeFrameLayout;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return-object v1

    :cond_0
    const/4 v0, 0x0

    .line 264
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v2

    :goto_0
    if-ge v0, v2, :cond_3

    .line 265
    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    .line 266
    instance-of v4, v3, Landroid/support/v7/widget/Toolbar;

    if-eqz v4, :cond_1

    check-cast v3, Landroid/support/v7/widget/Toolbar;

    return-object v3

    .line 267
    :cond_1
    instance-of v4, v3, Landroid/view/ViewGroup;

    if-eqz v4, :cond_2

    .line 268
    check-cast v3, Landroid/view/ViewGroup;

    invoke-direct {p0, v3}, Lorg/briarproject/briar/android/activity/BaseActivity;->findToolbar(Landroid/view/ViewGroup;)Landroid/support/v7/widget/Toolbar;

    move-result-object v3

    if-eqz v3, :cond_2

    return-object v3

    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_3
    return-object v1
.end method

.method private findToolbar()V
    .locals 2

    .line 253
    iget-boolean v0, p0, Lorg/briarproject/briar/android/activity/BaseActivity;->searchedForToolbar:Z

    if-eqz v0, :cond_0

    return-void

    .line 254
    :cond_0
    invoke-virtual {p0}, Lorg/briarproject/briar/android/activity/BaseActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    .line 255
    instance-of v1, v0, Landroid/view/ViewGroup;

    if-eqz v1, :cond_1

    .line 256
    check-cast v0, Landroid/view/ViewGroup;

    invoke-direct {p0, v0}, Lorg/briarproject/briar/android/activity/BaseActivity;->findToolbar(Landroid/view/ViewGroup;)Landroid/support/v7/widget/Toolbar;

    move-result-object v0

    iput-object v0, p0, Lorg/briarproject/briar/android/activity/BaseActivity;->toolbar:Landroid/support/v7/widget/Toolbar;

    :cond_1
    const/4 v0, 0x1

    .line 257
    iput-boolean v0, p0, Lorg/briarproject/briar/android/activity/BaseActivity;->searchedForToolbar:Z

    return-void
.end method

.method public static synthetic lambda$runOnUiThreadUnlessDestroyed$0(Lorg/briarproject/briar/android/activity/BaseActivity;Ljava/lang/Runnable;)V
    .locals 1

    .line 206
    iget-boolean v0, p0, Lorg/briarproject/briar/android/activity/BaseActivity;->destroyed:Z

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lorg/briarproject/briar/android/activity/BaseActivity;->isFinishing()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-interface {p1}, Ljava/lang/Runnable;->run()V

    :cond_0
    return-void
.end method

.method public static synthetic lambda$vYL2tYXnISeSM4doMg8_xhWPmEs(Lorg/briarproject/briar/android/activity/BaseActivity;)V
    .locals 0

    invoke-direct {p0}, Lorg/briarproject/briar/android/activity/BaseActivity;->protectToolbar()V

    return-void
.end method

.method private makeTapSafeWrapper(Landroid/view/View;)Landroid/view/View;
    .locals 3

    .line 231
    new-instance v0, Lorg/briarproject/briar/android/widget/TapSafeFrameLayout;

    invoke-direct {v0, p0}, Lorg/briarproject/briar/android/widget/TapSafeFrameLayout;-><init>(Landroid/content/Context;)V

    .line 232
    new-instance v1, Landroid/view/ViewGroup$LayoutParams;

    const/4 v2, -0x1

    invoke-direct {v1, v2, v2}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v1}, Lorg/briarproject/briar/android/widget/TapSafeFrameLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 233
    invoke-virtual {v0, p0}, Lorg/briarproject/briar/android/widget/TapSafeFrameLayout;->setOnTapFilteredListener(Lorg/briarproject/briar/android/widget/TapSafeFrameLayout$OnTapFilteredListener;)V

    .line 234
    invoke-virtual {v0, p1}, Lorg/briarproject/briar/android/widget/TapSafeFrameLayout;->addView(Landroid/view/View;)V

    return-object v0
.end method

.method private protectToolbar()V
    .locals 2

    .line 245
    invoke-direct {p0}, Lorg/briarproject/briar/android/activity/BaseActivity;->findToolbar()V

    .line 246
    iget-object v0, p0, Lorg/briarproject/briar/android/activity/BaseActivity;->toolbar:Landroid/support/v7/widget/Toolbar;

    if-eqz v0, :cond_0

    .line 247
    iget-object v0, p0, Lorg/briarproject/briar/android/activity/BaseActivity;->screenFilterMonitor:Lorg/briarproject/briar/api/android/ScreenFilterMonitor;

    invoke-interface {v0}, Lorg/briarproject/briar/api/android/ScreenFilterMonitor;->getApps()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->isEmpty()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    .line 248
    iget-object v1, p0, Lorg/briarproject/briar/android/activity/BaseActivity;->toolbar:Landroid/support/v7/widget/Toolbar;

    invoke-static {v1, v0}, Lorg/briarproject/briar/android/util/UiUtils;->setFilterTouchesWhenObscured(Landroid/view/View;Z)V

    :cond_0
    return-void
.end method

.method private showScreenFilterWarning()Z
    .locals 4

    .line 173
    invoke-direct {p0}, Lorg/briarproject/briar/android/activity/BaseActivity;->findDialogFragment()Lorg/briarproject/briar/android/fragment/ScreenFilterDialogFragment;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 174
    invoke-virtual {v0}, Lorg/briarproject/briar/android/fragment/ScreenFilterDialogFragment;->isVisible()Z

    move-result v0

    if-eqz v0, :cond_0

    return v1

    .line 175
    :cond_0
    iget-object v0, p0, Lorg/briarproject/briar/android/activity/BaseActivity;->screenFilterMonitor:Lorg/briarproject/briar/api/android/ScreenFilterMonitor;

    invoke-interface {v0}, Lorg/briarproject/briar/api/android/ScreenFilterMonitor;->getApps()Ljava/util/Collection;

    move-result-object v0

    .line 177
    invoke-interface {v0}, Ljava/util/Collection;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_1

    const/4 v0, 0x1

    return v0

    .line 179
    :cond_1
    invoke-virtual {p0}, Lorg/briarproject/briar/android/activity/BaseActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v2

    .line 180
    invoke-virtual {v2}, Landroid/support/v4/app/FragmentManager;->isStateSaved()Z

    move-result v3

    if-nez v3, :cond_3

    .line 182
    invoke-static {v0}, Lorg/briarproject/briar/android/fragment/ScreenFilterDialogFragment;->newInstance(Ljava/util/Collection;)Lorg/briarproject/briar/android/fragment/ScreenFilterDialogFragment;

    move-result-object v0

    .line 184
    new-instance v3, Lorg/briarproject/briar/android/activity/-$$Lambda$BaseActivity$vYL2tYXnISeSM4doMg8_xhWPmEs;

    invoke-direct {v3, p0}, Lorg/briarproject/briar/android/activity/-$$Lambda$BaseActivity$vYL2tYXnISeSM4doMg8_xhWPmEs;-><init>(Lorg/briarproject/briar/android/activity/BaseActivity;)V

    invoke-virtual {v0, v3}, Lorg/briarproject/briar/android/fragment/ScreenFilterDialogFragment;->setDismissListener(Lorg/briarproject/briar/android/fragment/ScreenFilterDialogFragment$DismissListener;)V

    .line 186
    invoke-virtual {p0}, Lorg/briarproject/briar/android/activity/BaseActivity;->getCurrentFocus()Landroid/view/View;

    move-result-object v3

    if-eqz v3, :cond_2

    .line 187
    invoke-virtual {p0, v3}, Lorg/briarproject/briar/android/activity/BaseActivity;->hideSoftKeyboard(Landroid/view/View;)V

    .line 188
    :cond_2
    sget-object v3, Lorg/briarproject/briar/android/fragment/ScreenFilterDialogFragment;->TAG:Ljava/lang/String;

    invoke-virtual {v0, v2, v3}, Lorg/briarproject/briar/android/fragment/ScreenFilterDialogFragment;->show(Landroid/support/v4/app/FragmentManager;Ljava/lang/String;)V

    :cond_3
    return v1
.end method


# virtual methods
.method public addContentView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V
    .locals 0

    .line 292
    invoke-direct {p0, p1}, Lorg/briarproject/briar/android/activity/BaseActivity;->makeTapSafeWrapper(Landroid/view/View;)Landroid/view/View;

    move-result-object p1

    invoke-super {p0, p1, p2}, Landroid/support/v7/app/AppCompatActivity;->addContentView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method

.method public addLifecycleController(Lorg/briarproject/briar/android/controller/ActivityLifecycleController;)V
    .locals 1

    .line 75
    iget-object v0, p0, Lorg/briarproject/briar/android/activity/BaseActivity;->lifecycleControllers:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method protected attachBaseContext(Landroid/content/Context;)V
    .locals 1

    .line 108
    invoke-static {}, Lorg/briarproject/briar/android/Localizer;->getInstance()Lorg/briarproject/briar/android/Localizer;

    move-result-object v0

    invoke-virtual {v0, p1}, Lorg/briarproject/briar/android/Localizer;->setLocale(Landroid/content/Context;)Landroid/content/Context;

    move-result-object p1

    .line 107
    invoke-super {p0, p1}, Landroid/support/v7/app/AppCompatActivity;->attachBaseContext(Landroid/content/Context;)V

    return-void
.end method

.method public getActivityComponent()Lorg/briarproject/briar/android/activity/ActivityComponent;
    .locals 1

    .line 112
    iget-object v0, p0, Lorg/briarproject/briar/android/activity/BaseActivity;->activityComponent:Lorg/briarproject/briar/android/activity/ActivityComponent;

    return-object v0
.end method

.method protected getActivityModule()Lorg/briarproject/briar/android/activity/ActivityModule;
    .locals 1

    .line 117
    new-instance v0, Lorg/briarproject/briar/android/activity/ActivityModule;

    invoke-direct {v0, p0}, Lorg/briarproject/briar/android/activity/ActivityModule;-><init>(Lorg/briarproject/briar/android/activity/BaseActivity;)V

    return-object v0
.end method

.method protected getForumModule()Lorg/briarproject/briar/android/forum/ForumModule;
    .locals 1

    .line 121
    new-instance v0, Lorg/briarproject/briar/android/forum/ForumModule;

    invoke-direct {v0}, Lorg/briarproject/briar/android/forum/ForumModule;-><init>()V

    return-object v0
.end method

.method public handleDbException(Lorg/briarproject/bramble/api/db/DbException;)V
    .locals 0

    .line 223
    invoke-virtual {p0}, Lorg/briarproject/briar/android/activity/BaseActivity;->supportFinishAfterTransition()V

    return-void
.end method

.method public hideSoftKeyboard(Landroid/view/View;)V
    .locals 2

    .line 216
    invoke-virtual {p1}, Landroid/view/View;->getWindowToken()Landroid/os/IBinder;

    move-result-object p1

    const-string v0, "input_method"

    .line 217
    invoke-virtual {p0, v0}, Lorg/briarproject/briar/android/activity/BaseActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    .line 218
    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    return-void
.end method

.method public abstract injectActivity(Lorg/briarproject/briar/android/activity/ActivityComponent;)V
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 1

    .line 80
    invoke-super {p0, p1}, Landroid/support/v7/app/AppCompatActivity;->onCreate(Landroid/os/Bundle;)V

    .line 87
    invoke-virtual {p0}, Lorg/briarproject/briar/android/activity/BaseActivity;->getWindow()Landroid/view/Window;

    move-result-object p1

    const/16 v0, 0x2000

    invoke-virtual {p1, v0}, Landroid/view/Window;->addFlags(I)V

    .line 90
    invoke-virtual {p0}, Lorg/briarproject/briar/android/activity/BaseActivity;->getApplication()Landroid/app/Application;

    move-result-object p1

    check-cast p1, Lorg/briarproject/briar/android/BriarApplication;

    invoke-interface {p1}, Lorg/briarproject/briar/android/BriarApplication;->getApplicationComponent()Lorg/briarproject/briar/android/AndroidComponent;

    move-result-object p1

    .line 92
    invoke-static {}, Lorg/briarproject/briar/android/activity/DaggerActivityComponent;->builder()Lorg/briarproject/briar/android/activity/DaggerActivityComponent$Builder;

    move-result-object v0

    .line 93
    invoke-virtual {v0, p1}, Lorg/briarproject/briar/android/activity/DaggerActivityComponent$Builder;->androidComponent(Lorg/briarproject/briar/android/AndroidComponent;)Lorg/briarproject/briar/android/activity/DaggerActivityComponent$Builder;

    move-result-object p1

    .line 94
    invoke-virtual {p0}, Lorg/briarproject/briar/android/activity/BaseActivity;->getActivityModule()Lorg/briarproject/briar/android/activity/ActivityModule;

    move-result-object v0

    invoke-virtual {p1, v0}, Lorg/briarproject/briar/android/activity/DaggerActivityComponent$Builder;->activityModule(Lorg/briarproject/briar/android/activity/ActivityModule;)Lorg/briarproject/briar/android/activity/DaggerActivityComponent$Builder;

    move-result-object p1

    .line 95
    invoke-virtual {p0}, Lorg/briarproject/briar/android/activity/BaseActivity;->getForumModule()Lorg/briarproject/briar/android/forum/ForumModule;

    move-result-object v0

    invoke-virtual {p1, v0}, Lorg/briarproject/briar/android/activity/DaggerActivityComponent$Builder;->forumModule(Lorg/briarproject/briar/android/forum/ForumModule;)Lorg/briarproject/briar/android/activity/DaggerActivityComponent$Builder;

    move-result-object p1

    .line 96
    invoke-virtual {p1}, Lorg/briarproject/briar/android/activity/DaggerActivityComponent$Builder;->build()Lorg/briarproject/briar/android/activity/ActivityComponent;

    move-result-object p1

    iput-object p1, p0, Lorg/briarproject/briar/android/activity/BaseActivity;->activityComponent:Lorg/briarproject/briar/android/activity/ActivityComponent;

    .line 98
    iget-object p1, p0, Lorg/briarproject/briar/android/activity/BaseActivity;->activityComponent:Lorg/briarproject/briar/android/activity/ActivityComponent;

    invoke-virtual {p0, p1}, Lorg/briarproject/briar/android/activity/BaseActivity;->injectActivity(Lorg/briarproject/briar/android/activity/ActivityComponent;)V

    .line 100
    iget-object p1, p0, Lorg/briarproject/briar/android/activity/BaseActivity;->lifecycleControllers:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/briarproject/briar/android/controller/ActivityLifecycleController;

    .line 101
    invoke-interface {v0, p0}, Lorg/briarproject/briar/android/controller/ActivityLifecycleController;->onActivityCreate(Landroid/app/Activity;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method protected onDestroy()V
    .locals 2

    .line 196
    invoke-super {p0}, Landroid/support/v7/app/AppCompatActivity;->onDestroy()V

    const/4 v0, 0x1

    .line 197
    iput-boolean v0, p0, Lorg/briarproject/briar/android/activity/BaseActivity;->destroyed:Z

    .line 198
    iget-object v0, p0, Lorg/briarproject/briar/android/activity/BaseActivity;->lifecycleControllers:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/briarproject/briar/android/controller/ActivityLifecycleController;

    .line 199
    invoke-interface {v1}, Lorg/briarproject/briar/android/controller/ActivityLifecycleController;->onActivityDestroy()V

    goto :goto_0

    :cond_0
    return-void
.end method

.method protected onStart()V
    .locals 3

    .line 126
    invoke-super {p0}, Landroid/support/v7/app/AppCompatActivity;->onStart()V

    .line 127
    sget-object v0, Lorg/briarproject/briar/android/activity/BaseActivity;->LOG:Ljava/util/logging/Logger;

    sget-object v1, Ljava/util/logging/Level;->INFO:Ljava/util/logging/Level;

    invoke-virtual {v0, v1}, Ljava/util/logging/Logger;->isLoggable(Ljava/util/logging/Level;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 128
    sget-object v0, Lorg/briarproject/briar/android/activity/BaseActivity;->LOG:Ljava/util/logging/Logger;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Starting "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/logging/Logger;->info(Ljava/lang/String;)V

    .line 129
    :cond_0
    iget-object v0, p0, Lorg/briarproject/briar/android/activity/BaseActivity;->lifecycleControllers:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/briarproject/briar/android/controller/ActivityLifecycleController;

    .line 130
    invoke-interface {v1}, Lorg/briarproject/briar/android/controller/ActivityLifecycleController;->onActivityStart()V

    goto :goto_0

    .line 132
    :cond_1
    invoke-direct {p0}, Lorg/briarproject/briar/android/activity/BaseActivity;->protectToolbar()V

    .line 133
    invoke-direct {p0}, Lorg/briarproject/briar/android/activity/BaseActivity;->findDialogFragment()Lorg/briarproject/briar/android/fragment/ScreenFilterDialogFragment;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 134
    new-instance v1, Lorg/briarproject/briar/android/activity/-$$Lambda$BaseActivity$vYL2tYXnISeSM4doMg8_xhWPmEs;

    invoke-direct {v1, p0}, Lorg/briarproject/briar/android/activity/-$$Lambda$BaseActivity$vYL2tYXnISeSM4doMg8_xhWPmEs;-><init>(Lorg/briarproject/briar/android/activity/BaseActivity;)V

    invoke-virtual {v0, v1}, Lorg/briarproject/briar/android/fragment/ScreenFilterDialogFragment;->setDismissListener(Lorg/briarproject/briar/android/fragment/ScreenFilterDialogFragment$DismissListener;)V

    :cond_2
    return-void
.end method

.method protected onStop()V
    .locals 3

    .line 146
    invoke-super {p0}, Landroid/support/v7/app/AppCompatActivity;->onStop()V

    .line 147
    sget-object v0, Lorg/briarproject/briar/android/activity/BaseActivity;->LOG:Ljava/util/logging/Logger;

    sget-object v1, Ljava/util/logging/Level;->INFO:Ljava/util/logging/Level;

    invoke-virtual {v0, v1}, Ljava/util/logging/Logger;->isLoggable(Ljava/util/logging/Level;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 148
    sget-object v0, Lorg/briarproject/briar/android/activity/BaseActivity;->LOG:Ljava/util/logging/Logger;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Stopping "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/logging/Logger;->info(Ljava/lang/String;)V

    .line 149
    :cond_0
    iget-object v0, p0, Lorg/briarproject/briar/android/activity/BaseActivity;->lifecycleControllers:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/briarproject/briar/android/controller/ActivityLifecycleController;

    .line 150
    invoke-interface {v1}, Lorg/briarproject/briar/android/controller/ActivityLifecycleController;->onActivityStop()V

    goto :goto_0

    :cond_1
    return-void
.end method

.method public runOnUiThreadUnlessDestroyed(Ljava/lang/Runnable;)V
    .locals 1

    .line 205
    new-instance v0, Lorg/briarproject/briar/android/activity/-$$Lambda$BaseActivity$fOFM6FuIkzfuGdAaggyXMoMGR0E;

    invoke-direct {v0, p0, p1}, Lorg/briarproject/briar/android/activity/-$$Lambda$BaseActivity$fOFM6FuIkzfuGdAaggyXMoMGR0E;-><init>(Lorg/briarproject/briar/android/activity/BaseActivity;Ljava/lang/Runnable;)V

    invoke-virtual {p0, v0}, Lorg/briarproject/briar/android/activity/BaseActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method public setContentView(I)V
    .locals 2

    .line 277
    invoke-virtual {p0}, Lorg/briarproject/briar/android/activity/BaseActivity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p1

    invoke-virtual {p0, p1}, Lorg/briarproject/briar/android/activity/BaseActivity;->setContentView(Landroid/view/View;)V

    return-void
.end method

.method public setContentView(Landroid/view/View;)V
    .locals 0

    .line 282
    invoke-direct {p0, p1}, Lorg/briarproject/briar/android/activity/BaseActivity;->makeTapSafeWrapper(Landroid/view/View;)Landroid/view/View;

    move-result-object p1

    invoke-super {p0, p1}, Landroid/support/v7/app/AppCompatActivity;->setContentView(Landroid/view/View;)V

    return-void
.end method

.method public setContentView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V
    .locals 0

    .line 287
    invoke-direct {p0, p1}, Lorg/briarproject/briar/android/activity/BaseActivity;->makeTapSafeWrapper(Landroid/view/View;)Landroid/view/View;

    move-result-object p1

    invoke-super {p0, p1, p2}, Landroid/support/v7/app/AppCompatActivity;->setContentView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method

.method public shouldAllowTap()Z
    .locals 1

    .line 297
    invoke-direct {p0}, Lorg/briarproject/briar/android/activity/BaseActivity;->showScreenFilterWarning()Z

    move-result v0

    return v0
.end method

.method protected showInitialFragment(Lorg/briarproject/briar/android/fragment/BaseFragment;)V
    .locals 3

    .line 155
    invoke-virtual {p0}, Lorg/briarproject/briar/android/activity/BaseActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentManager;->beginTransaction()Landroid/support/v4/app/FragmentTransaction;

    move-result-object v0

    .line 156
    invoke-virtual {p1}, Lorg/briarproject/briar/android/fragment/BaseFragment;->getUniqueTag()Ljava/lang/String;

    move-result-object v1

    const v2, 0x7f0900c1

    invoke-virtual {v0, v2, p1, v1}, Landroid/support/v4/app/FragmentTransaction;->replace(ILandroid/support/v4/app/Fragment;Ljava/lang/String;)Landroid/support/v4/app/FragmentTransaction;

    move-result-object p1

    .line 157
    invoke-virtual {p1}, Landroid/support/v4/app/FragmentTransaction;->commit()I

    return-void
.end method

.method public showNextFragment(Lorg/briarproject/briar/android/fragment/BaseFragment;)V
    .locals 5

    .line 161
    invoke-virtual {p0}, Lorg/briarproject/briar/android/activity/BaseActivity;->getLifecycle()Landroid/arch/lifecycle/Lifecycle;

    move-result-object v0

    invoke-virtual {v0}, Landroid/arch/lifecycle/Lifecycle;->getCurrentState()Landroid/arch/lifecycle/Lifecycle$State;

    move-result-object v0

    sget-object v1, Landroid/arch/lifecycle/Lifecycle$State;->STARTED:Landroid/arch/lifecycle/Lifecycle$State;

    invoke-virtual {v0, v1}, Landroid/arch/lifecycle/Lifecycle$State;->isAtLeast(Landroid/arch/lifecycle/Lifecycle$State;)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 162
    :cond_0
    invoke-virtual {p0}, Lorg/briarproject/briar/android/activity/BaseActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentManager;->beginTransaction()Landroid/support/v4/app/FragmentTransaction;

    move-result-object v0

    const v1, 0x7f010016

    const v2, 0x7f010019

    const v3, 0x7f010018

    const v4, 0x7f010017

    .line 163
    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/support/v4/app/FragmentTransaction;->setCustomAnimations(IIII)Landroid/support/v4/app/FragmentTransaction;

    move-result-object v0

    const v1, 0x7f0900c1

    .line 166
    invoke-virtual {p1}, Lorg/briarproject/briar/android/fragment/BaseFragment;->getUniqueTag()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, p1, v2}, Landroid/support/v4/app/FragmentTransaction;->replace(ILandroid/support/v4/app/Fragment;Ljava/lang/String;)Landroid/support/v4/app/FragmentTransaction;

    move-result-object v0

    .line 167
    invoke-virtual {p1}, Lorg/briarproject/briar/android/fragment/BaseFragment;->getUniqueTag()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/support/v4/app/FragmentTransaction;->addToBackStack(Ljava/lang/String;)Landroid/support/v4/app/FragmentTransaction;

    move-result-object p1

    .line 168
    invoke-virtual {p1}, Landroid/support/v4/app/FragmentTransaction;->commit()I

    return-void
.end method

.method public showSoftKeyboard(Landroid/view/View;)V
    .locals 2

    const-string v0, "input_method"

    .line 211
    invoke-virtual {p0, v0}, Lorg/briarproject/briar/android/activity/BaseActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    .line 212
    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    const/4 v1, 0x1

    invoke-virtual {v0, p1, v1}, Landroid/view/inputmethod/InputMethodManager;->showSoftInput(Landroid/view/View;I)Z

    return-void
.end method
