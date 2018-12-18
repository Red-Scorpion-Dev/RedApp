.class public final Lorg/briarproject/bramble/battery/DefaultBatteryManagerModule_ProvideBatteryManagerFactory;
.super Ljava/lang/Object;
.source "DefaultBatteryManagerModule_ProvideBatteryManagerFactory.java"

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
.field private final module:Lorg/briarproject/bramble/battery/DefaultBatteryManagerModule;


# direct methods
.method public constructor <init>(Lorg/briarproject/bramble/battery/DefaultBatteryManagerModule;)V
    .locals 0

    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 18
    iput-object p1, p0, Lorg/briarproject/bramble/battery/DefaultBatteryManagerModule_ProvideBatteryManagerFactory;->module:Lorg/briarproject/bramble/battery/DefaultBatteryManagerModule;

    return-void
.end method

.method public static create(Lorg/briarproject/bramble/battery/DefaultBatteryManagerModule;)Lorg/briarproject/bramble/battery/DefaultBatteryManagerModule_ProvideBatteryManagerFactory;
    .locals 1

    .line 32
    new-instance v0, Lorg/briarproject/bramble/battery/DefaultBatteryManagerModule_ProvideBatteryManagerFactory;

    invoke-direct {v0, p0}, Lorg/briarproject/bramble/battery/DefaultBatteryManagerModule_ProvideBatteryManagerFactory;-><init>(Lorg/briarproject/bramble/battery/DefaultBatteryManagerModule;)V

    return-object v0
.end method

.method public static provideInstance(Lorg/briarproject/bramble/battery/DefaultBatteryManagerModule;)Lorg/briarproject/bramble/api/battery/BatteryManager;
    .locals 0

    .line 27
    invoke-static {p0}, Lorg/briarproject/bramble/battery/DefaultBatteryManagerModule_ProvideBatteryManagerFactory;->proxyProvideBatteryManager(Lorg/briarproject/bramble/battery/DefaultBatteryManagerModule;)Lorg/briarproject/bramble/api/battery/BatteryManager;

    move-result-object p0

    return-object p0
.end method

.method public static proxyProvideBatteryManager(Lorg/briarproject/bramble/battery/DefaultBatteryManagerModule;)Lorg/briarproject/bramble/api/battery/BatteryManager;
    .locals 1

    .line 37
    invoke-virtual {p0}, Lorg/briarproject/bramble/battery/DefaultBatteryManagerModule;->provideBatteryManager()Lorg/briarproject/bramble/api/battery/BatteryManager;

    move-result-object p0

    const-string v0, "Cannot return null from a non-@Nullable @Provides method"

    .line 36
    invoke-static {p0, v0}, Ldagger/internal/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lorg/briarproject/bramble/api/battery/BatteryManager;

    return-object p0
.end method


# virtual methods
.method public bridge synthetic get()Ljava/lang/Object;
    .locals 1

    .line 8
    invoke-virtual {p0}, Lorg/briarproject/bramble/battery/DefaultBatteryManagerModule_ProvideBatteryManagerFactory;->get()Lorg/briarproject/bramble/api/battery/BatteryManager;

    move-result-object v0

    return-object v0
.end method

.method public get()Lorg/briarproject/bramble/api/battery/BatteryManager;
    .locals 1

    .line 23
    iget-object v0, p0, Lorg/briarproject/bramble/battery/DefaultBatteryManagerModule_ProvideBatteryManagerFactory;->module:Lorg/briarproject/bramble/battery/DefaultBatteryManagerModule;

    invoke-static {v0}, Lorg/briarproject/bramble/battery/DefaultBatteryManagerModule_ProvideBatteryManagerFactory;->provideInstance(Lorg/briarproject/bramble/battery/DefaultBatteryManagerModule;)Lorg/briarproject/bramble/api/battery/BatteryManager;

    move-result-object v0

    return-object v0
.end method
