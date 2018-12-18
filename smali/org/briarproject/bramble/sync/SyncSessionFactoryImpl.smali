.class Lorg/briarproject/bramble/sync/SyncSessionFactoryImpl;
.super Ljava/lang/Object;
.source "SyncSessionFactoryImpl.java"

# interfaces
.implements Lorg/briarproject/bramble/api/sync/SyncSessionFactory;


# annotations
.annotation runtime Lorg/briarproject/bramble/api/nullsafety/NotNullByDefault;
.end annotation


# instance fields
.field private final clock:Lorg/briarproject/bramble/api/system/Clock;

.field private final db:Lorg/briarproject/bramble/api/db/DatabaseComponent;

.field private final dbExecutor:Ljava/util/concurrent/Executor;

.field private final eventBus:Lorg/briarproject/bramble/api/event/EventBus;

.field private final recordReaderFactory:Lorg/briarproject/bramble/api/sync/SyncRecordReaderFactory;

.field private final recordWriterFactory:Lorg/briarproject/bramble/api/sync/SyncRecordWriterFactory;


# direct methods
.method constructor <init>(Lorg/briarproject/bramble/api/db/DatabaseComponent;Ljava/util/concurrent/Executor;Lorg/briarproject/bramble/api/event/EventBus;Lorg/briarproject/bramble/api/system/Clock;Lorg/briarproject/bramble/api/sync/SyncRecordReaderFactory;Lorg/briarproject/bramble/api/sync/SyncRecordWriterFactory;)V
    .locals 0
    .param p2    # Ljava/util/concurrent/Executor;
        .annotation runtime Lorg/briarproject/bramble/api/db/DatabaseExecutor;
        .end annotation
    .end param

    .line 39
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 40
    iput-object p1, p0, Lorg/briarproject/bramble/sync/SyncSessionFactoryImpl;->db:Lorg/briarproject/bramble/api/db/DatabaseComponent;

    .line 41
    iput-object p2, p0, Lorg/briarproject/bramble/sync/SyncSessionFactoryImpl;->dbExecutor:Ljava/util/concurrent/Executor;

    .line 42
    iput-object p3, p0, Lorg/briarproject/bramble/sync/SyncSessionFactoryImpl;->eventBus:Lorg/briarproject/bramble/api/event/EventBus;

    .line 43
    iput-object p4, p0, Lorg/briarproject/bramble/sync/SyncSessionFactoryImpl;->clock:Lorg/briarproject/bramble/api/system/Clock;

    .line 44
    iput-object p5, p0, Lorg/briarproject/bramble/sync/SyncSessionFactoryImpl;->recordReaderFactory:Lorg/briarproject/bramble/api/sync/SyncRecordReaderFactory;

    .line 45
    iput-object p6, p0, Lorg/briarproject/bramble/sync/SyncSessionFactoryImpl;->recordWriterFactory:Lorg/briarproject/bramble/api/sync/SyncRecordWriterFactory;

    return-void
.end method


# virtual methods
.method public createDuplexOutgoingSession(Lorg/briarproject/bramble/api/contact/ContactId;IILorg/briarproject/bramble/api/transport/StreamWriter;)Lorg/briarproject/bramble/api/sync/SyncSession;
    .locals 13

    move-object v0, p0

    .line 68
    invoke-interface/range {p4 .. p4}, Lorg/briarproject/bramble/api/transport/StreamWriter;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v1

    .line 69
    iget-object v2, v0, Lorg/briarproject/bramble/sync/SyncSessionFactoryImpl;->recordWriterFactory:Lorg/briarproject/bramble/api/sync/SyncRecordWriterFactory;

    .line 70
    invoke-interface {v2, v1}, Lorg/briarproject/bramble/api/sync/SyncRecordWriterFactory;->createRecordWriter(Ljava/io/OutputStream;)Lorg/briarproject/bramble/api/sync/SyncRecordWriter;

    move-result-object v12

    .line 71
    new-instance v1, Lorg/briarproject/bramble/sync/DuplexOutgoingSession;

    iget-object v4, v0, Lorg/briarproject/bramble/sync/SyncSessionFactoryImpl;->db:Lorg/briarproject/bramble/api/db/DatabaseComponent;

    iget-object v5, v0, Lorg/briarproject/bramble/sync/SyncSessionFactoryImpl;->dbExecutor:Ljava/util/concurrent/Executor;

    iget-object v6, v0, Lorg/briarproject/bramble/sync/SyncSessionFactoryImpl;->eventBus:Lorg/briarproject/bramble/api/event/EventBus;

    iget-object v7, v0, Lorg/briarproject/bramble/sync/SyncSessionFactoryImpl;->clock:Lorg/briarproject/bramble/api/system/Clock;

    move-object v3, v1

    move-object v8, p1

    move v9, p2

    move/from16 v10, p3

    move-object/from16 v11, p4

    invoke-direct/range {v3 .. v12}, Lorg/briarproject/bramble/sync/DuplexOutgoingSession;-><init>(Lorg/briarproject/bramble/api/db/DatabaseComponent;Ljava/util/concurrent/Executor;Lorg/briarproject/bramble/api/event/EventBus;Lorg/briarproject/bramble/api/system/Clock;Lorg/briarproject/bramble/api/contact/ContactId;IILorg/briarproject/bramble/api/transport/StreamWriter;Lorg/briarproject/bramble/api/sync/SyncRecordWriter;)V

    return-object v1
