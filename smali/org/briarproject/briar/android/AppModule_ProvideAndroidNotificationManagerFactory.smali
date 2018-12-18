.class public final Lorg/briarproject/briar/android/AppModule_ProvideAndroidNotificationManagerFactory;
.super Ljava/lang/Object;
.source "AppModule_ProvideAndroidNotificationManagerFactory.java"

# interfaces
.implements Ldagger/internal/Factory;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ldagger/internal/Factory<",
        "Lorg/briarproject/briar/api/android/AndroidNotificationManager;",
        ">;"
    }
.end annotation


# instance fields
.field private final eventBusProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lorg/briarproject/bramble/api/event/EventBus;",
            ">;"
        }
    .end annotation
.end field

.field private final lifecycleManagerProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lorg/briarproject/bramble/api/lifecycle/LifecycleManager;",
            ">;"
        }
    .end annotation
.end field

.field private final module:Lorg/briarproject/briar/android/AppModule;

.field private final notificationManagerProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lorg/briarproject/briar/android/AndroidNotificationManagerImpl;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lorg/briarproject/briar/android/AppModule;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/briarproject/briar/android/AppModule;",
            "Ljavax/inject/Provider<",
            "Lorg/briarproject/bramble/api/lifecycle/LifecycleManager;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lorg/briarproject/bramble/api/event/EventBus;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lorg/briarproject/briar/android/AndroidNotificationManagerImpl;",
            ">;)V"
        }
    .end annotation

    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 30
    iput-object p1, p0, Lorg/briarproject/briar/android/AppModule_ProvideAndroidNotificationManagerFactory;->module:Lorg/briarproject/briar/android/AppModule;

    .line 31
    iput-object p2, p0, Lorg/briarproject/briar/android/AppModule_ProvideAndroidNotificationManagerFactory;->lifecycleManagerProvider:Ljavax/inject/Provider;

    .line 32
    iput-object p3, p0, Lorg/briarproject/briar/android/AppModule_ProvideAndroidNotificationManagerFactory;->eventBusProvider:Ljavax/inject/Provider;

    .line 33
    iput-object p4, p0, Lorg/briarproject/briar/android/AppModule_ProvideAndroidNotificationManagerFactory;->notificationManagerProvider:Ljavax/inject/Provider;

    return-void
.end method

.method public static create(Lorg/briarproject/briar/android/AppModule;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)Lorg/briarproject/briar/android/AppModule_ProvideAndroidNotificationManagerFactory;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/briarproject/briar/android/AppModule;",
            "Ljavax/inject/Provider<",
            "Lorg/briarproject/bramble/api/lifecycle/LifecycleManager;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lorg/briarproject/bramble/api/event/EventBus;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lorg/briarproject/briar/android/AndroidNotificationManagerImpl;",
            ">;)",
            "Lorg/briarproject/briar/android/AppModule_ProvideAndroidNotificationManagerFactory;"
        }
    .end annotation

    .line 59
    new-instance v0, Lorg/briarproject/briar/android/AppModule_ProvideAndroidNotificationManagerFactory;

    invoke-direct {v0, p0, p1, p2, p3}, Lorg/briarproject/briar/android/AppModule_ProvideAndroidNotificationManagerFactory;-><init>(Lorg/briarproject/briar/android/AppModule;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)V

    return-object v0
.end method

.method public static provideInstance(Lorg/briarproject/briar/android/AppModule;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)Lorg/briarproject/briar/api/android/AndroidNotificationManager;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/briarproject/briar/android/AppModule;",
            "Ljavax/inject/Provider<",
            "Lorg/briarproject/bramble/api/lifecycle/LifecycleManager;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lorg/briarproject/bramble/api/event/EventBus;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lorg/briarproject/briar/android/AndroidNotificationManagerImpl;",
            ">;)",
            "Lorg/briarproject/briar/api/android/AndroidNotificationManager;"
        }
    .end annotation

    .line 49
    invoke-interface {p1}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/briarproject/bramble/api/lifecycle/LifecycleManager;

    .line 50
    invoke-interface {p2}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lorg/briarproject/bramble/api/event/EventBus;

    .line 51
    invoke-interface {p3}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object p3

    .line 47
    invoke-static {p0, p1, p2, p3}, Lorg/briarproject/briar/android/AppModule_ProvideAndroidNotificationManagerFactory;->proxyProvideAndroidNotificationManager(Lorg/briarproject/briar/android/AppModule;Lorg/briarproject/bramble/api/lifecycle/LifecycleManager;Lorg/briarproject/bramble/api/event/EventBus;Ljava/lang/Object;)Lorg/briarproject/briar/api/android/AndroidNotificationManager;

    move-result-object p0

    return-object p0
.end method

.method public static proxyProvideAndroidNotificationManager(Lorg/briarproject/briar/android/AppModule;Lorg/briarproject/bramble/api/lifecycle/LifecycleManager;Lorg/briarproject/bramble/api/event/EventBus;Ljava/lang/Object;)Lorg/briarproject/briar/api/android/AndroidNotificationManager;
    .locals 0

    .line 68
    check-cast p3, Lorg/briarproject/briar/android/AndroidNotificationManagerImpl;

    .line 69
    invoke-virtual {p0, p1, p2, p3}, Lorg/briarproject/briar/android/AppModule;->provideAndroidNotificationManager(Lorg/briarproject/bramble/api/lifecycle/LifecycleManager;Lorg/briarproject/bramble/api/event/EventBus;Lorg/briarproject/briar/android/AndroidNotificationManagerImpl;)Lorg/briarproject/briar/api/android/AndroidNotificationManager;

    move-result-object p0

    const-string p1, "Cannot return null from a non-@Nullable @Provides method"

    .line 68
    invoke-static {p0, p1}, Ldagger/internal/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lorg/briarproject/briar/api/android/AndroidNotificationManager;

    return-object p0
.end method


# virtual methods
.method public bridge synthetic get()Ljava/lang/Object;
    .locals 1

    .line 11
    invoke-virtual {p0}, Lorg/briarproject/briar/android/AppModule_ProvideAndroidNotificationManagerFactory;->get()Lorg/briarproject/briar/api/android/AndroidNotificationManager;

    move-result-object v0

    return-object v0
.end method

.method public get()Lorg/briarproject/briar/api/android/AndroidNotificationManager;
    .locals 4

    .line 38
    iget-object v0, p0, Lorg/briarproject/briar/android/AppModule_ProvideAndroidNotificationManagerFactory;->module:Lorg/briarproject/briar/android/AppModule;

    iget-object v1, p0, Lorg/briarproject/briar/android/AppModule_ProvideAndroidNotificationManagerFactory;->lifecycleManagerProvider:Ljavax/inject/Provider;

    iget-object v2, p0, Lorg/briarproject/briar/android/AppModule_ProvideAndroidNotificationManagerFactory;->eventBusProvider:Ljavax/inject/Provider;

    iget-object v3, p0, Lorg/briarproject/briar/android/AppModule_ProvideAndroidNotificationManagerFactory;->notificationManagerProvider:Ljavax/inject/Provider;

    invoke-static {v0, v1, v2, v3}, Lorg/briarproject/briar/android/AppModule_ProvideAndroidNotificationManagerFactory;->provideInstance(Lorg/briarproject/briar/android/AppModule;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)Lorg/briarproject/briar/api/android/AndroidNotificationManager;

    move-result-object v0

    return-object v0
.end method
