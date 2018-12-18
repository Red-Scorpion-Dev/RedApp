.class public Lorg/briarproject/bramble/reliability/ReliabilityModule;
.super Ljava/lang/Object;
.source "ReliabilityModule.java"


# annotations
.annotation runtime Ldagger/Module;
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method provideReliabilityFactory(Lorg/briarproject/bramble/reliability/ReliabilityLayerFactoryImpl;)Lorg/briarproject/bramble/api/reliability/ReliabilityLayerFactory;
    .locals 0
    .annotation runtime Ldagger/Provides;
    .end annotation

    return-object p1
.end method

.method provideReliabilityFactoryByExector(Ljava/util/concurrent/Executor;)Lorg/briarproject/bramble/api/reliability/ReliabilityLayerFactory;
    .locals 1
    .param p1    # Ljava/util/concurrent/Executor;
        .annotation runtime Lorg/briarproject/bramble/api/lifecycle/IoExecutor;
        .end annotation
    .end param
    .annotation runtime Ldagger/Provides;
    .end annotation

    .line 17
    new-instance v0, Lorg/briarproject/bramble/reliability/ReliabilityLayerFactoryImpl;

    invoke-direct {v0, p1}, Lorg/briarproject/bramble/reliability/ReliabilityLayerFactoryImpl;-><init>(Ljava/util/concurrent/Executor;)V

    return-object v0
.end method
