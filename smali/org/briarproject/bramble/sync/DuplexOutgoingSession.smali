.class Lorg/briarproject/bramble/sync/DuplexOutgoingSession;
.super Ljava/lang/Object;
.source "DuplexOutgoingSession.java"

# interfaces
.implements Lorg/briarproject/bramble/api/event/EventListener;
.implements Lorg/briarproject/bramble/api/sync/SyncSession;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/briarproject/bramble/sync/DuplexOutgoingSession$WriteRequest;,
        Lorg/briarproject/bramble/sync/DuplexOutgoingSession$GenerateRequest;,
        Lorg/briarproject/bramble/sync/DuplexOutgoingSession$WriteOffer;,
        Lorg/briarproject/bramble/sync/DuplexOutgoingSession$GenerateOffer;,
        Lorg/briarproject/bramble/sync/DuplexOutgoingSession$WriteBatch;,
        Lorg/briarproject/bramble/sync/DuplexOutgoingSession$GenerateBatch;,
        Lorg/briarproject/bramble/sync/DuplexOutgoingSession$WriteAck;,
        Lorg/briarproject/bramble/sync/DuplexOutgoingSession$GenerateAck;
    }
.end annotation

.annotation runtime Lorg/briarproject/bramble/api/nullsafety/NotNullByDefault;
.end annotation


# static fields
.field private static final CLOSE:Lorg/briarproject/bramble/sync/ThrowingRunnable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/briarproject/bramble/sync/ThrowingRunnable<",
            "Ljava/io/IOException;",
            ">;"
        }
    .end annotation
.end field

.field private static final LOG:Ljava/util/logging/Logger;

.field private static final NEXT_SEND_TIME_DECREASED:Lorg/briarproject/bramble/sync/ThrowingRunnable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/briarproject/bramble/sync/ThrowingRunnable<",
            "Ljava/io/IOException;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final clock:Lorg/briarproject/bramble/api/system/Clock;

.field private final contactId:Lorg/briarproject/bramble/api/contact/ContactId;

.field private final db:Lorg/briarproject/bramble/api/db/DatabaseComponent;

.field private final dbExecutor:Ljava/util/concurrent/Executor;

.field private final eventBus:Lorg/briarproject/bramble/api/event/EventBus;

.field private final generateAckQueued:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private final generateBatchQueued:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private final generateOfferQueued:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private final generateRequestQueued:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private volatile interrupted:Z

.field private final maxIdleTime:I

.field private final maxLatency:I

.field private final nextSendTime:Ljava/util/concurrent/atomic/AtomicLong;

.field private final recordWriter:Lorg/briarproject/bramble/api/sync/SyncRecordWriter;

.field private final streamWriter:Lorg/briarproject/bramble/api/transport/StreamWriter;

.field private final writerTasks:Ljava/util/concurrent/BlockingQueue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/BlockingQueue<",
            "Lorg/briarproject/bramble/sync/ThrowingRunnable<",
            "Ljava/io/IOException;",
            ">;>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 57
    const-class v0, Lorg/briarproject/bramble/sync/DuplexOutgoingSession;

    .line 58
    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/logging/Logger;->getLogger(Ljava/lang/String;)Ljava/util/logging/Logger;

    move-result-object v0

    sput-object v0, Lorg/briarproject/bramble/sync/DuplexOutgoingSession;->LOG:Ljava/util/logging/Logger;

    .line 60
    sget-object v0, Lorg/briarproject/bramble/sync/-$$Lambda$DuplexOutgoingSession$skAjx9VePvgKzwDkOqwKDxeP-o8;->INSTANCE:Lorg/briarproject/bramble/sync/-$$Lambda$DuplexOutgoingSession$skAjx9VePvgKzwDkOqwKDxeP-o8;

    sput-object v0, Lorg/briarproject/bramble/sync/DuplexOutgoingSession;->CLOSE:Lorg/briarproject/bramble/sync/ThrowingRunnable;

    .line 63
    sget-object v0, Lorg/briarproject/bramble/sync/-$$Lambda$DuplexOutgoingSession$AORUMVVO6htVmPe9L55oAPcHlY4;->INSTANCE:Lorg/briarproject/bramble/sync/-$$Lambda$DuplexOutgoingSession$AORUMVVO6htVmPe9L55oAPcHlY4;

    sput-object v0, Lorg/briarproject/bramble/sync/DuplexOutgoingSession;->NEXT_SEND_TIME_DECREASED:Lorg/briarproject/bramble/sync/ThrowingRunnable;

    return-void
