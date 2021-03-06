.class public final Lorg/briarproject/briar/android/AndroidNotificationManagerImpl_Factory;
.super Ljava/lang/Object;
.source "AndroidNotificationManagerImpl_Factory.java"

# interfaces
.implements Ldagger/internal/Factory;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ldagger/internal/Factory<",
        "Lorg/briarproject/briar/android/AndroidNotificationManagerImpl;",
        ">;"
    }
.end annotation


# instance fields
.field private final androidExecutorProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lorg/briarproject/bramble/api/system/AndroidExecutor;",
            ">;"
        }
    .end annotation
.end field

.field private final appProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Landroid/app/Application;",
            ">;"
        }
    .end annotation
.end field

.field private final clockProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lorg/briarproject/bramble/api/system/Clock;",
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
            "Lorg/briarproject/bramble/api/settings/SettingsManager;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lorg/briarproject/bramble/api/system/AndroidExecutor;",
            ">;",
            "Ljavax/inject/Provider<",
            "Landroid/app/Application;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lorg/briarproject/bramble/api/system/Clock;",
            ">;)V"
        }
    .end annotation

    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 30
    iput-object p1, p0, Lorg/briarproject/briar/android/AndroidNotificationManagerImpl_Factory;->settingsManagerProvider:Ljavax/inject/Provider;

    .line 31
    iput-object p2, p0, Lorg/briarproject/briar/android/AndroidNotificationManagerImpl_Factory;->androidExecutorProvider:Ljavax/inject/Provider;

    .line 32
    iput-object p3, p0, Lorg/briarproject/briar/android/AndroidNotificationManagerImpl_Factory;->appProvider:Ljavax/inject/Provider;

    .line 33
    iput-object p4, p0, Lorg/briarproject/briar/android/AndroidNotificationManagerImpl_Factory;->clockProvider:Ljavax/inject/Provider;

    return-void
.end method

.method public static create(Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)Lorg/briarproject/briar/android/AndroidNotificationManagerImpl_Factory;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavax/inject/Provider<",
            "Lorg/briarproject/bramble/api/settings/SettingsManager;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lorg/briarproject/bramble/api/system/AndroidExecutor;",
            ">;",
            "Ljavax/inject/Provider<",
            "Landroid/app/Application;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lorg/briarproject/bramble/api/system/Clock;",
            ">;)",
            "Lorg/briarproject/briar/android/AndroidNotificationManagerImpl_Factory;"
        }
    .end annotation

    .line 59
    new-instance v0, Lorg/briarproject/briar/android/AndroidNotificationManagerImpl_Factory;

    invoke-direct {v0, p0, p1, p2, p3}, Lorg/briarproject/briar/android/AndroidNotificationManagerImpl_Factory;-><init>(Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)V

    return-object v0
.end method

.method public static newAndroidNotificationManagerImpl(Lorg/briarproject/bramble/api/settings/SettingsManager;Lorg/briarproject/bramble/api/system/AndroidExecutor;Landroid/app/Application;Lorg/briarproject/bramble/api/system/Clock;)Lorg/briarproject/briar/android/AndroidNotificationManagerImpl;
    .locals 1

    .line 68
    new-instance v0, Lorg/briarproject/briar/android/AndroidNotificationManagerImpl;

    invoke-direct {v0, p0, p1, p2, p3}, Lorg/briarproject/briar/android/AndroidNotificationManagerImpl;-><init>(Lorg/briarproject/bramble/api/settings/SettingsManager;Lorg/briarproject/bramble/api/system/AndroidExecutor;Landroid/app/Application;Lorg/briarproject/bramble/api/system/Clock;)V

    return-object v0
.end method

.method public static provideInstance(Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)Lorg/briarproject/briar/android/AndroidNotificationManagerImpl;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavax/inject/Provider<",
            "Lorg/briarproject/bramble/api/settings/SettingsManager;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lorg/briarproject/bramble/api/system/AndroidExecutor;",
            ">;",
            "Ljavax/inject/Provider<",
            "Landroid/app/Application;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lorg/briarproject/bramble/api/system/Clock;",
            ">;)",
            "Lorg/briarproject/briar/android/AndroidNotificationManagerImpl;"
        }
    .end annotation

    .line 47
    new-instance v0, Lorg/briarproject/briar/android/AndroidNotificationManagerImpl;

    .line 48
    invoke-interface {p0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lorg/briarproject/bramble/api/settings/SettingsManager;

    .line 49
    invoke-interface {p1}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/briarproject/bramble/api/system/AndroidExecutor;

    .line 50
    invoke-interface {p2}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/app/Application;

    .line 51
    invoke-interface {p3}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lorg/briarproject/bramble/api/system/Clock;

    invoke-direct {v0, p0, p1, p2, p3}, Lorg/briarproject/briar/android/AndroidNotificationManagerImpl;-><init>(Lorg/briarproject/bramble/api/settings/SettingsManager;Lorg/briarproject/bramble/api/system/AndroidExecutor;Landroid/app/Application;Lorg/briarproject/bramble/api/system/Clock;)V

    return-object v0
.end method


# virtual methods
.method public bridge synthetic get()Ljava/lang/Object;
    .locals 1

    .line 11
    invoke-virtual {p0}, Lorg/briarproject/briar/android/AndroidNotificationManagerImpl_Factory;->get()Lorg/briarproject/briar/android/AndroidNotificationManagerImpl;

    move-result-object v0

    return-object v0
.end method

.method public get()Lorg/briarproject/briar/android/AndroidNotificationManagerImpl;
    .locals 4

    .line 38
    iget-object v0, p0, Lorg/briarproject/briar/android/AndroidNotificationManagerImpl_Factory;->settingsManagerProvider:Ljavax/inject/Provider;

    iget-object v1, p0, Lorg/briarproject/briar/android/AndroidNotificationManagerImpl_Factory;->androidExecutorProvider:Ljavax/inject/Provider;

    iget-object v2, p0, Lorg/briarproject/briar/android/AndroidNotificationManagerImpl_Factory;->appProvider:Ljavax/inject/Provider;

    iget-object v3, p0, Lorg/briarproject/briar/android/AndroidNotificationManagerImpl_Factory;->clockProvider:Ljavax/inject/Provider;

    invoke-static {v0, v1, v2, v3}, Lorg/briarproject/briar/android/AndroidNotificationManagerImpl_Factory;->provideInstance(Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)Lorg/briarproject/briar/android/AndroidNotificationManagerImpl;

    move-result-object v0

    return-object v0
.end method
