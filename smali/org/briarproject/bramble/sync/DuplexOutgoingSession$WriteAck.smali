.class Lorg/briarproject/bramble/sync/DuplexOutgoingSession$WriteAck;
.super Ljava/lang/Object;
.source "DuplexOutgoingSession.java"

# interfaces
.implements Lorg/briarproject/bramble/sync/ThrowingRunnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/briarproject/bramble/sync/DuplexOutgoingSession;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "WriteAck"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lorg/briarproject/bramble/sync/ThrowingRunnable<",
        "Ljava/io/IOException;",
        ">;"
    }
.end annotation


# instance fields
.field private final ack:Lorg/briarproject/bramble/api/sync/Ack;

.field final synthetic this$0:Lorg/briarproject/bramble/sync/DuplexOutgoingSession;


# direct methods
.method private constructor <init>(Lorg/briarproject/bramble/sync/DuplexOutgoingSession;Lorg/briarproject/bramble/api/sync/Ack;)V
    .locals 0

    .line 248
    iput-object p1, p0, Lorg/briarproject/bramble/sync/DuplexOutgoingSession$WriteAck;->this$0:Lorg/briarproject/bramble/sync/DuplexOutgoingSession;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 249
    iput-object p2, p0, Lorg/briarproject/bramble/sync/DuplexOutgoingSession$WriteAck;->ack:Lorg/briarproject/bramble/api/sync/Ack;

    return-void
.end method

.method synthetic constructor <init>(Lorg/briarproject/bramble/sync/DuplexOutgoingSession;Lorg/briarproject/bramble/api/sync/Ack;Lorg/briarproject/bramble/sync/DuplexOutgoingSession$1;)V
    .locals 0

    .line 244
    invoke-direct {p0, p1, p2}, Lorg/briarproject/bramble/sync/DuplexOutgoingSession$WriteAck;-><init>(Lorg/briarproject/bramble/sync/DuplexOutgoingSession;Lorg/briarproject/bramble/api/sync/Ack;)V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .annotation runtime Lorg/briarproject/bramble/api/lifecycle/IoExecutor;
    .end annotation

    .line 255
    iget-object v0, p0, Lorg/briarproject/bramble/sync/DuplexOutgoingSession$WriteAck;->this$0:Lorg/briarproject/bramble/sync/DuplexOutgoingSession;

    invoke-static {v0}, Lorg/briarproject/bramble/sync/DuplexOutgoingSession;->access$400(Lorg/briarproject/bramble/sync/DuplexOutgoingSession;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 256
    :cond_0
    iget-object v0, p0, Lorg/briarproject/bramble/sync/DuplexOutgoingSession$WriteAck;->this$0:Lorg/briarproject/bramble/sync/DuplexOutgoingSession;

    invoke-static {v0}, Lorg/briarproject/bramble/sync/DuplexOutgoingSession;->access$1100(Lorg/briarproject/bramble/sync/DuplexOutgoingSession;)Lorg/briarproject/bramble/api/sync/SyncRecordWriter;

    move-result-object v0

    iget-object v1, p0, Lorg/briarproject/bramble/sync/DuplexOutgoingSession$WriteAck;->ack:Lorg/briarproject/bramble/api/sync/Ack;

    invoke-interface {v0, v1}, Lorg/briarproject/bramble/api/sync/SyncRecordWriter;->writeAck(Lorg/briarproject/bramble/api/sync/Ack;)V

    .line 257
    invoke-static {}, Lorg/briarproject/bramble/sync/DuplexOutgoingSession;->access$700()Ljava/util/logging/Logger;

    move-result-object v0

    const-string v1, "Sent ack"

    invoke-virtual {v0, v1}, Ljava/util/logging/Logger;->info(Ljava/lang/String;)V

    .line 258
    iget-object v0, p0, Lorg/briarproject/bramble/sync/DuplexOutgoingSession$WriteAck;->this$0:Lorg/briarproject/bramble/sync/DuplexOutgoingSession;

    invoke-static {v0}, Lorg/briarproject/bramble/sync/DuplexOutgoingSession;->access$1200(Lorg/briarproject/bramble/sync/DuplexOutgoingSession;)V

    return-void
.end method
