.class public final Lorg/briarproject/briar/android/account/LockManagerImpl_Factory;
.super Ljava/lang/Object;
.source "LockManagerImpl_Factory.java"

# interfaces
.implements Ldagger/internal/Factory;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ldagger/internal/Factory<",
        "Lorg/briarproject/briar/android/account/LockManagerImpl;",
        ">;"
    }
.end annotation


# instance fields
.field private final appProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Landroid/app/Application;",
            ">;"
        }
    .end annotation
.end field

.field private final dbExecutorProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Ljava/util/concurrent/Executor;",
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

.field private final settingsManagerProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lorg/briarproject/bramble/api/settings/SettingsManager;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavax/inject/Provider<",
            "Landroid/app/Application;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lorg/briarproject/bramble/api/settings/SettingsManager;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lorg/briarproject/briar/api/android/AndroidNotificationManager;",
            ">;",
            "Ljavax/inject/Provider<",
            "Ljava/util/concurrent/Executor;",
            ">;)V"
        }
    .end annotation

    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 29
    iput-object p1, p0, Lorg/briarproject/briar/android/account/LockManagerImpl_Factory;->appProvider:Ljavax/inject/Provider;

    .line 30
    iput-object p2, p0, Lorg/briarproject/briar/android/account/LockManagerImpl_Factory;->settingsManagerProvider:Ljavax/inject/Provider;

    .line 31
    iput-object p3, p0, Lorg/briarproject/briar/android/account/LockManagerImpl_Factory;->notificationManagerProvider:Ljavax/inject/Provider;

    .line 32
    iput-object p4, p0, Lorg/briarproject/briar/android/account/LockManagerImpl_Factory;->dbExecutorProvider:Ljavax/inject/Provider;

    return-void
.end method

.method public static create(Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)Lorg/briarproject/briar/android/account/LockManagerImpl_Factory;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavax/inject/Provider<",
            "Landroid/app/Application;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lorg/briarproject/bramble/api/settings/SettingsManager;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lorg/briarproject/briar/api/android/AndroidNotificationManager;",
            ">;",
            "Ljavax/inject/Provider<",
            "Ljava/util/concurrent/Executor;",
            ">;)",
            "Lorg/briarproject/briar/android/account/LockManagerImpl_Factory;"
        }
    .end annotation

    .line 58
    new-instance v0, Lorg/briarproject/briar/android/account/LockManagerImpl_Factory;

    invoke-direct {v0, p0, p1, p2, p3}, Lorg/briarproject/briar/android/account/LockManagerImpl_Factory;-><init>(Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)V

    return-object v0
.end method

.method public static newLockManagerImpl(Landroid/app/Application;Lorg/briarproject/bramble/api/settings/SettingsManager;Lorg/briarproject/briar/api/android/AndroidNotificationManager;Ljava/util/concurrent/Executor;)Lorg/briarproject/briar/android/account/LockManagerImpl;
    .locals 1

    .line 67
    new-instance v0, Lorg/briarproject/briar/android/account/LockManagerImpl;

    invoke-direct {v0, p0, p1, p2, p3}, Lorg/briarproject/briar/android/account/LockManagerImpl;-><init>(Landroid/app/Application;Lorg/briarproject/bramble/api/settings/SettingsManager;Lorg/briarproject/briar/api/android/AndroidNotificationManager;Ljava/util/concurrent/Executor;)V

    return-object v0
.end method

.method public static provideInstance(Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)Lorg/briarproject/briar/android/account/LockManagerImpl;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavax/inject/Provider<",
            "Landroid/app/Application;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lorg/briarproject/bramble/api/settings/SettingsManager;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lorg/briarproject/briar/api/android/AndroidNotificationManager;",
            ">;",
            "Ljavax/inject/Provider<",
            "Ljava/util/concurrent/Executor;",
            ">;)",
            "Lorg/briarproject/briar/android/account/LockManagerImpl;"
        }
    .end annotation

    .line 46
    new-instance v0, Lorg/briarproject/briar/android/account/LockManagerImpl;

    .line 47
    invoke-interface {p0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/app/Application;

    .line 48
    invoke-interface {p1}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/briarproject/bramble/api/settings/SettingsManager;

    .line 49
    invoke-interface {p2}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lorg/briarproject/briar/api/android/AndroidNotificationManager;

    .line 50
    invoke-interface {p3}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Ljava/util/concurrent/Executor;

    invoke-direct {v0, p0, p1, p2, p3}, Lorg/briarproject/briar/android/account/LockManagerImpl;-><init>(Landroid/app/Application;Lorg/briarproject/bramble/api/settings/SettingsManager;Lorg/briarproject/briar/api/android/AndroidNotificationManager;Ljava/util/concurrent/Executor;)V

    return-object v0
.end method


# virtual methods
.method public bridge synthetic get()Ljava/lang/Object;
    .locals 1

    .line 11
    invoke-virtual {p0}, Lorg/briarproject/briar/android/account/LockManagerImpl_Factory;->get()Lorg/briarproject/briar/android/account/LockManagerImpl;

    move-result-object v0

    return-object v0
.end method

.method public get()Lorg/briarproject/briar/android/account/LockManagerImpl;
    .locals 4

    .line 37
    iget-object v0, p0, Lorg/briarproject/briar/android/account/LockManagerImpl_Factory;->appProvider:Ljavax/inject/Provider;

    iget-object v1, p0, Lorg/briarproject/briar/android/account/LockManagerImpl_Factory;->settingsManagerProvider:Ljavax/inject/Provider;

    iget-object v2, p0, Lorg/briarproject/briar/android/account/LockManagerImpl_Factory;->notificationManagerProvider:Ljavax/inject/Provider;

    iget-object v3, p0, Lorg/briarproject/briar/android/account/LockManagerImpl_Factory;->dbExecutorProvider:Ljavax/inject/Provider;

    invoke-static {v0, v1, v2, v3}, Lorg/briarproject/briar/android/account/LockManagerImpl_Factory;->provideInstance(Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)Lorg/briarproject/briar/android/account/LockManagerImpl;

    move-result-object v0

    return-object v0
.end method
