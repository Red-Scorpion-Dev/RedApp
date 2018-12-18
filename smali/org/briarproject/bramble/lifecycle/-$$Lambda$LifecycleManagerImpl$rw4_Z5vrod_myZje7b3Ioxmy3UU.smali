.class public final synthetic Lorg/briarproject/bramble/lifecycle/-$$Lambda$LifecycleManagerImpl$rw4_Z5vrod_myZje7b3Ioxmy3UU;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Lorg/briarproject/bramble/api/db/DbRunnable;


# instance fields
.field private final synthetic f$0:Lorg/briarproject/bramble/lifecycle/LifecycleManagerImpl;


# direct methods
.method public synthetic constructor <init>(Lorg/briarproject/bramble/lifecycle/LifecycleManagerImpl;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/briarproject/bramble/lifecycle/-$$Lambda$LifecycleManagerImpl$rw4_Z5vrod_myZje7b3Ioxmy3UU;->f$0:Lorg/briarproject/bramble/lifecycle/LifecycleManagerImpl;

    return-void
.end method


# virtual methods
.method public final run(Lorg/briarproject/bramble/api/db/Transaction;)V
    .locals 1

    iget-object v0, p0, Lorg/briarproject/bramble/lifecycle/-$$Lambda$LifecycleManagerImpl$rw4_Z5vrod_myZje7b3Ioxmy3UU;->f$0:Lorg/briarproject/bramble/lifecycle/LifecycleManagerImpl;

    invoke-static {v0, p1}, Lorg/briarproject/bramble/lifecycle/LifecycleManagerImpl;->lambda$startServices$0(Lorg/briarproject/bramble/lifecycle/LifecycleManagerImpl;Lorg/briarproject/bramble/api/db/Transaction;)V

    return-void
.end method
