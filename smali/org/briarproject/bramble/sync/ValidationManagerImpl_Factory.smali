.class public final Lorg/briarproject/bramble/sync/ValidationManagerImpl_Factory;
.super Ljava/lang/Object;
.source "ValidationManagerImpl_Factory.java"

# interfaces
.implements Ldagger/internal/Factory;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ldagger/internal/Factory<",
        "Lorg/briarproject/bramble/sync/ValidationManagerImpl;",
        ">;"
    }
.end annotation


# instance fields
.field private final dbExecutorProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Ljava/util/concurrent/Executor;",
            ">;"
        }
    .end annotation
.end field

.field private final dbProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lorg/briarproject/bramble/api/db/DatabaseComponent;",
            ">;"
        }
    .end annotation
.end field

.field private final validationExecutorProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Ljava/util/concurrent/Executor;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavax/inject/Provider<",
            "Lorg/briarproject/bramble/api/db/DatabaseComponent;",
            ">;",
            "Ljavax/inject/Provider<",
            "Ljava/util/concurrent/Executor;",
            ">;",
            "Ljavax/inject/Provider<",
            "Ljava/util/concurrent/Executor;",
            ">;)V"
        }
    .end annotation

    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 24
    iput-object p1, p0, Lorg/briarproject/bramble/sync/ValidationManagerImpl_Factory;->dbProvider:Ljavax/inject/Provider;

    .line 25
    iput-object p2, p0, Lorg/briarproject/bramble/sync/ValidationManagerImpl_Factory;->dbExecutorProvider:Ljavax/inject/Provider;

    .line 26
    iput-object p3, p0, Lorg/briarproject/bramble/sync/ValidationManagerImpl_Factory;->validationExecutorProvider:Ljavax/inject/Provider;

    return-void
.end method

.method public static create(Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)Lorg/briarproject/bramble/sync/ValidationManagerImpl_Factory;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavax/inject/Provider<",
            "Lorg/briarproject/bramble/api/db/DatabaseComponent;",
            ">;",
            "Ljavax/inject/Provider<",
            "Ljava/util/concurrent/Executor;",
            ">;",
            "Ljavax/inject/Provider<",
            "Ljava/util/concurrent/Executor;",
            ">;)",
            "Lorg/briarproject/bramble/sync/ValidationManagerImpl_Factory;"
        }
    .end annotation

    .line 46
    new-instance v0, Lorg/briarproject/bramble/sync/ValidationManagerImpl_Factory;

    invoke-direct {v0, p0, p1, p2}, Lorg/briarproject/bramble/sync/ValidationManagerImpl_Factory;-><init>(Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)V

    return-object v0
.end method

.method public static newValidationManagerImpl(Lorg/briarproject/bramble/api/db/DatabaseComponent;Ljava/util/concurrent/Executor;Ljava/util/concurrent/Executor;)Lorg/briarproject/bramble/sync/ValidationManagerImpl;
    .locals 1

    .line 52
    new-instance v0, Lorg/briarproject/bramble/sync/ValidationManagerImpl;

    invoke-direct {v0, p0, p1, p2}, Lorg/briarproject/bramble/sync/ValidationManagerImpl;-><init>(Lorg/briarproject/bramble/api/db/DatabaseComponent;Ljava/util/concurrent/Executor;Ljava/util/concurrent/Executor;)V

    return-object v0
.end method

.method public static provideInstance(Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)Lorg/briarproject/bramble/sync/ValidationManagerImpl;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavax/inject/Provider<",
            "Lorg/briarproject/bramble/api/db/DatabaseComponent;",
            ">;",
            "Ljavax/inject/Provider<",
            "Ljava/util/concurrent/Executor;",
            ">;",
            "Ljavax/inject/Provider<",
            "Ljava/util/concurrent/Executor;",
            ">;)",
            "Lorg/briarproject/bramble/sync/ValidationManagerImpl;"
        }
    .end annotation

    .line 38
    new-instance v0, Lorg/briarproject/bramble/sync/ValidationManagerImpl;

    .line 39
    invoke-interface {p0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lorg/briarproject/bramble/api/db/DatabaseComponent;

    invoke-interface {p1}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/concurrent/Executor;

    invoke-interface {p2}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/util/concurrent/Executor;

    invoke-direct {v0, p0, p1, p2}, Lorg/briarproject/bramble/sync/ValidationManagerImpl;-><init>(Lorg/briarproject/bramble/api/db/DatabaseComponent;Ljava/util/concurrent/Executor;Ljava/util/concurrent/Executor;)V

    return-object v0
.end method


# virtual methods
.method public bridge synthetic get()Ljava/lang/Object;
    .locals 1

    .line 9
    invoke-virtual {p0}, Lorg/briarproject/bramble/sync/ValidationManagerImpl_Factory;->get()Lorg/briarproject/bramble/sync/ValidationManagerImpl;

    move-result-object v0

    return-object v0
.end method

.method public get()Lorg/briarproject/bramble/sync/ValidationManagerImpl;
    .locals 3

    .line 31
    iget-object v0, p0, Lorg/briarproject/bramble/sync/ValidationManagerImpl_Factory;->dbProvider:Ljavax/inject/Provider;

    iget-object v1, p0, Lorg/briarproject/bramble/sync/ValidationManagerImpl_Factory;->dbExecutorProvider:Ljavax/inject/Provider;

    iget-object v2, p0, Lorg/briarproject/bramble/sync/ValidationManagerImpl_Factory;->validationExecutorProvider:Ljavax/inject/Provider;

    invoke-static {v0, v1, v2}, Lorg/briarproject/bramble/sync/ValidationManagerImpl_Factory;->provideInstance(Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)Lorg/briarproject/bramble/sync/ValidationManagerImpl;

    move-result-object v0

    return-object v0
.end method
