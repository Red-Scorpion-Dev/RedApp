.class Lorg/briarproject/bramble/sync/DuplexOutgoingSession$GenerateAck;
.super Ljava/lang/Object;
.source "DuplexOutgoingSession.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/briarproject/bramble/sync/DuplexOutgoingSession;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "GenerateAck"
.end annotation


# instance fields
.field final synthetic this$0:Lorg/briarproject/bramble/sync/DuplexOutgoingSession;


# direct methods
.method private constructor <init>(Lorg/briarproject/bramble/sync/DuplexOutgoingSession;)V
    .locals 0

    .line 224
    iput-object p1, p0, Lorg/briarproject/bramble/sync/DuplexOutgoingSession$GenerateAck;->this$0:Lorg/briarproject/bramble/sync/DuplexOutgoingSession;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lorg/briarproject/bramble/sync/DuplexOutgoingSession;Lorg/briarproject/bramble/sync/DuplexOutgoingSession$1;)V
    .locals 0

    .line 224
    invoke-direct {p0, p1}, Lorg/briarproject/bramble/sync/DuplexOutgoingSession$GenerateAck;-><init>(Lorg/briarproject/bramble/sync/DuplexOutgoingSession;)V

    return-void
.end method

.method public static synthetic lambda$run$0(Lorg/briarproject/bramble/sync/DuplexOutgoingSession$GenerateAck;Lorg/briarproject/bramble/api/db/Transaction;)Lorg/briarproject/bramble/api/sync/Ack;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/briarproject/bramble/api/db/DbException;,
            Ljava/lang/RuntimeException;
        }
    .end annotation

    .line 233
    iget-object v0, p0, Lorg/briarproject/bramble/sync/DuplexOutgoingSession$GenerateAck;->this$0:Lorg/briarproject/bramble/sync/DuplexOutgoingSession;

    invoke-static {v0}, Lorg/briarproject/bramble/sync/DuplexOutgoingSession;->access$600(Lorg/briarproject/bramble/sync/DuplexOutgoingSession;)Lorg/briarproject/bramble/api/db/DatabaseComponent;

    move-result-object v0

    iget-object v1, p0, Lorg/briarproject/bramble/sync/DuplexOutgoingSession$GenerateAck;->this$0:Lorg/briarproject/bramble/sync/DuplexOutgoingSession;

    invoke-static {v1}, Lorg/briarproject/bramble/sync/DuplexOutgoingSession;->access$1000(Lorg/briarproject/bramble/sync/DuplexOutgoingSession;)Lorg/briarproject/bramble/api/contact/ContactId;

    move-result-object v1

    const/16 v2, 0x600

    invoke-interface {v0, p1, v1, v2}, Lorg/briarproject/bramble/api/db/DatabaseComponent;->generateAck(Lorg/briarproject/bramble/api/db/Transaction;Lorg/briarproject/bramble/api/contact/ContactId;I)Lorg/briarproject/bramble/api/sync/Ack;

    move-result-object p1

    return-object p1
.end method


