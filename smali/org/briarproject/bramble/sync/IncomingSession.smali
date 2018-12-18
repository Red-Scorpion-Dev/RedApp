.class Lorg/briarproject/bramble/sync/IncomingSession;
.super Ljava/lang/Object;
.source "IncomingSession.java"

# interfaces
.implements Lorg/briarproject/bramble/api/event/EventListener;
.implements Lorg/briarproject/bramble/api/sync/SyncSession;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/briarproject/bramble/sync/IncomingSession$ReceiveRequest;,
        Lorg/briarproject/bramble/sync/IncomingSession$ReceiveOffer;,
        Lorg/briarproject/bramble/sync/IncomingSession$ReceiveMessage;,
        Lorg/briarproject/bramble/sync/IncomingSession$ReceiveAck;
    }
.end annotation

.annotation runtime Lorg/briarproject/bramble/api/nullsafety/NotNullByDefault;
.end annotation


# static fields
.field private static final LOG:Ljava/util/logging/Logger;


# instance fields
.field private final contactId:Lorg/briarproject/bramble/api/contact/ContactId;

.field private final db:Lorg/briarproject/bramble/api/db/DatabaseComponent;

.field private final dbExecutor:Ljava/util/concurrent/Executor;

.field private final eventBus:Lorg/briarproject/bramble/api/event/EventBus;

.field private volatile interrupted:Z

.field private final recordReader:Lorg/briarproject/bramble/api/sync/SyncRecordReader;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 39
    const-class v0, Lorg/briarproject/bramble/sync/IncomingSession;

    .line 40
    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/logging/Logger;->getLogger(Ljava/lang/String;)Ljava/util/logging/Logger;

    move-result-object v0

    sput-object v0, Lorg/briarproject/bramble/sync/IncomingSession;->LOG:Ljava/util/logging/Logger;

    return-void
.end method

.method constructor <init>(Lorg/briarproject/bramble/api/db/DatabaseComponent;Ljava/util/concurrent/Executor;Lorg/briarproject/bramble/api/event/EventBus;Lorg/briarproject/bramble/api/contact/ContactId;Lorg/briarproject/bramble/api/sync/SyncRecordReader;)V
    .locals 1

    .line 52
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 48
    iput-boolean v0, p0, Lorg/briarproject/bramble/sync/IncomingSession;->interrupted:Z

    .line 53
    iput-object p1, p0, Lorg/briarproject/bramble/sync/IncomingSession;->db:Lorg/briarproject/bramble/api/db/DatabaseComponent;

    .line 54
    iput-object p2, p0, Lorg/briarproject/bramble/sync/IncomingSession;->dbExecutor:Ljava/util/concurrent/Executor;

    .line 55
    iput-object p3, p0, Lorg/briarproject/bramble/sync/IncomingSession;->eventBus:Lorg/briarproject/bramble/api/event/EventBus;

    .line 56
    iput-object p4, p0, Lorg/briarproject/bramble/sync/IncomingSession;->contactId:Lorg/briarproject/bramble/api/contact/ContactId;

    .line 57
    iput-object p5, p0, Lorg/briarproject/bramble/sync/IncomingSession;->recordReader:Lorg/briarproject/bramble/api/sync/SyncRecordReader;

    return-void
.end method

.method static synthetic access$400(Lorg/briarproject/bramble/sync/IncomingSession;)Lorg/briarproject/bramble/api/db/DatabaseComponent;
    .locals 0

    .line 37
    iget-object p0, p0, Lorg/briarproject/bramble/sync/IncomingSession;->db:Lorg/briarproject/bramble/api/db/DatabaseComponent;

    return-object p0
.end method

.method static synthetic access$500()Ljava/util/logging/Logger;
    .locals 1

    .line 37
    sget-object v0, Lorg/briarproject/bramble/sync/IncomingSession;->LOG:Ljava/util/logging/Logger;

    return-object v0
.end method

.method static synthetic access$600(Lorg/briarproject/bramble/sync/IncomingSession;)Lorg/briarproject/bramble/api/contact/ContactId;
    .locals 0

    .line 37
    iget-object p0, p0, Lorg/briarproject/bramble/sync/IncomingSession;->contactId:Lorg/briarproject/bramble/api/contact/ContactId;

    return-object p0
.end method