.end method

.method constructor <init>(Lorg/briarproject/bramble/api/db/DatabaseComponent;Ljava/util/concurrent/Executor;Lorg/briarproject/bramble/api/event/EventBus;Lorg/briarproject/bramble/api/system/Clock;Lorg/briarproject/bramble/api/contact/ContactId;IILorg/briarproject/bramble/api/transport/StreamWriter;Lorg/briarproject/bramble/api/sync/SyncRecordWriter;)V
    .locals 4

    .line 88
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 76
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v0, p0, Lorg/briarproject/bramble/sync/DuplexOutgoingSession;->generateAckQueued:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 77
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v0, p0, Lorg/briarproject/bramble/sync/DuplexOutgoingSession;->generateBatchQueued:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 78
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v0, p0, Lorg/briarproject/bramble/sync/DuplexOutgoingSession;->generateOfferQueued:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 79
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v0, p0, Lorg/briarproject/bramble/sync/DuplexOutgoingSession;->generateRequestQueued:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 81
    new-instance v0, Ljava/util/concurrent/atomic/AtomicLong;

    const-wide v2, 0x7fffffffffffffffL

    invoke-direct {v0, v2, v3}, Ljava/util/concurrent/atomic/AtomicLong;-><init>(J)V

    iput-object v0, p0, Lorg/briarproject/bramble/sync/DuplexOutgoingSession;->nextSendTime:Ljava/util/concurrent/atomic/AtomicLong;

    .line 83
    iput-boolean v1, p0, Lorg/briarproject/bramble/sync/DuplexOutgoingSession;->interrupted:Z

    .line 89
    iput-object p1, p0, Lorg/briarproject/bramble/sync/DuplexOutgoingSession;->db:Lorg/briarproject/bramble/api/db/DatabaseComponent;

    .line 90
    iput-object p2, p0, Lorg/briarproject/bramble/sync/DuplexOutgoingSession;->dbExecutor:Ljava/util/concurrent/Executor;

    .line 91
    iput-object p3, p0, Lorg/briarproject/bramble/sync/DuplexOutgoingSession;->eventBus:Lorg/briarproject/bramble/api/event/EventBus;

    .line 92
    iput-object p4, p0, Lorg/briarproject/bramble/sync/DuplexOutgoingSession;->clock:Lorg/briarproject/bramble/api/system/Clock;

    .line 93
    iput-object p5, p0, Lorg/briarproject/bramble/sync/DuplexOutgoingSession;->contactId:Lorg/briarproject/bramble/api/contact/ContactId;

    .line 94
    iput p6, p0, Lorg/briarproject/bramble/sync/DuplexOutgoingSession;->maxLatency:I

    .line 95
    iput p7, p0, Lorg/briarproject/bramble/sync/DuplexOutgoingSession;->maxIdleTime:I

    .line 96
    iput-object p8, p0, Lorg/briarproject/bramble/sync/DuplexOutgoingSession;->streamWriter:Lorg/briarproject/bramble/api/transport/StreamWriter;

    .line 97
    iput-object p9, p0, Lorg/briarproject/bramble/sync/DuplexOutgoingSession;->recordWriter:Lorg/briarproject/bramble/api/sync/SyncRecordWriter;

    .line 98
    new-instance p1, Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-direct {p1}, Ljava/util/concurrent/LinkedBlockingQueue;-><init>()V

    iput-object p1, p0, Lorg/briarproject/bramble/sync/DuplexOutgoingSession;->writerTasks:Ljava/util/concurrent/BlockingQueue;

    return-void
.end method

.method static synthetic access$1000(Lorg/briarproject/bramble/sync/DuplexOutgoingSession;)Lorg/briarproject/bramble/api/contact/ContactId;
    .locals 0

    .line 55
    iget-object p0, p0, Lorg/briarproject/bramble/sync/DuplexOutgoingSession;->contactId:Lorg/briarproject/bramble/api/contact/ContactId;

    return-object p0
.end method

.method static synthetic access$1100(Lorg/briarproject/bramble/sync/DuplexOutgoingSession;)Lorg/briarproject/bramble/api/sync/SyncRecordWriter;
    .locals 0

    .line 55
    iget-object p0, p0, Lorg/briarproject/bramble/sync/DuplexOutgoingSession;->recordWriter:Lorg/briarproject/bramble/api/sync/SyncRecordWriter;

    return-object p0
