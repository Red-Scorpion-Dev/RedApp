.class public final synthetic Lorg/briarproject/bramble/battery/-$$Lambda$DefaultBatteryManagerModule$URavFGBA3Jvr2CP-ZEorTJZKNw8;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Lorg/briarproject/bramble/api/battery/BatteryManager;


# static fields
.field public static final synthetic INSTANCE:Lorg/briarproject/bramble/battery/-$$Lambda$DefaultBatteryManagerModule$URavFGBA3Jvr2CP-ZEorTJZKNw8;


# direct methods
.method static synthetic constructor <clinit>()V
    .locals 1

    new-instance v0, Lorg/briarproject/bramble/battery/-$$Lambda$DefaultBatteryManagerModule$URavFGBA3Jvr2CP-ZEorTJZKNw8;

    invoke-direct {v0}, Lorg/briarproject/bramble/battery/-$$Lambda$DefaultBatteryManagerModule$URavFGBA3Jvr2CP-ZEorTJZKNw8;-><init>()V

    sput-object v0, Lorg/briarproject/bramble/battery/-$$Lambda$DefaultBatteryManagerModule$URavFGBA3Jvr2CP-ZEorTJZKNw8;->INSTANCE:Lorg/briarproject/bramble/battery/-$$Lambda$DefaultBatteryManagerModule$URavFGBA3Jvr2CP-ZEorTJZKNw8;

    return-void
.end method

.method private synthetic constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final isCharging()Z
    .locals 1

    invoke-static {}, Lorg/briarproject/bramble/battery/DefaultBatteryManagerModule;->lambda$provideBatteryManager$0()Z

    move-result v0

    return v0
.end method
