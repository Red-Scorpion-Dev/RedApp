.class Lorg/briarproject/bramble/sync/SimplexOutgoingSession$WriteAck;
.super Ljava/lang/Object;
.source "SimplexOutgoingSession.java"

# interfaces
.implements Lorg/briarproject/bramble/sync/ThrowingRunnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/briarproject/bramble/sync/SimplexOutgoingSession;
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

.field final synthetic this$0:Lorg/briarproject/bramble/sync/SimplexOutgoingSession;


# direct methods
.method private constructor <init>(Lorg/briarproject/bramble/sync/SimplexOutgoingSession;Lorg/briarproject/bramble/api/sync/Ack;)V
    .locals 0

    .line 148
    iput-object p1, p0, Lorg/briarproject/bramble/sync/SimplexOutgoingSession$WriteAck;->this$0:Lorg/briarproject/bramble/sync/SimplexOutgoingSession;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 149
    iput-object p2, p0, Lorg/briarproject/bramble/sync/SimplexOutgoingSession$WriteAck;->ack:Lorg/briarproject/bramble/api/sync/Ack;

    return-void
.end method

.method synthetic constructor <init>(Lorg/briarproject/bramble/sync/SimplexOutgoingSession;Lorg/briarproject/bramble/api/sync/Ack;Lorg/briarproject/bramble/sync/SimplexOutgoingSession$1;)V
    .locals 0

    .line 144
    invoke-direct {p0, p1, p2}, Lorg/briarproject/bramble/sync/SimplexOutgoingSession$WriteAck;-><init>(Lorg/briarproject/bramble/sync/SimplexOutgoingSession;Lorg/briarproject/bramble/api/sync/Ack;)V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .annotation runtime Lorg/briarproject/bramble/api/lifecycle/IoExecutor;
    .end annotation

    .line 155
    iget-object v0, p0, Lorg/briarproject/bramble/sync/SimplexOutgoingSession$WriteAck;->this$0:Lorg/briarproject/bramble/sync/SimplexOutgoingSession;

    invoke-static {v0}, Lorg/briarproject/bramble/sync/SimplexOutgoingSession;->access$200(Lorg/briarproject/bramble/sync/SimplexOutgoingSession;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 156
    :cond_0
    iget-object v0, p0, Lorg/briarproject/bramble/sync/SimplexOutgoingSession$WriteAck;->this$0:Lorg/briarproject/bramble/sync/SimplexOutgoingSession;

    invoke-static {v0}, Lorg/briarproject/bramble/sync/SimplexOutgoingSession;->access$900(Lorg/briarproject/bramble/sync/SimplexOutgoingSession;)Lorg/briarproject/bramble/api/sync/SyncRecordWriter;

    move-result-object v0

    iget-object v1, p0, Lorg/briarproject/bramble/sync/SimplexOutgoingSession$WriteAck;->ack:Lorg/briarproject/bramble/api/sync/Ack;

    invoke-interface {v0, v1}, Lorg/briarproject/bramble/api/sync/SyncRecordWriter;->writeAck(Lorg/briarproject/bramble/api/sync/Ack;)V

    .line 157
    invoke-static {}, Lorg/briarproject/bramble/sync/SimplexOutgoingSession;->access$400()Ljava/util/logging/Logger;

    move-result-object v0

    const-string v1, "Sent ack"

    invoke-virtual {v0, v1}, Ljava/util/logging/Logger;->info(Ljava/lang/String;)V

    .line 158
    iget-object v0, p0, Lorg/briarproject/bramble/sync/SimplexOutgoingSession$WriteAck;->this$0:Lorg/briarproject/bramble/sync/SimplexOutgoingSession;

    invoke-static {v0}, Lorg/briarproject/bramble/sync/SimplexOutgoingSession;->access$1000(Lorg/briarproject/bramble/sync/SimplexOutgoingSession;)Ljava/util/concurrent/Executor;

    move-result-object v0

    new-instance v1, Lorg/briarproject/bramble/sync/SimplexOutgoingSession$GenerateAck;

    iget-object v2, p0, Lorg/briarproject/bramble/sync/SimplexOutgoingSession$WriteAck;->this$0:Lorg/briarproject/bramble/sync/SimplexOutgoingSession;

    const/4 v3, 0x0

    invoke-direct {v1, v2, v3}, Lorg/briarproject/bramble/sync/SimplexOutgoingSession$GenerateAck;-><init>(Lorg/briarproject/bramble/sync/SimplexOutgoingSession;Lorg/briarproject/bramble/sync/SimplexOutgoingSession$1;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method
