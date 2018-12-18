.class public Lorg/briarproject/bramble/sync/SyncModule;
.super Ljava/lang/Object;
.source "SyncModule.java"


# annotations
.annotation runtime Ldagger/Module;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/briarproject/bramble/sync/SyncModule$EagerSingletons;
    }
.end annotation


# static fields
.field private static final MAX_CONCURRENT_VALIDATION_TASKS:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 42
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Runtime;->availableProcessors()I

    move-result v0

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    invoke-static {v1, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    sput v0, Lorg/briarproject/bramble/sync/SyncModule;->MAX_CONCURRENT_VALIDATION_TASKS:I

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method provideGroupFactory(Lorg/briarproject/bramble/api/crypto/CryptoComponent;)Lorg/briarproject/bramble/api/sync/GroupFactory;
    .locals 1
    .annotation runtime Ldagger/Provides;
    .end annotation

    .line 46
    new-instance v0, Lorg/briarproject/bramble/sync/GroupFactoryImpl;

    invoke-direct {v0, p1}, Lorg/briarproject/bramble/sync/GroupFactoryImpl;-><init>(Lorg/briarproject/bramble/api/crypto/CryptoComponent;)V

    return-object v0
.end method

.method provideMessageFactory(Lorg/briarproject/bramble/api/crypto/CryptoComponent;)Lorg/briarproject/bramble/api/sync/MessageFactory;
    .locals 1
    .annotation runtime Ldagger/Provides;
    .end annotation

    .line 51
    new-instance v0, Lorg/briarproject/bramble/sync/MessageFactoryImpl;

    invoke-direct {v0, p1}, Lorg/briarproject/bramble/sync/MessageFactoryImpl;-><init>(Lorg/briarproject/bramble/api/crypto/CryptoComponent;)V

    return-object v0
.end method

.method provideRecordReaderFactory(Lorg/briarproject/bramble/sync/SyncRecordReaderFactoryImpl;)Lorg/briarproject/bramble/api/sync/SyncRecordReaderFactory;
    .locals 0
    .annotation runtime Ldagger/Provides;
    .end annotation

    return-object p1
.end method

.method provideRecordWriterFactory(Lorg/briarproject/bramble/sync/SyncRecordWriterFactoryImpl;)Lorg/briarproject/bramble/api/sync/SyncRecordWriterFactory;
    .locals 0
    .annotation runtime Ldagger/Provides;
    .end annotation

    return-object p1
.end method

.method provideSyncSessionFactory(Lorg/briarproject/bramble/api/db/DatabaseComponent;Ljava/util/concurrent/Executor;Lorg/briarproject/bramble/api/event/EventBus;Lorg/briarproject/bramble/api/system/Clock;Lorg/briarproject/bramble/api/sync/SyncRecordReaderFactory;Lorg/briarproject/bramble/api/sync/SyncRecordWriterFactory;)Lorg/briarproject/bramble/api/sync/SyncSessionFactory;
    .locals 8
    .param p2    # Ljava/util/concurrent/Executor;
        .annotation runtime Lorg/briarproject/bramble/api/db/DatabaseExecutor;
        .end annotation
    .end param
    .annotation runtime Ldagger/Provides;
    .end annotation

    .line 72
    new-instance v7, Lorg/briarproject/bramble/sync/SyncSessionFactoryImpl;

    move-object v0, v7

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    move-object v6, p6

    invoke-direct/range {v0 .. v6}, Lorg/briarproject/bramble/sync/SyncSessionFactoryImpl;-><init>(Lorg/briarproject/bramble/api/db/DatabaseComponent;Ljava/util/concurrent/Executor;Lorg/briarproject/bramble/api/event/EventBus;Lorg/briarproject/bramble/api/system/Clock;Lorg/briarproject/bramble/api/sync/SyncRecordReaderFactory;Lorg/briarproject/bramble/api/sync/SyncRecordWriterFactory;)V

    return-object v7
.end method

.method provideValidationExecutor(Ljava/util/concurrent/Executor;)Ljava/util/concurrent/Executor;
    .locals 3
    .param p1    # Ljava/util/concurrent/Executor;
        .annotation runtime Lorg/briarproject/bramble/api/crypto/CryptoExecutor;
        .end annotation
    .end param
    .annotation runtime Ldagger/Provides;
    .end annotation

    .annotation runtime Lorg/briarproject/bramble/sync/ValidationExecutor;
    .end annotation

    .line 91
    new-instance v0, Lorg/briarproject/bramble/PoliteExecutor;

    const-string v1, "ValidationExecutor"

    sget v2, Lorg/briarproject/bramble/sync/SyncModule;->MAX_CONCURRENT_VALIDATION_TASKS:I

    invoke-direct {v0, v1, p1, v2}, Lorg/briarproject/bramble/PoliteExecutor;-><init>(Ljava/lang/String;Ljava/util/concurrent/Executor;I)V

    return-object v0
.end method

.method provideValidationManager(Lorg/briarproject/bramble/api/lifecycle/LifecycleManager;Lorg/briarproject/bramble/api/event/EventBus;Lorg/briarproject/bramble/sync/ValidationManagerImpl;)Lorg/briarproject/bramble/api/sync/ValidationManager;
    .locals 0
    .annotation runtime Ldagger/Provides;
    .end annotation

    .line 81
    invoke-interface {p1, p3}, Lorg/briarproject/bramble/api/lifecycle/LifecycleManager;->registerService(Lorg/briarproject/bramble/api/lifecycle/Service;)V

    .line 82
    invoke-interface {p2, p3}, Lorg/briarproject/bramble/api/event/EventBus;->addListener(Lorg/briarproject/bramble/api/event/EventListener;)V

    return-object p3
.end method
