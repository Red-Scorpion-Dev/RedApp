.class public final Lorg/briarproject/briar/android/AppModule_ProvideDozeWatchdogFactory;
.super Ljava/lang/Object;
.source "AppModule_ProvideDozeWatchdogFactory.java"

# interfaces
.implements Ldagger/internal/Factory;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ldagger/internal/Factory<",
        "Lorg/briarproject/briar/api/android/DozeWatchdog;",
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


# direct methods
.method public constructor <init>(Lorg/briarproject/briar/android/AppModule;Ljavax/inject/Provider;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/briarproject/briar/android/AppModule;",
            "Ljavax/inject/Provider<",
            "Lorg/briarproject/bramble/api/lifecycle/LifecycleManager;",
            ">;)V"
        }
    .end annotation

    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 21
    iput-object p1, p0, Lorg/briarproject/briar/android/AppModule_ProvideDozeWatchdogFactory;->module:Lorg/briarproject/briar/android/AppModule;

    .line 22
    iput-object p2, p0, Lorg/briarproject/briar/android/AppModule_ProvideDozeWatchdogFactory;->lifecycleManagerProvider:Ljavax/inject/Provider;

    return-void
.end method

.method public static create(Lorg/briarproject/briar/android/AppModule;Ljavax/inject/Provider;)Lorg/briarproject/briar/android/AppModule_ProvideDozeWatchdogFactory;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/briarproject/briar/android/AppModule;",
            "Ljavax/inject/Provider<",
            "Lorg/briarproject/bramble/api/lifecycle/LifecycleManager;",
            ">;)",
            "Lorg/briarproject/briar/android/AppModule_ProvideDozeWatchdogFactory;"
        }
    .end annotation

    .line 37
    new-instance v0, Lorg/briarproject/briar/android/AppModule_ProvideDozeWatchdogFactory;

    invoke-direct {v0, p0, p1}, Lorg/briarproject/briar/android/AppModule_ProvideDozeWatchdogFactory;-><init>(Lorg/briarproject/briar/android/AppModule;Ljavax/inject/Provider;)V

    return-object v0
.end method

.method public static provideInstance(Lorg/briarproject/briar/android/AppModule;Ljavax/inject/Provider;)Lorg/briarproject/briar/api/android/DozeWatchdog;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/briarproject/briar/android/AppModule;",
            "Ljavax/inject/Provider<",
            "Lorg/briarproject/bramble/api/lifecycle/LifecycleManager;",
            ">;)",
            "Lorg/briarproject/briar/api/android/DozeWatchdog;"
        }
    .end annotation

    .line 32
    invoke-interface {p1}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/briarproject/bramble/api/lifecycle/LifecycleManager;

    invoke-static {p0, p1}, Lorg/briarproject/briar/android/AppModule_ProvideDozeWatchdogFactory;->proxyProvideDozeWatchdog(Lorg/briarproject/briar/android/AppModule;Lorg/briarproject/bramble/api/lifecycle/LifecycleManager;)Lorg/briarproject/briar/api/android/DozeWatchdog;

    move-result-object p0

    return-object p0
.end method

.method public static proxyProvideDozeWatchdog(Lorg/briarproject/briar/android/AppModule;Lorg/briarproject/bramble/api/lifecycle/LifecycleManager;)Lorg/briarproject/briar/api/android/DozeWatchdog;
    .locals 0

    .line 43
    invoke-virtual {p0, p1}, Lorg/briarproject/briar/android/AppModule;->provideDozeWatchdog(Lorg/briarproject/bramble/api/lifecycle/LifecycleManager;)Lorg/briarproject/briar/api/android/DozeWatchdog;

    move-result-object p0

    const-string p1, "Cannot return null from a non-@Nullable @Provides method"

    .line 42
    invoke-static {p0, p1}, Ldagger/internal/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lorg/briarproject/briar/api/android/DozeWatchdog;

    return-object p0
.end method


# virtual methods
.method public bridge synthetic get()Ljava/lang/Object;
    .locals 1

    .line 10
    invoke-virtual {p0}, Lorg/briarproject/briar/android/AppModule_ProvideDozeWatchdogFactory;->get()Lorg/briarproject/briar/api/android/DozeWatchdog;

    move-result-object v0

    return-object v0
.end method

.method public get()Lorg/briarproject/briar/api/android/DozeWatchdog;
    .locals 2

    .line 27
    iget-object v0, p0, Lorg/briarproject/briar/android/AppModule_ProvideDozeWatchdogFactory;->module:Lorg/briarproject/briar/android/AppModule;

    iget-object v1, p0, Lorg/briarproject/briar/android/AppModule_ProvideDozeWatchdogFactory;->lifecycleManagerProvider:Ljavax/inject/Provider;

    invoke-static {v0, v1}, Lorg/briarproject/briar/android/AppModule_ProvideDozeWatchdogFactory;->provideInstance(Lorg/briarproject/briar/android/AppModule;Ljavax/inject/Provider;)Lorg/briarproject/briar/api/android/DozeWatchdog;

    move-result-object v0

    return-object v0
.end method