.end method

.method public createIncomingSession(Lorg/briarproject/bramble/api/contact/ContactId;Ljava/io/InputStream;)Lorg/briarproject/bramble/api/sync/SyncSession;
    .locals 7

    .line 50
    iget-object v0, p0, Lorg/briarproject/bramble/sync/SyncSessionFactoryImpl;->recordReaderFactory:Lorg/briarproject/bramble/api/sync/SyncRecordReaderFactory;

    .line 51
    invoke-interface {v0, p2}, Lorg/briarproject/bramble/api/sync/SyncRecordReaderFactory;->createRecordReader(Ljava/io/InputStream;)Lorg/briarproject/bramble/api/sync/SyncRecordReader;

    move-result-object v6

    .line 52
    new-instance p2, Lorg/briarproject/bramble/sync/IncomingSession;

    iget-object v2, p0, Lorg/briarproject/bramble/sync/SyncSessionFactoryImpl;->db:Lorg/briarproject/bramble/api/db/DatabaseComponent;

    iget-object v3, p0, Lorg/briarproject/bramble/sync/SyncSessionFactoryImpl;->dbExecutor:Ljava/util/concurrent/Executor;

    iget-object v4, p0, Lorg/briarproject/bramble/sync/SyncSessionFactoryImpl;->eventBus:Lorg/briarproject/bramble/api/event/EventBus;

    move-object v1, p2

    move-object v5, p1

    invoke-direct/range {v1 .. v6}, Lorg/briarproject/bramble/sync/IncomingSession;-><init>(Lorg/briarproject/bramble/api/db/DatabaseComponent;Ljava/util/concurrent/Executor;Lorg/briarproject/bramble/api/event/EventBus;Lorg/briarproject/bramble/api/contact/ContactId;Lorg/briarproject/bramble/api/sync/SyncRecordReader;)V

    return-object p2
.end method

.method public createSimplexOutgoingSession(Lorg/briarproject/bramble/api/contact/ContactId;ILorg/briarproject/bramble/api/transport/StreamWriter;)Lorg/briarproject/bramble/api/sync/SyncSession;
    .locals 10

    .line 58
    invoke-interface {p3}, Lorg/briarproject/bramble/api/transport/StreamWriter;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v0

    .line 59
    iget-object v1, p0, Lorg/briarproject/bramble/sync/SyncSessionFactoryImpl;->recordWriterFactory:Lorg/briarproject/bramble/api/sync/SyncRecordWriterFactory;

    .line 60
    invoke-interface {v1, v0}, Lorg/briarproject/bramble/api/sync/SyncRecordWriterFactory;->createRecordWriter(Ljava/io/OutputStream;)Lorg/briarproject/bramble/api/sync/SyncRecordWriter;

    move-result-object v9

    .line 61
    new-instance v0, Lorg/briarproject/bramble/sync/SimplexOutgoingSession;

    iget-object v3, p0, Lorg/briarproject/bramble/sync/SyncSessionFactoryImpl;->db:Lorg/briarproject/bramble/api/db/DatabaseComponent;

    iget-object v4, p0, Lorg/briarproject/bramble/sync/SyncSessionFactoryImpl;->dbExecutor:Ljava/util/concurrent/Executor;

    iget-object v5, p0, Lorg/briarproject/bramble/sync/SyncSessionFactoryImpl;->eventBus:Lorg/briarproject/bramble/api/event/EventBus;

    move-object v2, v0

    move-object v6, p1

    move v7, p2

    move-object v8, p3

    invoke-direct/range {v2 .. v9}, Lorg/briarproject/bramble/sync/SimplexOutgoingSession;-><init>(Lorg/briarproject/bramble/api/db/DatabaseComponent;Ljava/util/concurrent/Executor;Lorg/briarproject/bramble/api/event/EventBus;Lorg/briarproject/bramble/api/contact/ContactId;ILorg/briarproject/bramble/api/transport/StreamWriter;Lorg/briarproject/bramble/api/sync/SyncRecordWriter;)V

    return-object v0
.end method
