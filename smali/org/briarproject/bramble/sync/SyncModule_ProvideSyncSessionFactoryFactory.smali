.class public final Lorg/briarproject/bramble/sync/SyncModule_ProvideSyncSessionFactoryFactory;
.super Ljava/lang/Object;
.source "SyncModule_ProvideSyncSessionFactoryFactory.java"

# interfaces
.implements Ldagger/internal/Factory;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ldagger/internal/Factory<",
        "Lorg/briarproject/bramble/api/sync/SyncSessionFactory;",
        ">;"
    }
.end annotation


# instance fields
.field private final clockProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lorg/briarproject/bramble/api/system/Clock;",
            ">;"
        }
    .end annotation
.end field

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

.field private final eventBusProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lorg/briarproject/bramble/api/event/EventBus;",
            ">;"
        }
    .end annotation
.end field

.field private final module:Lorg/briarproject/bramble/sync/SyncModule;

.field private final recordReaderFactoryProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lorg/briarproject/bramble/api/sync/SyncRecordReaderFactory;",
            ">;"
        }
    .end annotation
.end field

.field private final recordWriterFactoryProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lorg/briarproject/bramble/api/sync/SyncRecordWriterFactory;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lorg/briarproject/bramble/sync/SyncModule;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/briarproject/bramble/sync/SyncModule;",
            "Ljavax/inject/Provider<",
            "Lorg/briarproject/bramble/api/db/DatabaseComponent;",
            ">;",
            "Ljavax/inject/Provider<",
            "Ljava/util/concurrent/Executor;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lorg/briarproject/bramble/api/event/EventBus;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lorg/briarproject/bramble/api/system/Clock;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lorg/briarproject/bramble/api/sync/SyncRecordReaderFactory;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lorg/briarproject/bramble/api/sync/SyncRecordWriterFactory;",
            ">;)V"
        }
    .end annotation

    .line 42
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 43
    iput-object p1, p0, Lorg/briarproject/bramble/sync/SyncModule_ProvideSyncSessionFactoryFactory;->module:Lorg/briarproject/bramble/sync/SyncModule;

    .line 44
    iput-object p2, p0, Lorg/briarproject/bramble/sync/SyncModule_ProvideSyncSessionFactoryFactory;->dbProvider:Ljavax/inject/Provider;

    .line 45
    iput-object p3, p0, Lorg/briarproject/bramble/sync/SyncModule_ProvideSyncSessionFactoryFactory;->dbExecutorProvider:Ljavax/inject/Provider;

    .line 46
    iput-object p4, p0, Lorg/briarproject/bramble/sync/SyncModule_ProvideSyncSessionFactoryFactory;->eventBusProvider:Ljavax/inject/Provider;

    .line 47
    iput-object p5, p0, Lorg/briarproject/bramble/sync/SyncModule_ProvideSyncSessionFactoryFactory;->clockProvider:Ljavax/inject/Provider;

    .line 48
    iput-object p6, p0, Lorg/briarproject/bramble/sync/SyncModule_ProvideSyncSessionFactoryFactory;->recordReaderFactoryProvider:Ljavax/inject/Provider;

    .line 49
    iput-object p7, p0, Lorg/briarproject/bramble/sync/SyncModule_ProvideSyncSessionFactoryFactory;->recordWriterFactoryProvider:Ljavax/inject/Provider;

    return-void
.end method

.method public static create(Lorg/briarproject/bramble/sync/SyncModule;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)Lorg/briarproject/bramble/sync/SyncModule_ProvideSyncSessionFactoryFactory;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/briarproject/bramble/sync/SyncModule;",
            "Ljavax/inject/Provider<",
            "Lorg/briarproject/bramble/api/db/DatabaseComponent;",
            ">;",
            "Ljavax/inject/Provider<",
            "Ljava/util/concurrent/Executor;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lorg/briarproject/bramble/api/event/EventBus;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lorg/briarproject/bramble/api/system/Clock;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lorg/briarproject/bramble/api/sync/SyncRecordReaderFactory;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lorg/briarproject/bramble/api/sync/SyncRecordWriterFactory;",
            ">;)",
            "Lorg/briarproject/bramble/sync/SyncModule_ProvideSyncSessionFactoryFactory;"
        }
    .end annotation

    .line 90
    new-instance v8, Lorg/briarproject/bramble/sync/SyncModule_ProvideSyncSessionFactoryFactory;

    move-object v0, v8

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    move-object v6, p5

    move-object v7, p6

    invoke-direct/range {v0 .. v7}, Lorg/briarproject/bramble/sync/SyncModule_ProvideSyncSessionFactoryFactory;-><init>(Lorg/briarproject/bramble/sync/SyncModule;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)V

    return-object v8
.end method

