.class public Lorg/briarproject/bramble/battery/AndroidBatteryModule;
.super Ljava/lang/Object;
.source "AndroidBatteryModule.java"


# annotations
.annotation runtime Ldagger/Module;
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method provideBatteryManager(Lorg/briarproject/bramble/api/lifecycle/LifecycleManager;Lorg/briarproject/bramble/battery/AndroidBatteryManager;)Lorg/briarproject/bramble/api/battery/BatteryManager;
    .locals 0
    .annotation runtime Ldagger/Provides;
    .end annotation

    .line 18
    invoke-interface {p1, p2}, Lorg/briarproject/bramble/api/lifecycle/LifecycleManager;->registerService(Lorg/briarproject/bramble/api/lifecycle/Service;)V

    return-object p2
.end method
