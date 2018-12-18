.class public final Lorg/briarproject/bramble/battery/AndroidBatteryModule_ProvideBatteryManagerFactory;
.super Ljava/lang/Object;
.source "AndroidBatteryModule_ProvideBatteryManagerFactory.java"

# interfaces
.implements Ldagger/internal/Factory;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ldagger/internal/Factory<",
        "Lorg/briarproject/bramble/api/battery/BatteryManager;",
        ">;"
    }
.end annotation


# instance fields
.field private final batteryManagerProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lorg/briarproject/bramble/battery/AndroidBatteryManager;",
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

.field private final module:Lorg/briarproject/bramble/battery/AndroidBatteryModule;


# direct methods
.method public constructor <init>(Lorg/briarproject/bramble/battery/AndroidBatteryModule;Ljavax/inject/Provider;Ljavax/inject/Provider;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/briarproject/bramble/battery/AndroidBatteryModule;",
            "Ljavax/inject/Provider<",
            "Lorg/briarproject/bramble/api/lifecycle/LifecycleManager;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lorg/briarproject/bramble/battery/AndroidBatteryManager;",
            ">;)V"
        }
    .end annotation

    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 26
    iput-object p1, p0, Lorg/briarproject/bramble/battery/AndroidBatteryModule_ProvideBatteryManagerFactory;->module:Lorg/briarproject/bramble/battery/AndroidBatteryModule;

    .line 27
    iput-object p2, p0, Lorg/briarproject/bramble/battery/AndroidBatteryModule_ProvideBatteryManagerFactory;->lifecycleManagerProvider:Ljavax/inject/Provider;

    .line 28
    iput-object p3, p0, Lorg/briarproject/bramble/battery/AndroidBatteryModule_ProvideBatteryManagerFactory;->batteryManagerProvider:Ljavax/inject/Provider;

    return-void
.end method

.method public static create(Lorg/briarproject/bramble/battery/AndroidBatteryModule;Ljavax/inject/Provider;Ljavax/inject/Provider;)Lorg/briarproject/bramble/battery/AndroidBatteryModule_ProvideBatteryManagerFactory;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/briarproject/bramble/battery/AndroidBatteryModule;",
            "Ljavax/inject/Provider<",
            "Lorg/briarproject/bramble/api/lifecycle/LifecycleManager;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lorg/briarproject/bramble/battery/AndroidBatteryManager;",
            ">;)",
            "Lorg/briarproject/bramble/battery/AndroidBatteryModule_ProvideBatteryManagerFactory;"
        }
    .end annotation

    .line 48
    new-instance v0, Lorg/briarproject/bramble/battery/AndroidBatteryModule_ProvideBatteryManagerFactory;

    invoke-direct {v0, p0, p1, p2}, Lorg/briarproject/bramble/battery/AndroidBatteryModule_ProvideBatteryManagerFactory;-><init>(Lorg/briarproject/bramble/battery/AndroidBatteryModule;Ljavax/inject/Provider;Ljavax/inject/Provider;)V

    return-object v0
.end method

.method public static provideInstance(Lorg/briarproject/bramble/battery/AndroidBatteryModule;Ljavax/inject/Provider;Ljavax/inject/Provider;)Lorg/briarproject/bramble/api/battery/BatteryManager;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/briarproject/bramble/battery/AndroidBatteryModule;",
            "Ljavax/inject/Provider<",
            "Lorg/briarproject/bramble/api/lifecycle/LifecycleManager;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lorg/briarproject/bramble/battery/AndroidBatteryManager;",
            ">;)",
            "Lorg/briarproject/bramble/api/battery/BatteryManager;"
        }
    .end annotation

    .line 41
    invoke-interface {p1}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/briarproject/bramble/api/lifecycle/LifecycleManager;

    invoke-interface {p2}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object p2

    .line 40
    invoke-static {p0, p1, p2}, Lorg/briarproject/bramble/battery/AndroidBatteryModule_ProvideBatteryManagerFactory;->proxyProvideBatteryManager(Lorg/briarproject/bramble/battery/AndroidBatteryModule;Lorg/briarproject/bramble/api/lifecycle/LifecycleManager;Ljava/lang/Object;)Lorg/briarproject/bramble/api/battery/BatteryManager;

    move-result-object p0

    return-object p0
.end method

.method public static proxyProvideBatteryManager(Lorg/briarproject/bramble/battery/AndroidBatteryModule;Lorg/briarproject/bramble/api/lifecycle/LifecycleManager;Ljava/lang/Object;)Lorg/briarproject/bramble/api/battery/BatteryManager;
    .locals 0

    .line 54
    check-cast p2, Lorg/briarproject/bramble/battery/AndroidBatteryManager;

    .line 55
    invoke-virtual {p0, p1, p2}, Lorg/briarproject/bramble/battery/AndroidBatteryModule;->provideBatteryManager(Lorg/briarproject/bramble/api/lifecycle/LifecycleManager;Lorg/briarproject/bramble/battery/AndroidBatteryManager;)Lorg/briarproject/bramble/api/battery/BatteryManager;

    move-result-object p0

    const-string p1, "Cannot return null from a non-@Nullable @Provides method"

    .line 54
    invoke-static {p0, p1}, Ldagger/internal/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lorg/briarproject/bramble/api/battery/BatteryManager;

    return-object p0
.end method


# virtual methods
.method public bridge synthetic get()Ljava/lang/Object;
    .locals 1

    .line 10
    invoke-virtual {p0}, Lorg/briarproject/bramble/battery/AndroidBatteryModule_ProvideBatteryManagerFactory;->get()Lorg/briarproject/bramble/api/battery/BatteryManager;

    move-result-object v0

    return-object v0
.end method

.method public get()Lorg/briarproject/bramble/api/battery/BatteryManager;
    .locals 3

    .line 33
    iget-object v0, p0, Lorg/briarproject/bramble/battery/AndroidBatteryModule_ProvideBatteryManagerFactory;->module:Lorg/briarproject/bramble/battery/AndroidBatteryModule;

    iget-object v1, p0, Lorg/briarproject/bramble/battery/AndroidBatteryModule_ProvideBatteryManagerFactory;->lifecycleManagerProvider:Ljavax/inject/Provider;

    iget-object v2, p0, Lorg/briarproject/bramble/battery/AndroidBatteryModule_ProvideBatteryManagerFactory;->batteryManagerProvider:Ljavax/inject/Provider;

    invoke-static {v0, v1, v2}, Lorg/briarproject/bramble/battery/AndroidBatteryModule_ProvideBatteryManagerFactory;->provideInstance(Lorg/briarproject/bramble/battery/AndroidBatteryModule;Ljavax/inject/Provider;Ljavax/inject/Provider;)Lorg/briarproject/bramble/api/battery/BatteryManager;

    move-result-object v0

    return-object v0
.end method