# virtual methods
.method public run()V
    .locals 5
    .annotation runtime Lorg/briarproject/bramble/api/db/DatabaseExecutor;
    .end annotation

    .line 229
    iget-object v0, p0, Lorg/briarproject/bramble/sync/DuplexOutgoingSession$GenerateAck;->this$0:Lorg/briarproject/bramble/sync/DuplexOutgoingSession;

    invoke-static {v0}, Lorg/briarproject/bramble/sync/DuplexOutgoingSession;->access$400(Lorg/briarproject/bramble/sync/DuplexOutgoingSession;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 230
    :cond_0
    iget-object v0, p0, Lorg/briarproject/bramble/sync/DuplexOutgoingSession$GenerateAck;->this$0:Lorg/briarproject/bramble/sync/DuplexOutgoingSession;

    invoke-static {v0}, Lorg/briarproject/bramble/sync/DuplexOutgoingSession;->access$500(Lorg/briarproject/bramble/sync/DuplexOutgoingSession;)Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->getAndSet(Z)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 232
    :try_start_0
    iget-object v0, p0, Lorg/briarproject/bramble/sync/DuplexOutgoingSession$GenerateAck;->this$0:Lorg/briarproject/bramble/sync/DuplexOutgoingSession;

    invoke-static {v0}, Lorg/briarproject/bramble/sync/DuplexOutgoingSession;->access$600(Lorg/briarproject/bramble/sync/DuplexOutgoingSession;)Lorg/briarproject/bramble/api/db/DatabaseComponent;

    move-result-object v0

    new-instance v2, Lorg/briarproject/bramble/sync/-$$Lambda$DuplexOutgoingSession$GenerateAck$Sjh-SgjwGt6Bjt2iH2BjQx6MQKk;

    invoke-direct {v2, p0}, Lorg/briarproject/bramble/sync/-$$Lambda$DuplexOutgoingSession$GenerateAck$Sjh-SgjwGt6Bjt2iH2BjQx6MQKk;-><init>(Lorg/briarproject/bramble/sync/DuplexOutgoingSession$GenerateAck;)V

    invoke-interface {v0, v1, v2}, Lorg/briarproject/bramble/api/db/DatabaseComponent;->transactionWithNullableResult(ZLorg/briarproject/bramble/api/db/NullableDbCallable;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/briarproject/bramble/api/sync/Ack;

    .line 234
    invoke-static {}, Lorg/briarproject/bramble/sync/DuplexOutgoingSession;->access$700()Ljava/util/logging/Logger;

    move-result-object v2

    sget-object v3, Ljava/util/logging/Level;->INFO:Ljava/util/logging/Level;

    invoke-virtual {v2, v3}, Ljava/util/logging/Logger;->isLoggable(Ljava/util/logging/Level;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 235
    invoke-static {}, Lorg/briarproject/bramble/sync/DuplexOutgoingSession;->access$700()Ljava/util/logging/Logger;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Generated ack: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-eqz v0, :cond_1

    const/4 v1, 0x1

    :cond_1
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/util/logging/Logger;->info(Ljava/lang/String;)V

    :cond_2
    if-eqz v0, :cond_3

    .line 236
    iget-object v1, p0, Lorg/briarproject/bramble/sync/DuplexOutgoingSession$GenerateAck;->this$0:Lorg/briarproject/bramble/sync/DuplexOutgoingSession;

    invoke-static {v1}, Lorg/briarproject/bramble/sync/DuplexOutgoingSession;->access$900(Lorg/briarproject/bramble/sync/DuplexOutgoingSession;)Ljava/util/concurrent/BlockingQueue;

    move-result-object v1

    new-instance v2, Lorg/briarproject/bramble/sync/DuplexOutgoingSession$WriteAck;

    iget-object v3, p0, Lorg/briarproject/bramble/sync/DuplexOutgoingSession$GenerateAck;->this$0:Lorg/briarproject/bramble/sync/DuplexOutgoingSession;

    const/4 v4, 0x0

    invoke-direct {v2, v3, v0, v4}, Lorg/briarproject/bramble/sync/DuplexOutgoingSession$WriteAck;-><init>(Lorg/briarproject/bramble/sync/DuplexOutgoingSession;Lorg/briarproject/bramble/api/sync/Ack;Lorg/briarproject/bramble/sync/DuplexOutgoingSession$1;)V

    invoke-interface {v1, v2}, Ljava/util/concurrent/BlockingQueue;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Lorg/briarproject/bramble/api/db/DbException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 238
    invoke-static {}, Lorg/briarproject/bramble/sync/DuplexOutgoingSession;->access$700()Ljava/util/logging/Logger;

    move-result-object v1

    sget-object v2, Ljava/util/logging/Level;->WARNING:Ljava/util/logging/Level;

    invoke-static {v1, v2, v0}, Lorg/briarproject/bramble/util/LogUtils;->logException(Ljava/util/logging/Logger;Ljava/util/logging/Level;Ljava/lang/Throwable;)V

    .line 239
    iget-object v0, p0, Lorg/briarproject/bramble/sync/DuplexOutgoingSession$GenerateAck;->this$0:Lorg/briarproject/bramble/sync/DuplexOutgoingSession;

    invoke-virtual {v0}, Lorg/briarproject/bramble/sync/DuplexOutgoingSession;->interrupt()V

    :cond_3
    :goto_0
    return-void

    .line 230
    :cond_4
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0
.end method