.end method

.method static synthetic access$1200(Lorg/briarproject/bramble/sync/DuplexOutgoingSession;)V
    .locals 0

    .line 55
    invoke-direct {p0}, Lorg/briarproject/bramble/sync/DuplexOutgoingSession;->generateAck()V

    return-void
.end method

.method static synthetic access$1300(Lorg/briarproject/bramble/sync/DuplexOutgoingSession;)Ljava/util/concurrent/atomic/AtomicBoolean;
    .locals 0

    .line 55
    iget-object p0, p0, Lorg/briarproject/bramble/sync/DuplexOutgoingSession;->generateBatchQueued:Ljava/util/concurrent/atomic/AtomicBoolean;

    return-object p0
.end method

.method static synthetic access$1500(Lorg/briarproject/bramble/sync/DuplexOutgoingSession;)I
    .locals 0

    .line 55
    iget p0, p0, Lorg/briarproject/bramble/sync/DuplexOutgoingSession;->maxLatency:I

    return p0
.end method

.method static synthetic access$1600(Lorg/briarproject/bramble/sync/DuplexOutgoingSession;J)V
    .locals 0

    .line 55
    invoke-direct {p0, p1, p2}, Lorg/briarproject/bramble/sync/DuplexOutgoingSession;->setNextSendTime(J)V

    return-void
.end method

.method static synthetic access$1700(Lorg/briarproject/bramble/sync/DuplexOutgoingSession;)V
    .locals 0

    .line 55
    invoke-direct {p0}, Lorg/briarproject/bramble/sync/DuplexOutgoingSession;->generateBatch()V

    return-void
.end method

.method static synthetic access$1800(Lorg/briarproject/bramble/sync/DuplexOutgoingSession;)Ljava/util/concurrent/atomic/AtomicBoolean;
    .locals 0

    .line 55
    iget-object p0, p0, Lorg/briarproject/bramble/sync/DuplexOutgoingSession;->generateOfferQueued:Ljava/util/concurrent/atomic/AtomicBoolean;

    return-object p0
.end method

.method static synthetic access$2000(Lorg/briarproject/bramble/sync/DuplexOutgoingSession;)V
    .locals 0

    .line 55
    invoke-direct {p0}, Lorg/briarproject/bramble/sync/DuplexOutgoingSession;->generateOffer()V

    return-void
.end method

.method static synthetic access$2100(Lorg/briarproject/bramble/sync/DuplexOutgoingSession;)Ljava/util/concurrent/atomic/AtomicBoolean;
    .locals 0

    .line 55
    iget-object p0, p0, Lorg/briarproject/bramble/sync/DuplexOutgoingSession;->generateRequestQueued:Ljava/util/concurrent/atomic/AtomicBoolean;

    return-object p0
.end method

.method static synthetic access$2300(Lorg/briarproject/bramble/sync/DuplexOutgoingSession;)V
    .locals 0

    .line 55
    invoke-direct {p0}, Lorg/briarproject/bramble/sync/DuplexOutgoingSession;->generateRequest()V

    return-void
.end method

.method static synthetic access$400(Lorg/briarproject/bramble/sync/DuplexOutgoingSession;)Z
    .locals 0

    .line 55
    iget-boolean p0, p0, Lorg/briarproject/bramble/sync/DuplexOutgoingSession;->interrupted:Z

    return p0
.end method

.method static synthetic access$500(Lorg/briarproject/bramble/sync/DuplexOutgoingSession;)Ljava/util/concurrent/atomic/AtomicBoolean;
    .locals 0

    .line 55
    iget-object p0, p0, Lorg/briarproject/bramble/sync/DuplexOutgoingSession;->generateAckQueued:Ljava/util/concurrent/atomic/AtomicBoolean;

    return-object p0
.end method

.method static synthetic access$600(Lorg/briarproject/bramble/sync/DuplexOutgoingSession;)Lorg/briarproject/bramble/api/db/DatabaseComponent;
    .locals 0

    .line 55
    iget-object p0, p0, Lorg/briarproject/bramble/sync/DuplexOutgoingSession;->db:Lorg/briarproject/bramble/api/db/DatabaseComponent;

    return-object p0
