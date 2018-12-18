.class public Lorg/briarproject/bramble/api/lifecycle/event/LifecycleEvent;
.super Lorg/briarproject/bramble/api/event/Event;
.source "LifecycleEvent.java"


# instance fields
.field private final state:Lorg/briarproject/bramble/api/lifecycle/LifecycleManager$LifecycleState;


# direct methods
.method public constructor <init>(Lorg/briarproject/bramble/api/lifecycle/LifecycleManager$LifecycleState;)V
    .locals 0

    .line 13
    invoke-direct {p0}, Lorg/briarproject/bramble/api/event/Event;-><init>()V

    .line 14
    iput-object p1, p0, Lorg/briarproject/bramble/api/lifecycle/event/LifecycleEvent;->state:Lorg/briarproject/bramble/api/lifecycle/LifecycleManager$LifecycleState;

    return-void
.end method


# virtual methods
.method public getLifecycleState()Lorg/briarproject/bramble/api/lifecycle/LifecycleManager$LifecycleState;
    .locals 1

    .line 18
    iget-object v0, p0, Lorg/briarproject/bramble/api/lifecycle/event/LifecycleEvent;->state:Lorg/briarproject/bramble/api/lifecycle/LifecycleManager$LifecycleState;

    return-object v0
.end method
