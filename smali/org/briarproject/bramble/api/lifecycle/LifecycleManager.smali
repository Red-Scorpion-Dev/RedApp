.class public interface abstract Lorg/briarproject/bramble/api/lifecycle/LifecycleManager;
.super Ljava/lang/Object;
.source "LifecycleManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/briarproject/bramble/api/lifecycle/LifecycleManager$LifecycleState;,
        Lorg/briarproject/bramble/api/lifecycle/LifecycleManager$StartResult;
    }
.end annotation

.annotation runtime Lorg/briarproject/bramble/api/nullsafety/NotNullByDefault;
.end annotation


# virtual methods
.method public abstract getLifecycleState()Lorg/briarproject/bramble/api/lifecycle/LifecycleManager$LifecycleState;
.end method

.method public abstract registerClient(Lorg/briarproject/bramble/api/sync/Client;)V
.end method

.method public abstract registerForShutdown(Ljava/util/concurrent/ExecutorService;)V
.end method

.method public abstract registerService(Lorg/briarproject/bramble/api/lifecycle/Service;)V
.end method

.method public abstract startServices(Lorg/briarproject/bramble/api/crypto/SecretKey;)Lorg/briarproject/bramble/api/lifecycle/LifecycleManager$StartResult;
.end method

.method public abstract stopServices()V
.end method

.method public abstract waitForDatabase()V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;
        }
    .end annotation
.end method

.method public abstract waitForShutdown()V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;
        }
    .end annotation
.end method

.method public abstract waitForStartup()V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;
        }
    .end annotation
.end method
