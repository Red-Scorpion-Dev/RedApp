.class Lorg/briarproject/bramble/sync/IncomingSession$ReceiveAck;
.super Ljava/lang/Object;
.source "IncomingSession.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/briarproject/bramble/sync/IncomingSession;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ReceiveAck"
.end annotation


# instance fields
.field private final ack:Lorg/briarproject/bramble/api/sync/Ack;

.field final synthetic this$0:Lorg/briarproject/bramble/sync/IncomingSession;


# direct methods
.method private constructor <init>(Lorg/briarproject/bramble/sync/IncomingSession;Lorg/briarproject/bramble/api/sync/Ack;)V
    .locals 0

    .line 114
    iput-object p1, p0, Lorg/briarproject/bramble/sync/IncomingSession$ReceiveAck;->this$0:Lorg/briarproject/bramble/sync/IncomingSession;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 115
    iput-object p2, p0, Lorg/briarproject/bramble/sync/IncomingSession$ReceiveAck;->ack:Lorg/briarproject/bramble/api/sync/Ack;

    return-void
.end method

.method synthetic constructor <init>(Lorg/briarproject/bramble/sync/IncomingSession;Lorg/briarproject/bramble/api/sync/Ack;Lorg/briarproject/bramble/sync/IncomingSession$1;)V
    .locals 0

    .line 110
    invoke-direct {p0, p1, p2}, Lorg/briarproject/bramble/sync/IncomingSession$ReceiveAck;-><init>(Lorg/briarproject/bramble/sync/IncomingSession;Lorg/briarproject/bramble/api/sync/Ack;)V

    return-void
.end method

.method public static synthetic lambda$run$0(Lorg/briarproject/bramble/sync/IncomingSession$ReceiveAck;Lorg/briarproject/bramble/api/db/Transaction;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/briarproject/bramble/api/db/DbException;,
            Ljava/lang/RuntimeException;
        }
    .end annotation

    .line 123
    iget-object v0, p0, Lorg/briarproject/bramble/sync/IncomingSession$ReceiveAck;->this$0:Lorg/briarproject/bramble/sync/IncomingSession;

    invoke-static {v0}, Lorg/briarproject/bramble/sync/IncomingSession;->access$400(Lorg/briarproject/bramble/sync/IncomingSession;)Lorg/briarproject/bramble/api/db/DatabaseComponent;

    move-result-object v0

    iget-object v1, p0, Lorg/briarproject/bramble/sync/IncomingSession$ReceiveAck;->this$0:Lorg/briarproject/bramble/sync/IncomingSession;

    invoke-static {v1}, Lorg/briarproject/bramble/sync/IncomingSession;->access$600(Lorg/briarproject/bramble/sync/IncomingSession;)Lorg/briarproject/bramble/api/contact/ContactId;

    move-result-object v1

    iget-object v2, p0, Lorg/briarproject/bramble/sync/IncomingSession$ReceiveAck;->ack:Lorg/briarproject/bramble/api/sync/Ack;

    invoke-interface {v0, p1, v1, v2}, Lorg/briarproject/bramble/api/db/DatabaseComponent;->receiveAck(Lorg/briarproject/bramble/api/db/Transaction;Lorg/briarproject/bramble/api/contact/ContactId;Lorg/briarproject/bramble/api/sync/Ack;)V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3
    .annotation runtime Lorg/briarproject/bramble/api/db/DatabaseExecutor;
    .end annotation

    .line 122
    :try_start_0
    iget-object v0, p0, Lorg/briarproject/bramble/sync/IncomingSession$ReceiveAck;->this$0:Lorg/briarproject/bramble/sync/IncomingSession;

    invoke-static {v0}, Lorg/briarproject/bramble/sync/IncomingSession;->access$400(Lorg/briarproject/bramble/sync/IncomingSession;)Lorg/briarproject/bramble/api/db/DatabaseComponent;

    move-result-object v0

    const/4 v1, 0x0

    new-instance v2, Lorg/briarproject/bramble/sync/-$$Lambda$IncomingSession$ReceiveAck$oRooU4v4PPphJPhhVSPRuu4ArKg;

    invoke-direct {v2, p0}, Lorg/briarproject/bramble/sync/-$$Lambda$IncomingSession$ReceiveAck$oRooU4v4PPphJPhhVSPRuu4ArKg;-><init>(Lorg/briarproject/bramble/sync/IncomingSession$ReceiveAck;)V

    invoke-interface {v0, v1, v2}, Lorg/briarproject/bramble/api/db/DatabaseComponent;->transaction(ZLorg/briarproject/bramble/api/db/DbRunnable;)V
    :try_end_0
    .catch Lorg/briarproject/bramble/api/db/DbException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 125
    invoke-static {}, Lorg/briarproject/bramble/sync/IncomingSession;->access$500()Ljava/util/logging/Logger;

    move-result-object v1

    sget-object v2, Ljava/util/logging/Level;->WARNING:Ljava/util/logging/Level;

    invoke-static {v1, v2, v0}, Lorg/briarproject/bramble/util/LogUtils;->logException(Ljava/util/logging/Logger;Ljava/util/logging/Level;Ljava/lang/Throwable;)V

    .line 126
    iget-object v0, p0, Lorg/briarproject/bramble/sync/IncomingSession$ReceiveAck;->this$0:Lorg/briarproject/bramble/sync/IncomingSession;

    invoke-virtual {v0}, Lorg/briarproject/bramble/sync/IncomingSession;->interrupt()V

    :goto_0
    return-void
.end method