# virtual methods
.method public eventOccurred(Lorg/briarproject/bramble/api/event/Event;)V
    .locals 1

    .line 101
    instance-of v0, p1, Lorg/briarproject/bramble/api/contact/event/ContactRemovedEvent;

    if-eqz v0, :cond_0

    .line 102
    check-cast p1, Lorg/briarproject/bramble/api/contact/event/ContactRemovedEvent;

    .line 103
    invoke-virtual {p1}, Lorg/briarproject/bramble/api/contact/event/ContactRemovedEvent;->getContactId()Lorg/briarproject/bramble/api/contact/ContactId;

    move-result-object p1

    iget-object v0, p0, Lorg/briarproject/bramble/sync/IncomingSession;->contactId:Lorg/briarproject/bramble/api/contact/ContactId;

    invoke-virtual {p1, v0}, Lorg/briarproject/bramble/api/contact/ContactId;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    invoke-virtual {p0}, Lorg/briarproject/bramble/sync/IncomingSession;->interrupt()V

    goto :goto_0

    .line 104
    :cond_0
    instance-of v0, p1, Lorg/briarproject/bramble/api/lifecycle/event/LifecycleEvent;

    if-eqz v0, :cond_1

    .line 105
    check-cast p1, Lorg/briarproject/bramble/api/lifecycle/event/LifecycleEvent;

    .line 106
    invoke-virtual {p1}, Lorg/briarproject/bramble/api/lifecycle/event/LifecycleEvent;->getLifecycleState()Lorg/briarproject/bramble/api/lifecycle/LifecycleManager$LifecycleState;

    move-result-object p1

    sget-object v0, Lorg/briarproject/bramble/api/lifecycle/LifecycleManager$LifecycleState;->STOPPING:Lorg/briarproject/bramble/api/lifecycle/LifecycleManager$LifecycleState;

    if-ne p1, v0, :cond_1

    invoke-virtual {p0}, Lorg/briarproject/bramble/sync/IncomingSession;->interrupt()V

    :cond_1
    :goto_0
    return-void
.end method

.method public interrupt()V
    .locals 1

    const/4 v0, 0x1

    .line 96
    iput-boolean v0, p0, Lorg/briarproject/bramble/sync/IncomingSession;->interrupted:Z

    return-void
.end method

