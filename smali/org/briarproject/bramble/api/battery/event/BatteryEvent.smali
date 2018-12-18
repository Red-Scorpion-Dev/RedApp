.class public Lorg/briarproject/bramble/api/battery/event/BatteryEvent;
.super Lorg/briarproject/bramble/api/event/Event;
.source "BatteryEvent.java"


# instance fields
.field private final charging:Z


# direct methods
.method public constructor <init>(Z)V
    .locals 0

    .line 12
    invoke-direct {p0}, Lorg/briarproject/bramble/api/event/Event;-><init>()V

    .line 13
    iput-boolean p1, p0, Lorg/briarproject/bramble/api/battery/event/BatteryEvent;->charging:Z

    return-void
.end method


# virtual methods
.method public isCharging()Z
    .locals 1

    .line 17
    iget-boolean v0, p0, Lorg/briarproject/bramble/api/battery/event/BatteryEvent;->charging:Z

    return v0
.end method