.method public static provideInstance(Lorg/briarproject/bramble/sync/SyncModule;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)Lorg/briarproject/bramble/api/sync/SyncSessionFactory;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/briarproject/bramble/sync/SyncModule;",
            "Ljavax/inject/Provider<",
            "Lorg/briarproject/bramble/api/db/DatabaseComponent;",
            ">;",
            "Ljavax/inject/Provider<",
            "Ljava/util/concurrent/Executor;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lorg/briarproject/bramble/api/event/EventBus;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lorg/briarproject/bramble/api/system/Clock;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lorg/briarproject/bramble/api/sync/SyncRecordReaderFactory;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lorg/briarproject/bramble/api/sync/SyncRecordWriterFactory;",
            ">;)",
            "Lorg/briarproject/bramble/api/sync/SyncSessionFactory;"
        }
    .end annotation

    .line 74
    invoke-interface {p1}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object p1

    move-object v1, p1

    check-cast v1, Lorg/briarproject/bramble/api/db/DatabaseComponent;

    .line 75
    invoke-interface {p2}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object p1

    move-object v2, p1

    check-cast v2, Ljava/util/concurrent/Executor;

    .line 76
    invoke-interface {p3}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object p1

    move-object v3, p1

    check-cast v3, Lorg/briarproject/bramble/api/event/EventBus;

    .line 77
    invoke-interface {p4}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object p1

    move-object v4, p1

    check-cast v4, Lorg/briarproject/bramble/api/system/Clock;

    .line 78
    invoke-interface {p5}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object p1

    move-object v5, p1

    check-cast v5, Lorg/briarproject/bramble/api/sync/SyncRecordReaderFactory;

    .line 79
    invoke-interface {p6}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object p1

    move-object v6, p1

    check-cast v6, Lorg/briarproject/bramble/api/sync/SyncRecordWriterFactory;

    move-object v0, p0

    .line 72
    invoke-static/range {v0 .. v6}, Lorg/briarproject/bramble/sync/SyncModule_ProvideSyncSessionFactoryFactory;->proxyProvideSyncSessionFactory(Lorg/briarproject/bramble/sync/SyncModule;Lorg/briarproject/bramble/api/db/DatabaseComponent;Ljava/util/concurrent/Executor;Lorg/briarproject/bramble/api/event/EventBus;Lorg/briarproject/bramble/api/system/Clock;Lorg/briarproject/bramble/api/sync/SyncRecordReaderFactory;Lorg/briarproject/bramble/api/sync/SyncRecordWriterFactory;)Lorg/briarproject/bramble/api/sync/SyncSessionFactory;

    move-result-object p0

    return-object p0
.end method

.method public static proxyProvideSyncSessionFactory(Lorg/briarproject/bramble/sync/SyncModule;Lorg/briarproject/bramble/api/db/DatabaseComponent;Ljava/util/concurrent/Executor;Lorg/briarproject/bramble/api/event/EventBus;Lorg/briarproject/bramble/api/system/Clock;Lorg/briarproject/bramble/api/sync/SyncRecordReaderFactory;Lorg/briarproject/bramble/api/sync/SyncRecordWriterFactory;)Lorg/briarproject/bramble/api/sync/SyncSessionFactory;
    .locals 0

    .line 109
    invoke-virtual/range {p0 .. p6}, Lorg/briarproject/bramble/sync/SyncModule;->provideSyncSessionFactory(Lorg/briarproject/bramble/api/db/DatabaseComponent;Ljava/util/concurrent/Executor;Lorg/briarproject/bramble/api/event/EventBus;Lorg/briarproject/bramble/api/system/Clock;Lorg/briarproject/bramble/api/sync/SyncRecordReaderFactory;Lorg/briarproject/bramble/api/sync/SyncRecordWriterFactory;)Lorg/briarproject/bramble/api/sync/SyncSessionFactory;

    move-result-object p0

    const-string p1, "Cannot return null from a non-@Nullable @Provides method"

    .line 108
    invoke-static {p0, p1}, Ldagger/internal/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lorg/briarproject/bramble/api/sync/SyncSessionFactory;

    return-object p0
.end method


# virtual methods
.method public bridge synthetic get()Ljava/lang/Object;
    .locals 1

    .line 15
    invoke-virtual {p0}, Lorg/briarproject/bramble/sync/SyncModule_ProvideSyncSessionFactoryFactory;->get()Lorg/briarproject/bramble/api/sync/SyncSessionFactory;

    move-result-object v0

    return-object v0
.end method

.method public get()Lorg/briarproject/bramble/api/sync/SyncSessionFactory;
    .locals 7

    .line 54
    iget-object v0, p0, Lorg/briarproject/bramble/sync/SyncModule_ProvideSyncSessionFactoryFactory;->module:Lorg/briarproject/bramble/sync/SyncModule;

    iget-object v1, p0, Lorg/briarproject/bramble/sync/SyncModule_ProvideSyncSessionFactoryFactory;->dbProvider:Ljavax/inject/Provider;

    iget-object v2, p0, Lorg/briarproject/bramble/sync/SyncModule_ProvideSyncSessionFactoryFactory;->dbExecutorProvider:Ljavax/inject/Provider;

    iget-object v3, p0, Lorg/briarproject/bramble/sync/SyncModule_ProvideSyncSessionFactoryFactory;->eventBusProvider:Ljavax/inject/Provider;

    iget-object v4, p0, Lorg/briarproject/bramble/sync/SyncModule_ProvideSyncSessionFactoryFactory;->clockProvider:Ljavax/inject/Provider;

    iget-object v5, p0, Lorg/briarproject/bramble/sync/SyncModule_ProvideSyncSessionFactoryFactory;->recordReaderFactoryProvider:Ljavax/inject/Provider;

    iget-object v6, p0, Lorg/briarproject/bramble/sync/SyncModule_ProvideSyncSessionFactoryFactory;->recordWriterFactoryProvider:Ljavax/inject/Provider;

    invoke-static/range {v0 .. v6}, Lorg/briarproject/bramble/sync/SyncModule_ProvideSyncSessionFactoryFactory;->provideInstance(Lorg/briarproject/bramble/sync/SyncModule;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)Lorg/briarproject/bramble/api/sync/SyncSessionFactory;

    move-result-object v0

    return-object v0
.end method
