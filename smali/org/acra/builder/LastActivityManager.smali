.class public final Lorg/acra/builder/LastActivityManager;
.super Ljava/lang/Object;
.source "LastActivityManager.java"


# instance fields
.field private lastActivityCreated:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Landroid/app/Activity;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/app/Application;)V
    .locals 2

    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 24
    new-instance v0, Ljava/lang/ref/WeakReference;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lorg/acra/builder/LastActivityManager;->lastActivityCreated:Ljava/lang/ref/WeakReference;

    .line 28
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0xe

    if-lt v0, v1, :cond_0

    .line 31
    new-instance v0, Lorg/acra/builder/LastActivityManager$1;

    invoke-direct {v0, p0}, Lorg/acra/builder/LastActivityManager$1;-><init>(Lorg/acra/builder/LastActivityManager;)V

    invoke-virtual {p1, v0}, Landroid/app/Application;->registerActivityLifecycleCallbacks(Landroid/app/Application$ActivityLifecycleCallbacks;)V

    :cond_0
    return-void
.end method

.method static synthetic access$002(Lorg/acra/builder/LastActivityManager;Ljava/lang/ref/WeakReference;)Ljava/lang/ref/WeakReference;
    .locals 0

    .line 22
    iput-object p1, p0, Lorg/acra/builder/LastActivityManager;->lastActivityCreated:Ljava/lang/ref/WeakReference;

    return-object p1
.end method


# virtual methods
.method public clearLastActivity()V
    .locals 1

    .line 84
    iget-object v0, p0, Lorg/acra/builder/LastActivityManager;->lastActivityCreated:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->clear()V

    return-void
.end method

.method public getLastActivity()Landroid/app/Activity;
    .locals 1

    .line 80
    iget-object v0, p0, Lorg/acra/builder/LastActivityManager;->lastActivityCreated:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/Activity;

    return-object v0
.end method

.method public waitForActivityStop(I)V
    .locals 2

    .line 88
    monitor-enter p0

    int-to-long v0, p1

    .line 90
    :try_start_0
    invoke-virtual {p0, v0, v1}, Ljava/lang/Object;->wait(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_1

    .line 93
    :catch_0
    :goto_0
    :try_start_1
    monitor-exit p0

    return-void

    :goto_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method
