.class public final Lorg/briarproject/briar/android/AppModule_ProvideScreenFilterMonitorFactory;
.super Ljava/lang/Object;
.source "AppModule_ProvideScreenFilterMonitorFactory.java"

# interfaces
.implements Ldagger/internal/Factory;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ldagger/internal/Factory<",
        "Lorg/briarproject/briar/api/android/ScreenFilterMonitor;",
        ">;"
    }
.end annotation


# instance fields
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

.field private final screenFilterMonitorProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lorg/briarproject/briar/android/ScreenFilterMonitorImpl;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lorg/briarproject/briar/android/AppModule;Ljavax/inject/Provider;Ljavax/inject/Provider;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/briarproject/briar/android/AppModule;",
            "Ljavax/inject/Provider<",
            "Lorg/briarproject/bramble/api/lifecycle/LifecycleManager;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lorg/briarproject/briar/android/ScreenFilterMonitorImpl;",
            ">;)V"
        }
    .end annotation

    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 26
    iput-object p1, p0, Lorg/briarproject/briar/android/AppModule_ProvideScreenFilterMonitorFactory;->module:Lorg/briarproject/briar/android/AppModule;

    .line 27
    iput-object p2, p0, Lorg/briarproject/briar/android/AppModule_ProvideScreenFilterMonitorFactory;->lifecycleManagerProvider:Ljavax/inject/Provider;

    .line 28
    iput-object p3, p0, Lorg/briarproject/briar/android/AppModule_ProvideScreenFilterMonitorFactory;->screenFilterMonitorProvider:Ljavax/inject/Provider;

    return-void
.end method

.method public static create(Lorg/briarproject/briar/android/AppModule;Ljavax/inject/Provider;Ljavax/inject/Provider;)Lorg/briarproject/briar/android/AppModule_ProvideScreenFilterMonitorFactory;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/briarproject/briar/android/AppModule;",
            "Ljavax/inject/Provider<",
            "Lorg/briarproject/bramble/api/lifecycle/LifecycleManager;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lorg/briarproject/briar/android/ScreenFilterMonitorImpl;",
            ">;)",
            "Lorg/briarproject/briar/android/AppModule_ProvideScreenFilterMonitorFactory;"
        }
    .end annotation

    .line 48
    new-instance v0, Lorg/briarproject/briar/android/AppModule_ProvideScreenFilterMonitorFactory;

    invoke-direct {v0, p0, p1, p2}, Lorg/briarproject/briar/android/AppModule_ProvideScreenFilterMonitorFactory;-><init>(Lorg/briarproject/briar/android/AppModule;Ljavax/inject/Provider;Ljavax/inject/Provider;)V

    return-object v0
.end method

.method public static provideInstance(Lorg/briarproject/briar/android/AppModule;Ljavax/inject/Provider;Ljavax/inject/Provider;)Lorg/briarproject/briar/api/android/ScreenFilterMonitor;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/briarproject/briar/android/AppModule;",
            "Ljavax/inject/Provider<",
            "Lorg/briarproject/bramble/api/lifecycle/LifecycleManager;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lorg/briarproject/briar/android/ScreenFilterMonitorImpl;",
            ">;)",
            "Lorg/briarproject/briar/api/android/ScreenFilterMonitor;"
        }
    .end annotation

    .line 41
    invoke-interface {p1}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/briarproject/bramble/api/lifecycle/LifecycleManager;

    invoke-interface {p2}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object p2

    .line 40
    invoke-static {p0, p1, p2}, Lorg/briarproject/briar/android/AppModule_ProvideScreenFilterMonitorFactory;->proxyProvideScreenFilterMonitor(Lorg/briarproject/briar/android/AppModule;Lorg/briarproject/bramble/api/lifecycle/LifecycleManager;Ljava/lang/Object;)Lorg/briarproject/briar/api/android/ScreenFilterMonitor;

    move-result-object p0

    return-object p0
.end method

.method public static proxyProvideScreenFilterMonitor(Lorg/briarproject/briar/android/AppModule;Lorg/briarproject/bramble/api/lifecycle/LifecycleManager;Ljava/lang/Object;)Lorg/briarproject/briar/api/android/ScreenFilterMonitor;
    .locals 0

    .line 54
    check-cast p2, Lorg/briarproject/briar/android/ScreenFilterMonitorImpl;

    .line 55
    invoke-virtual {p0, p1, p2}, Lorg/briarproject/briar/android/AppModule;->provideScreenFilterMonitor(Lorg/briarproject/bramble/api/lifecycle/LifecycleManager;Lorg/briarproject/briar/android/ScreenFilterMonitorImpl;)Lorg/briarproject/briar/api/android/ScreenFilterMonitor;

    move-result-object p0

    const-string p1, "Cannot return null from a non-@Nullable @Provides method"

    .line 54
    invoke-static {p0, p1}, Ldagger/internal/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lorg/briarproject/briar/api/android/ScreenFilterMonitor;

    return-object p0
.end method


# virtual methods
.method public bridge synthetic get()Ljava/lang/Object;
    .locals 1

    .line 10
    invoke-virtual {p0}, Lorg/briarproject/briar/android/AppModule_ProvideScreenFilterMonitorFactory;->get()Lorg/briarproject/briar/api/android/ScreenFilterMonitor;

    move-result-object v0

    return-object v0
.end method

.method public get()Lorg/briarproject/briar/api/android/ScreenFilterMonitor;
    .locals 3

    .line 33
    iget-object v0, p0, Lorg/briarproject/briar/android/AppModule_ProvideScreenFilterMonitorFactory;->module:Lorg/briarproject/briar/android/AppModule;

    iget-object v1, p0, Lorg/briarproject/briar/android/AppModule_ProvideScreenFilterMonitorFactory;->lifecycleManagerProvider:Ljavax/inject/Provider;

    iget-object v2, p0, Lorg/briarproject/briar/android/AppModule_ProvideScreenFilterMonitorFactory;->screenFilterMonitorProvider:Ljavax/inject/Provider;

    invoke-static {v0, v1, v2}, Lorg/briarproject/briar/android/AppModule_ProvideScreenFilterMonitorFactory;->provideInstance(Lorg/briarproject/briar/android/AppModule;Ljavax/inject/Provider;Ljavax/inject/Provider;)Lorg/briarproject/briar/api/android/ScreenFilterMonitor;

    move-result-object v0

    return-object v0
.end method
