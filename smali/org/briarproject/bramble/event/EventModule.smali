.class public Lorg/briarproject/bramble/event/EventModule;
.super Ljava/lang/Object;
.source "EventModule.java"


# annotations
.annotation runtime Ldagger/Module;
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method provideEventBus()Lorg/briarproject/bramble/api/event/EventBus;
    .locals 1
    .annotation runtime Ldagger/Provides;
    .end annotation

    .line 16
    new-instance v0, Lorg/briarproject/bramble/event/EventBusImpl;

    invoke-direct {v0}, Lorg/briarproject/bramble/event/EventBusImpl;-><init>()V

    return-object v0
.end method
