.class public final Lorg/briarproject/bramble/reliability/ReliabilityLayerFactoryImpl_Factory;
.super Ljava/lang/Object;
.source "ReliabilityLayerFactoryImpl_Factory.java"

# interfaces
.implements Ldagger/internal/Factory;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ldagger/internal/Factory<",
        "Lorg/briarproject/bramble/reliability/ReliabilityLayerFactoryImpl;",
        ">;"
    }
.end annotation


# instance fields
.field private final ioExecutorProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Ljava/util/concurrent/Executor;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljavax/inject/Provider;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavax/inject/Provider<",
            "Ljava/util/concurrent/Executor;",
            ">;)V"
        }
    .end annotation

    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 17
    iput-object p1, p0, Lorg/briarproject/bramble/reliability/ReliabilityLayerFactoryImpl_Factory;->ioExecutorProvider:Ljavax/inject/Provider;

    return-void
.end method

.method public static create(Ljavax/inject/Provider;)Lorg/briarproject/bramble/reliability/ReliabilityLayerFactoryImpl_Factory;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavax/inject/Provider<",
            "Ljava/util/concurrent/Executor;",
            ">;)",
            "Lorg/briarproject/bramble/reliability/ReliabilityLayerFactoryImpl_Factory;"
        }
    .end annotation

    .line 30
    new-instance v0, Lorg/briarproject/bramble/reliability/ReliabilityLayerFactoryImpl_Factory;

    invoke-direct {v0, p0}, Lorg/briarproject/bramble/reliability/ReliabilityLayerFactoryImpl_Factory;-><init>(Ljavax/inject/Provider;)V

    return-object v0
.end method

.method public static newReliabilityLayerFactoryImpl(Ljava/util/concurrent/Executor;)Lorg/briarproject/bramble/reliability/ReliabilityLayerFactoryImpl;
    .locals 1

    .line 34
    new-instance v0, Lorg/briarproject/bramble/reliability/ReliabilityLayerFactoryImpl;

    invoke-direct {v0, p0}, Lorg/briarproject/bramble/reliability/ReliabilityLayerFactoryImpl;-><init>(Ljava/util/concurrent/Executor;)V

    return-object v0
.end method

.method public static provideInstance(Ljavax/inject/Provider;)Lorg/briarproject/bramble/reliability/ReliabilityLayerFactoryImpl;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavax/inject/Provider<",
            "Ljava/util/concurrent/Executor;",
            ">;)",
            "Lorg/briarproject/bramble/reliability/ReliabilityLayerFactoryImpl;"
        }
    .end annotation

    .line 26
    new-instance v0, Lorg/briarproject/bramble/reliability/ReliabilityLayerFactoryImpl;

    invoke-interface {p0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/concurrent/Executor;

    invoke-direct {v0, p0}, Lorg/briarproject/bramble/reliability/ReliabilityLayerFactoryImpl;-><init>(Ljava/util/concurrent/Executor;)V

    return-object v0
.end method


# virtual methods
.method public bridge synthetic get()Ljava/lang/Object;
    .locals 1

    .line 8
    invoke-virtual {p0}, Lorg/briarproject/bramble/reliability/ReliabilityLayerFactoryImpl_Factory;->get()Lorg/briarproject/bramble/reliability/ReliabilityLayerFactoryImpl;

    move-result-object v0

    return-object v0
.end method

.method public get()Lorg/briarproject/bramble/reliability/ReliabilityLayerFactoryImpl;
    .locals 1

    .line 22
    iget-object v0, p0, Lorg/briarproject/bramble/reliability/ReliabilityLayerFactoryImpl_Factory;->ioExecutorProvider:Ljavax/inject/Provider;

    invoke-static {v0}, Lorg/briarproject/bramble/reliability/ReliabilityLayerFactoryImpl_Factory;->provideInstance(Ljavax/inject/Provider;)Lorg/briarproject/bramble/reliability/ReliabilityLayerFactoryImpl;

    move-result-object v0

    return-object v0
.end method