.end method

.method static synthetic access$700()Ljava/util/logging/Logger;
    .locals 1

    .line 55
    sget-object v0, Lorg/briarproject/bramble/sync/DuplexOutgoingSession;->LOG:Ljava/util/logging/Logger;

    return-object v0
.end method

.method static synthetic access$900(Lorg/briarproject/bramble/sync/DuplexOutgoingSession;)Ljava/util/concurrent/BlockingQueue;
    .locals 0

    .line 55
    iget-object p0, p0, Lorg/briarproject/bramble/sync/DuplexOutgoingSession;->writerTasks:Ljava/util/concurrent/BlockingQueue;

    return-object p0
.end method

.method private generateAck()V
    .locals 3

    .line 168
    iget-object v0, p0, Lorg/briarproject/bramble/sync/DuplexOutgoingSession;->generateAckQueued:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 169
    iget-object v0, p0, Lorg/briarproject/bramble/sync/DuplexOutgoingSession;->dbExecutor:Ljava/util/concurrent/Executor;

    new-instance v1, Lorg/briarproject/bramble/sync/DuplexOutgoingSession$GenerateAck;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lorg/briarproject/bramble/sync/DuplexOutgoingSession$GenerateAck;-><init>(Lorg/briarproject/bramble/sync/DuplexOutgoingSession;Lorg/briarproject/bramble/sync/DuplexOutgoingSession$1;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    :cond_0
    return-void
.end method

.method private generateBatch()V
    .locals 3

    .line 173
    iget-object v0, p0, Lorg/briarproject/bramble/sync/DuplexOutgoingSession;->generateBatchQueued:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 174
    iget-object v0, p0, Lorg/briarproject/bramble/sync/DuplexOutgoingSession;->dbExecutor:Ljava/util/concurrent/Executor;

    new-instance v1, Lorg/briarproject/bramble/sync/DuplexOutgoingSession$GenerateBatch;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lorg/briarproject/bramble/sync/DuplexOutgoingSession$GenerateBatch;-><init>(Lorg/briarproject/bramble/sync/DuplexOutgoingSession;Lorg/briarproject/bramble/sync/DuplexOutgoingSession$1;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    :cond_0
    return-void
.end method

.method private generateOffer()V
    .locals 3

    .line 178
    iget-object v0, p0, Lorg/briarproject/bramble/sync/DuplexOutgoingSession;->generateOfferQueued:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 179
    iget-object v0, p0, Lorg/briarproject/bramble/sync/DuplexOutgoingSession;->dbExecutor:Ljava/util/concurrent/Executor;

    new-instance v1, Lorg/briarproject/bramble/sync/DuplexOutgoingSession$GenerateOffer;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lorg/briarproject/bramble/sync/DuplexOutgoingSession$GenerateOffer;-><init>(Lorg/briarproject/bramble/sync/DuplexOutgoingSession;Lorg/briarproject/bramble/sync/DuplexOutgoingSession$1;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    :cond_0
    return-void
.end method

.method private generateRequest()V
    .locals 3

    .line 183
    iget-object v0, p0, Lorg/briarproject/bramble/sync/DuplexOutgoingSession;->generateRequestQueued:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 184
    iget-object v0, p0, Lorg/briarproject/bramble/sync/DuplexOutgoingSession;->dbExecutor:Ljava/util/concurrent/Executor;

    new-instance v1, Lorg/briarproject/bramble/sync/DuplexOutgoingSession$GenerateRequest;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lorg/briarproject/bramble/sync/DuplexOutgoingSession$GenerateRequest;-><init>(Lorg/briarproject/bramble/sync/DuplexOutgoingSession;Lorg/briarproject/bramble/sync/DuplexOutgoingSession$1;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    :cond_0
    return-void
.end method

.method static synthetic lambda$static$0()V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    return-void
.end method

.method static synthetic lambda$static$1()V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    return-void
.end method

.method private setNextSendTime(J)V
    .locals 3

    .line 188
    iget-object v0, p0, Lorg/briarproject/bramble/sync/DuplexOutgoingSession;->nextSendTime:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {v0, p1, p2}, Ljava/util/concurrent/atomic/AtomicLong;->getAndSet(J)J

    move-result-wide v0

    cmp-long v2, p1, v0

    if-gez v2, :cond_0

    .line 189
    iget-object p1, p0, Lorg/briarproject/bramble/sync/DuplexOutgoingSession;->writerTasks:Ljava/util/concurrent/BlockingQueue;

    sget-object p2, Lorg/briarproject/bramble/sync/DuplexOutgoingSession;->NEXT_SEND_TIME_DECREASED:Lorg/briarproject/bramble/sync/ThrowingRunnable;

    invoke-interface {p1, p2}, Ljava/util/concurrent/BlockingQueue;->add(Ljava/lang/Object;)Z

    :cond_0
    return-void
.end method


# virtual methods
.method public eventOccurred(Lorg/briarproject/bramble/api/event/Event;)V
    .locals 1

    .line 200
    instance-of v0, p1, Lorg/briarproject/bramble/api/contact/event/ContactRemovedEvent;

    if-eqz v0, :cond_0

    .line 201
    check-cast p1, Lorg/briarproject/bramble/api/contact/event/ContactRemovedEvent;

    .line 202
    invoke-virtual {p1}, Lorg/briarproject/bramble/api/contact/event/ContactRemovedEvent;->getContactId()Lorg/briarproject/bramble/api/contact/ContactId;

    move-result-object p1

    iget-object v0, p0, Lorg/briarproject/bramble/sync/DuplexOutgoingSession;->contactId:Lorg/briarproject/bramble/api/contact/ContactId;

    invoke-virtual {p1, v0}, Lorg/briarproject/bramble/api/contact/ContactId;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_6

    invoke-virtual {p0}, Lorg/briarproject/bramble/sync/DuplexOutgoingSession;->interrupt()V

    goto/16 :goto_0

    .line 203
    :cond_0
    instance-of v0, p1, Lorg/briarproject/bramble/api/sync/event/MessageSharedEvent;

    if-eqz v0, :cond_1

    .line 204
    invoke-direct {p0}, Lorg/briarproject/bramble/sync/DuplexOutgoingSession;->generateOffer()V

    goto :goto_0

    .line 205
    :cond_1
    instance-of v0, p1, Lorg/briarproject/bramble/api/sync/event/GroupVisibilityUpdatedEvent;

    if-eqz v0, :cond_2

    .line 206
    check-cast p1, Lorg/briarproject/bramble/api/sync/event/GroupVisibilityUpdatedEvent;

    .line 207
    invoke-virtual {p1}, Lorg/briarproject/bramble/api/sync/event/GroupVisibilityUpdatedEvent;->getAffectedContacts()Ljava/util/Collection;

    move-result-object p1

    iget-object v0, p0, Lorg/briarproject/bramble/sync/DuplexOutgoingSession;->contactId:Lorg/briarproject/bramble/api/contact/ContactId;

    invoke-interface {p1, v0}, Ljava/util/Collection;->contains(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_6

    .line 208
    invoke-direct {p0}, Lorg/briarproject/bramble/sync/DuplexOutgoingSession;->generateOffer()V

    goto :goto_0

    .line 209
    :cond_2
    instance-of v0, p1, Lorg/briarproject/bramble/api/sync/event/MessageRequestedEvent;

    if-eqz v0, :cond_3

    .line 210
    check-cast p1, Lorg/briarproject/bramble/api/sync/event/MessageRequestedEvent;

    invoke-virtual {p1}, Lorg/briarproject/bramble/api/sync/event/MessageRequestedEvent;->getContactId()Lorg/briarproject/bramble/api/contact/ContactId;

    move-result-object p1

    iget-object v0, p0, Lorg/briarproject/bramble/sync/DuplexOutgoingSession;->contactId:Lorg/briarproject/bramble/api/contact/ContactId;

    invoke-virtual {p1, v0}, Lorg/briarproject/bramble/api/contact/ContactId;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_6

    .line 211
    invoke-direct {p0}, Lorg/briarproject/bramble/sync/DuplexOutgoingSession;->generateBatch()V

    goto :goto_0

    .line 212
    :cond_3
    instance-of v0, p1, Lorg/briarproject/bramble/api/sync/event/MessageToAckEvent;

    if-eqz v0, :cond_4

    .line 213
    check-cast p1, Lorg/briarproject/bramble/api/sync/event/MessageToAckEvent;

    invoke-virtual {p1}, Lorg/briarproject/bramble/api/sync/event/MessageToAckEvent;->getContactId()Lorg/briarproject/bramble/api/contact/ContactId;

    move-result-object p1

    iget-object v0, p0, Lorg/briarproject/bramble/sync/DuplexOutgoingSession;->contactId:Lorg/briarproject/bramble/api/contact/ContactId;

    invoke-virtual {p1, v0}, Lorg/briarproject/bramble/api/contact/ContactId;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_6

    .line 214
    invoke-direct {p0}, Lorg/briarproject/bramble/sync/DuplexOutgoingSession;->generateAck()V

    goto :goto_0

    .line 215
    :cond_4
    instance-of v0, p1, Lorg/briarproject/bramble/api/sync/event/MessageToRequestEvent;

    if-eqz v0, :cond_5

    .line 216
    check-cast p1, Lorg/briarproject/bramble/api/sync/event/MessageToRequestEvent;

    invoke-virtual {p1}, Lorg/briarproject/bramble/api/sync/event/MessageToRequestEvent;->getContactId()Lorg/briarproject/bramble/api/contact/ContactId;

    move-result-object p1

    iget-object v0, p0, Lorg/briarproject/bramble/sync/DuplexOutgoingSession;->contactId:Lorg/briarproject/bramble/api/contact/ContactId;

    invoke-virtual {p1, v0}, Lorg/briarproject/bramble/api/contact/ContactId;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_6

    .line 217
    invoke-direct {p0}, Lorg/briarproject/bramble/sync/DuplexOutgoingSession;->generateRequest()V

    goto :goto_0

    .line 218
    :cond_5
    instance-of v0, p1, Lorg/briarproject/bramble/api/lifecycle/event/LifecycleEvent;

    if-eqz v0, :cond_6

    .line 219
    check-cast p1, Lorg/briarproject/bramble/api/lifecycle/event/LifecycleEvent;

    .line 220
    invoke-virtual {p1}, Lorg/briarproject/bramble/api/lifecycle/event/LifecycleEvent;->getLifecycleState()Lorg/briarproject/bramble/api/lifecycle/LifecycleManager$LifecycleState;

    move-result-object p1

    sget-object v0, Lorg/briarproject/bramble/api/lifecycle/LifecycleManager$LifecycleState;->STOPPING:Lorg/briarproject/bramble/api/lifecycle/LifecycleManager$LifecycleState;

    if-ne p1, v0, :cond_6

    invoke-virtual {p0}, Lorg/briarproject/bramble/sync/DuplexOutgoingSession;->interrupt()V

    :cond_6
    :goto_0
    return-void
.end method

.method public interrupt()V
    .locals 2

    const/4 v0, 0x1

    .line 194
    iput-boolean v0, p0, Lorg/briarproject/bramble/sync/DuplexOutgoingSession;->interrupted:Z

    .line 195
    iget-object v0, p0, Lorg/briarproject/bramble/sync/DuplexOutgoingSession;->writerTasks:Ljava/util/concurrent/BlockingQueue;

    sget-object v1, Lorg/briarproject/bramble/sync/DuplexOutgoingSession;->CLOSE:Lorg/briarproject/bramble/sync/ThrowingRunnable;

    invoke-interface {v0, v1}, Ljava/util/concurrent/BlockingQueue;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public run()V
    .locals 13
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .annotation runtime Lorg/briarproject/bramble/api/lifecycle/IoExecutor;
    .end annotation

    .line 104
    iget-object v0, p0, Lorg/briarproject/bramble/sync/DuplexOutgoingSession;->eventBus:Lorg/briarproject/bramble/api/event/EventBus;

    invoke-interface {v0, p0}, Lorg/briarproject/bramble/api/event/EventBus;->addListener(Lorg/briarproject/bramble/api/event/EventListener;)V

    .line 107
    :try_start_0
    invoke-direct {p0}, Lorg/briarproject/bramble/sync/DuplexOutgoingSession;->generateAck()V

    .line 108
    invoke-direct {p0}, Lorg/briarproject/bramble/sync/DuplexOutgoingSession;->generateBatch()V

    .line 109
    invoke-direct {p0}, Lorg/briarproject/bramble/sync/DuplexOutgoingSession;->generateOffer()V

    .line 110
    invoke-direct {p0}, Lorg/briarproject/bramble/sync/DuplexOutgoingSession;->generateRequest()V

    .line 111
    iget-object v0, p0, Lorg/briarproject/bramble/sync/DuplexOutgoingSession;->clock:Lorg/briarproject/bramble/api/system/Clock;

    invoke-interface {v0}, Lorg/briarproject/bramble/api/system/Clock;->currentTimeMillis()J

    move-result-wide v0

    .line 112
    iget v2, p0, Lorg/briarproject/bramble/sync/DuplexOutgoingSession;->maxIdleTime:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    int-to-long v2, v2

    add-long/2addr v0, v2

    const/4 v2, 0x1

    :goto_0
    const/4 v3, 0x1

    .line 116
    :cond_0
    :goto_1
    :try_start_1
    iget-boolean v4, p0, Lorg/briarproject/bramble/sync/DuplexOutgoingSession;->interrupted:Z

    if-nez v4, :cond_6

    .line 118
    iget-object v4, p0, Lorg/briarproject/bramble/sync/DuplexOutgoingSession;->clock:Lorg/briarproject/bramble/api/system/Clock;

    invoke-interface {v4}, Lorg/briarproject/bramble/api/system/Clock;->currentTimeMillis()J

    move-result-wide v4

    const/4 v6, 0x0

    sub-long v6, v0, v4

    const-wide/16 v8, 0x0

    .line 119
    invoke-static {v8, v9, v6, v7}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v6

    .line 120
    iget-object v10, p0, Lorg/briarproject/bramble/sync/DuplexOutgoingSession;->nextSendTime:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {v10}, Ljava/util/concurrent/atomic/AtomicLong;->get()J

    move-result-wide v10

    const/4 v12, 0x0

    sub-long/2addr v10, v4

    invoke-static {v8, v9, v10, v11}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v10

    .line 121
    invoke-static {v6, v7, v10, v11}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v6

    const/4 v10, 0x0

    cmp-long v11, v6, v8

    if-lez v11, :cond_1

    if-eqz v3, :cond_1

    .line 123
    iget-object v8, p0, Lorg/briarproject/bramble/sync/DuplexOutgoingSession;->writerTasks:Ljava/util/concurrent/BlockingQueue;

    invoke-interface {v8}, Ljava/util/concurrent/BlockingQueue;->isEmpty()Z

    move-result v8

    if-eqz v8, :cond_1

    .line 124
    iget-object v0, p0, Lorg/briarproject/bramble/sync/DuplexOutgoingSession;->recordWriter:Lorg/briarproject/bramble/api/sync/SyncRecordWriter;

    invoke-interface {v0}, Lorg/briarproject/bramble/api/sync/SyncRecordWriter;->flush()V

    .line 126
    iget v0, p0, Lorg/briarproject/bramble/sync/DuplexOutgoingSession;->maxIdleTime:I

    int-to-long v0, v0

    add-long/2addr v0, v4

    const/4 v3, 0x0

    .line 129
    :cond_1
    iget-object v4, p0, Lorg/briarproject/bramble/sync/DuplexOutgoingSession;->writerTasks:Ljava/util/concurrent/BlockingQueue;

    sget-object v5, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-interface {v4, v6, v7, v5}, Ljava/util/concurrent/BlockingQueue;->poll(JLjava/util/concurrent/TimeUnit;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/briarproject/bramble/sync/ThrowingRunnable;

    if-nez v4, :cond_3

    .line 132
    iget-object v4, p0, Lorg/briarproject/bramble/sync/DuplexOutgoingSession;->clock:Lorg/briarproject/bramble/api/system/Clock;

    invoke-interface {v4}, Lorg/briarproject/bramble/api/system/Clock;->currentTimeMillis()J

    move-result-wide v4

    .line 133
    iget-object v6, p0, Lorg/briarproject/bramble/sync/DuplexOutgoingSession;->nextSendTime:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {v6}, Ljava/util/concurrent/atomic/AtomicLong;->get()J

    move-result-wide v6

    cmp-long v8, v4, v6

    if-ltz v8, :cond_2

    .line 135
    sget-object v6, Lorg/briarproject/bramble/sync/DuplexOutgoingSession;->LOG:Ljava/util/logging/Logger;

    const-string v7, "Checking for retransmittable messages"

    invoke-virtual {v6, v7}, Ljava/util/logging/Logger;->info(Ljava/lang/String;)V

    const-wide v6, 0x7fffffffffffffffL

    .line 136
    invoke-direct {p0, v6, v7}, Lorg/briarproject/bramble/sync/DuplexOutgoingSession;->setNextSendTime(J)V

    .line 137
    invoke-direct {p0}, Lorg/briarproject/bramble/sync/DuplexOutgoingSession;->generateBatch()V

    .line 138
    invoke-direct {p0}, Lorg/briarproject/bramble/sync/DuplexOutgoingSession;->generateOffer()V

    :cond_2
    cmp-long v6, v4, v0

    if-ltz v6, :cond_0

    .line 142
    sget-object v0, Lorg/briarproject/bramble/sync/DuplexOutgoingSession;->LOG:Ljava/util/logging/Logger;

    const-string v1, "Sending keepalive"

    invoke-virtual {v0, v1}, Ljava/util/logging/Logger;->info(Ljava/lang/String;)V

    .line 143
    iget-object v0, p0, Lorg/briarproject/bramble/sync/DuplexOutgoingSession;->recordWriter:Lorg/briarproject/bramble/api/sync/SyncRecordWriter;

    invoke-interface {v0}, Lorg/briarproject/bramble/api/sync/SyncRecordWriter;->flush()V

    .line 145
    iget v0, p0, Lorg/briarproject/bramble/sync/DuplexOutgoingSession;->maxIdleTime:I

    int-to-long v0, v0

    add-long/2addr v4, v0

    move-wide v0, v4

    const/4 v3, 0x0

    goto/16 :goto_1

    .line 147
    :cond_3
    sget-object v5, Lorg/briarproject/bramble/sync/DuplexOutgoingSession;->CLOSE:Lorg/briarproject/bramble/sync/ThrowingRunnable;

    if-ne v4, v5, :cond_4

    .line 148
    sget-object v0, Lorg/briarproject/bramble/sync/DuplexOutgoingSession;->LOG:Ljava/util/logging/Logger;

    const-string v1, "Closed"

    invoke-virtual {v0, v1}, Ljava/util/logging/Logger;->info(Ljava/lang/String;)V

    goto :goto_2

    .line 150
    :cond_4
    sget-object v5, Lorg/briarproject/bramble/sync/DuplexOutgoingSession;->NEXT_SEND_TIME_DECREASED:Lorg/briarproject/bramble/sync/ThrowingRunnable;

    if-ne v4, v5, :cond_5

    .line 151
    sget-object v4, Lorg/briarproject/bramble/sync/DuplexOutgoingSession;->LOG:Ljava/util/logging/Logger;

    const-string v5, "Next send time decreased"

    invoke-virtual {v4, v5}, Ljava/util/logging/Logger;->info(Ljava/lang/String;)V

    goto/16 :goto_1

    .line 153
    :cond_5
    invoke-interface {v4}, Lorg/briarproject/bramble/sync/ThrowingRunnable;->run()V

    goto/16 :goto_0

    .line 157
    :cond_6
    :goto_2
    iget-object v0, p0, Lorg/briarproject/bramble/sync/DuplexOutgoingSession;->streamWriter:Lorg/briarproject/bramble/api/transport/StreamWriter;

    invoke-interface {v0}, Lorg/briarproject/bramble/api/transport/StreamWriter;->sendEndOfStream()V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_3

    .line 159
    :catch_0
    :try_start_2
    sget-object v0, Lorg/briarproject/bramble/sync/DuplexOutgoingSession;->LOG:Ljava/util/logging/Logger;

    const-string v1, "Interrupted while waiting for a record to write"

    invoke-virtual {v0, v1}, Ljava/util/logging/Logger;->info(Ljava/lang/String;)V

    .line 160
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Thread;->interrupt()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 163
    :goto_3
    iget-object v0, p0, Lorg/briarproject/bramble/sync/DuplexOutgoingSession;->eventBus:Lorg/briarproject/bramble/api/event/EventBus;

    invoke-interface {v0, p0}, Lorg/briarproject/bramble/api/event/EventBus;->removeListener(Lorg/briarproject/bramble/api/event/EventListener;)V

    return-void

    :catchall_0
    move-exception v0

    iget-object v1, p0, Lorg/briarproject/bramble/sync/DuplexOutgoingSession;->eventBus:Lorg/briarproject/bramble/api/event/EventBus;

    invoke-interface {v1, p0}, Lorg/briarproject/bramble/api/event/EventBus;->removeListener(Lorg/briarproject/bramble/api/event/EventListener;)V

    .line 164
    throw v0
.end method
