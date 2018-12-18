.class Lorg/briarproject/bramble/transport/TransportKeyManagerFactoryImpl;
.super Ljava/lang/Object;
.source "TransportKeyManagerFactoryImpl.java"

# interfaces
.implements Lorg/briarproject/bramble/transport/TransportKeyManagerFactory;


# annotations
.annotation runtime Lorg/briarproject/bramble/api/nullsafety/NotNullByDefault;
.end annotation


# instance fields
.field private final clock:Lorg/briarproject/bramble/api/system/Clock;

.field private final db:Lorg/briarproject/bramble/api/db/DatabaseComponent;

.field private final dbExecutor:Ljava/util/concurrent/Executor;

.field private final scheduler:Ljava/util/concurrent/ScheduledExecutorService;

.field private final transportCrypto:Lorg/briarproject/bramble/api/crypto/TransportCrypto;


# direct methods
.method constructor <init>(Lorg/briarproject/bramble/api/db/DatabaseComponent;Lorg/briarproject/bramble/api/crypto/TransportCrypto;Ljava/util/concurrent/Executor;Ljava/util/concurrent/ScheduledExecutorService;Lorg/briarproject/bramble/api/system/Clock;)V
    .locals 0
    .param p3    # Ljava/util/concurrent/Executor;
        .annotation runtime Lorg/briarproject/bramble/api/db/DatabaseExecutor;
        .end annotation
    .end param
    .param p4    # Ljava/util/concurrent/ScheduledExecutorService;
        .annotation runtime Lorg/briarproject/bramble/api/system/Scheduler;
        .end annotation
    .end param

    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 33
    iput-object p1, p0, Lorg/briarproject/bramble/transport/TransportKeyManagerFactoryImpl;->db:Lorg/briarproject/bramble/api/db/DatabaseComponent;

    .line 34
    iput-object p2, p0, Lorg/briarproject/bramble/transport/TransportKeyManagerFactoryImpl;->transportCrypto:Lorg/briarproject/bramble/api/crypto/TransportCrypto;

    .line 35
    iput-object p3, p0, Lorg/briarproject/bramble/transport/TransportKeyManagerFactoryImpl;->dbExecutor:Ljava/util/concurrent/Executor;

    .line 36
    iput-object p4, p0, Lorg/briarproject/bramble/transport/TransportKeyManagerFactoryImpl;->scheduler:Ljava/util/concurrent/ScheduledExecutorService;

    .line 37
    iput-object p5, p0, Lorg/briarproject/bramble/transport/TransportKeyManagerFactoryImpl;->clock:Lorg/briarproject/bramble/api/system/Clock;

    return-void
.end method


# virtual methods
.method public createTransportKeyManager(Lorg/briarproject/bramble/api/plugin/TransportId;J)Lorg/briarproject/bramble/transport/TransportKeyManager;
    .locals 10

    .line 43
    new-instance v9, Lorg/briarproject/bramble/transport/TransportKeyManagerImpl;

    iget-object v1, p0, Lorg/briarproject/bramble/transport/TransportKeyManagerFactoryImpl;->db:Lorg/briarproject/bramble/api/db/DatabaseComponent;

    iget-object v2, p0, Lorg/briarproject/bramble/transport/TransportKeyManagerFactoryImpl;->transportCrypto:Lorg/briarproject/bramble/api/crypto/TransportCrypto;

    iget-object v3, p0, Lorg/briarproject/bramble/transport/TransportKeyManagerFactoryImpl;->dbExecutor:Ljava/util/concurrent/Executor;

    iget-object v4, p0, Lorg/briarproject/bramble/transport/TransportKeyManagerFactoryImpl;->scheduler:Ljava/util/concurrent/ScheduledExecutorService;

    iget-object v5, p0, Lorg/briarproject/bramble/transport/TransportKeyManagerFactoryImpl;->clock:Lorg/briarproject/bramble/api/system/Clock;

    move-object v0, v9

    move-object v6, p1

    move-wide v7, p2

    invoke-direct/range {v0 .. v8}, Lorg/briarproject/bramble/transport/TransportKeyManagerImpl;-><init>(Lorg/briarproject/bramble/api/db/DatabaseComponent;Lorg/briarproject/bramble/api/crypto/TransportCrypto;Ljava/util/concurrent/Executor;Ljava/util/concurrent/ScheduledExecutorService;Lorg/briarproject/bramble/api/system/Clock;Lorg/briarproject/bramble/api/plugin/TransportId;J)V

    return-object v9
.end method
