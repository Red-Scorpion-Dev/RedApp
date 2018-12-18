.class public Lorg/briarproject/bramble/BrambleAndroidModule;
.super Ljava/lang/Object;
.source "BrambleAndroidModule.java"


# annotations
.annotation runtime Ldagger/Module;
    includes = {
        Lorg/briarproject/bramble/battery/AndroidBatteryModule;,
        Lorg/briarproject/bramble/network/AndroidNetworkModule;,
        Lorg/briarproject/bramble/system/AndroidSystemModule;,
        Lorg/briarproject/bramble/plugin/tor/CircumventionModule;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
