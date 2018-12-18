.class public Lorg/briarproject/bramble/battery/DefaultBatteryManagerModule;
.super Ljava/lang/Object;
.source "DefaultBatteryManagerModule.java"


# annotations
.annotation runtime Ldagger/Module;
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic lambda$provideBatteryManager$0()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method


# virtual methods
.method provideBatteryManager()Lorg/briarproject/bramble/api/battery/BatteryManager;
    .locals 1
    .annotation runtime Ldagger/Provides;
    .end annotation

    .line 17
    sget-object v0, Lorg/briarproject/bramble/battery/-$$Lambda$DefaultBatteryManagerModule$URavFGBA3Jvr2CP-ZEorTJZKNw8;->INSTANCE:Lorg/briarproject/bramble/battery/-$$Lambda$DefaultBatteryManagerModule$URavFGBA3Jvr2CP-ZEorTJZKNw8;

    return-object v0
.end method