.method public run()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .annotation runtime Lorg/briarproject/bramble/api/lifecycle/IoExecutor;
    .end annotation

    .line 63
    iget-object v0, p0, Lorg/briarproject/bramble/sync/IncomingSession;->eventBus:Lorg/briarproject/bramble/api/event/EventBus;

    invoke-interface {v0, p0}, Lorg/briarproject/bramble/api/event/EventBus;->addListener(Lorg/briarproject/bramble/api/event/EventListener;)V

    .line 66
    :goto_0
    :try_start_0
    iget-boolean v0, p0, Lorg/briarproject/bramble/sync/IncomingSession;->interrupted:Z

    if-nez v0, :cond_5

    .line 67
    iget-object v0, p0, Lorg/briarproject/bramble/sync/IncomingSession;->recordReader:Lorg/briarproject/bramble/api/sync/SyncRecordReader;

    invoke-interface {v0}, Lorg/briarproject/bramble/api/sync/SyncRecordReader;->eof()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 68
    sget-object v0, Lorg/briarproject/bramble/sync/IncomingSession;->LOG:Ljava/util/logging/Logger;

    const-string v1, "End of stream"

    invoke-virtual {v0, v1}, Ljava/util/logging/Logger;->info(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 89
    iget-object v0, p0, Lorg/briarproject/bramble/sync/IncomingSession;->eventBus:Lorg/briarproject/bramble/api/event/EventBus;

    invoke-interface {v0, p0}, Lorg/briarproject/bramble/api/event/EventBus;->removeListener(Lorg/briarproject/bramble/api/event/EventListener;)V

    return-void

    .line 71
    :cond_0
    :try_start_1
    iget-object v0, p0, Lorg/briarproject/bramble/sync/IncomingSession;->recordReader:Lorg/briarproject/bramble/api/sync/SyncRecordReader;

    invoke-interface {v0}, Lorg/briarproject/bramble/api/sync/SyncRecordReader;->hasAck()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    .line 72
    iget-object v0, p0, Lorg/briarproject/bramble/sync/IncomingSession;->recordReader:Lorg/briarproject/bramble/api/sync/SyncRecordReader;

    invoke-interface {v0}, Lorg/briarproject/bramble/api/sync/SyncRecordReader;->readAck()Lorg/briarproject/bramble/api/sync/Ack;

    move-result-object v0

    .line 73
    iget-object v2, p0, Lorg/briarproject/bramble/sync/IncomingSession;->dbExecutor:Ljava/util/concurrent/Executor;

    new-instance v3, Lorg/briarproject/bramble/sync/IncomingSession$ReceiveAck;

    invoke-direct {v3, p0, v0, v1}, Lorg/briarproject/bramble/sync/IncomingSession$ReceiveAck;-><init>(Lorg/briarproject/bramble/sync/IncomingSession;Lorg/briarproject/bramble/api/sync/Ack;Lorg/briarproject/bramble/sync/IncomingSession$1;)V

    invoke-interface {v2, v3}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    goto :goto_0

    .line 74
    :cond_1
    iget-object v0, p0, Lorg/briarproject/bramble/sync/IncomingSession;->recordReader:Lorg/briarproject/bramble/api/sync/SyncRecordReader;

    invoke-interface {v0}, Lorg/briarproject/bramble/api/sync/SyncRecordReader;->hasMessage()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 75
    iget-object v0, p0, Lorg/briarproject/bramble/sync/IncomingSession;->recordReader:Lorg/briarproject/bramble/api/sync/SyncRecordReader;

    invoke-interface {v0}, Lorg/briarproject/bramble/api/sync/SyncRecordReader;->readMessage()Lorg/briarproject/bramble/api/sync/Message;

    move-result-object v0

    .line 76
    iget-object v2, p0, Lorg/briarproject/bramble/sync/IncomingSession;->dbExecutor:Ljava/util/concurrent/Executor;

    new-instance v3, Lorg/briarproject/bramble/sync/IncomingSession$ReceiveMessage;

    invoke-direct {v3, p0, v0, v1}, Lorg/briarproject/bramble/sync/IncomingSession$ReceiveMessage;-><init>(Lorg/briarproject/bramble/sync/IncomingSession;Lorg/briarproject/bramble/api/sync/Message;Lorg/briarproject/bramble/sync/IncomingSession$1;)V

    invoke-interface {v2, v3}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    goto :goto_0

    .line 77
    :cond_2
    iget-object v0, p0, Lorg/briarproject/bramble/sync/IncomingSession;->recordReader:Lorg/briarproject/bramble/api/sync/SyncRecordReader;

    invoke-interface {v0}, Lorg/briarproject/bramble/api/sync/SyncRecordReader;->hasOffer()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 78
    iget-object v0, p0, Lorg/briarproject/bramble/sync/IncomingSession;->recordReader:Lorg/briarproject/bramble/api/sync/SyncRecordReader;

    invoke-interface {v0}, Lorg/briarproject/bramble/api/sync/SyncRecordReader;->readOffer()Lorg/briarproject/bramble/api/sync/Offer;

    move-result-object v0

    .line 79
    iget-object v2, p0, Lorg/briarproject/bramble/sync/IncomingSession;->dbExecutor:Ljava/util/concurrent/Executor;

    new-instance v3, Lorg/briarproject/bramble/sync/IncomingSession$ReceiveOffer;

    invoke-direct {v3, p0, v0, v1}, Lorg/briarproject/bramble/sync/IncomingSession$ReceiveOffer;-><init>(Lorg/briarproject/bramble/sync/IncomingSession;Lorg/briarproject/bramble/api/sync/Offer;Lorg/briarproject/bramble/sync/IncomingSession$1;)V

    invoke-interface {v2, v3}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    goto :goto_0

    .line 80
    :cond_3
    iget-object v0, p0, Lorg/briarproject/bramble/sync/IncomingSession;->recordReader:Lorg/briarproject/bramble/api/sync/SyncRecordReader;

    invoke-interface {v0}, Lorg/briarproject/bramble/api/sync/SyncRecordReader;->hasRequest()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 81
    iget-object v0, p0, Lorg/briarproject/bramble/sync/IncomingSession;->recordReader:Lorg/briarproject/bramble/api/sync/SyncRecordReader;

    invoke-interface {v0}, Lorg/briarproject/bramble/api/sync/SyncRecordReader;->readRequest()Lorg/briarproject/bramble/api/sync/Request;

    move-result-object v0

    .line 82
    iget-object v2, p0, Lorg/briarproject/bramble/sync/IncomingSession;->dbExecutor:Ljava/util/concurrent/Executor;

    new-instance v3, Lorg/briarproject/bramble/sync/IncomingSession$ReceiveRequest;

    invoke-direct {v3, p0, v0, v1}, Lorg/briarproject/bramble/sync/IncomingSession$ReceiveRequest;-><init>(Lorg/briarproject/bramble/sync/IncomingSession;Lorg/briarproject/bramble/api/sync/Request;Lorg/briarproject/bramble/sync/IncomingSession$1;)V

    invoke-interface {v2, v3}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    goto :goto_0

    .line 85
    :cond_4
    new-instance v0, Lorg/briarproject/bramble/api/FormatException;

    invoke-direct {v0}, Lorg/briarproject/bramble/api/FormatException;-><init>()V

    throw v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 89
    :cond_5
    iget-object v0, p0, Lorg/briarproject/bramble/sync/IncomingSession;->eventBus:Lorg/briarproject/bramble/api/event/EventBus;

    invoke-interface {v0, p0}, Lorg/briarproject/bramble/api/event/EventBus;->removeListener(Lorg/briarproject/bramble/api/event/EventListener;)V

    return-void

    :catchall_0
    move-exception v0

    iget-object v1, p0, Lorg/briarproject/bramble/sync/IncomingSession;->eventBus:Lorg/briarproject/bramble/api/event/EventBus;

    invoke-interface {v1, p0}, Lorg/briarproject/bramble/api/event/EventBus;->removeListener(Lorg/briarproject/bramble/api/event/EventListener;)V

    .line 90
    throw v0
.end method
