.class Lorg/briarproject/bramble/sync/SimplexOutgoingSession$WriteBatch;
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
    name = "WriteBatch"
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
.field private final batch:Ljava/util/Collection;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Collection<",
            "Lorg/briarproject/bramble/api/sync/Message;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic this$0:Lorg/briarproject/bramble/sync/SimplexOutgoingSession;


# direct methods
.method private constructor <init>(Lorg/briarproject/bramble/sync/SimplexOutgoingSession;Ljava/util/Collection;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "Lorg/briarproject/bramble/api/sync/Message;",
            ">;)V"
        }
    .end annotation

    .line 188
    iput-object p1, p0, Lorg/briarproject/bramble/sync/SimplexOutgoingSession$WriteBatch;->this$0:Lorg/briarproject/bramble/sync/SimplexOutgoingSession;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 189
    iput-object p2, p0, Lorg/briarproject/bramble/sync/SimplexOutgoingSession$WriteBatch;->batch:Ljava/util/Collection;

    return-void
.end method

.method synthetic constructor <init>(Lorg/briarproject/bramble/sync/SimplexOutgoingSession;Ljava/util/Collection;Lorg/briarproject/bramble/sync/SimplexOutgoingSession$1;)V
    .locals 0

    .line 184
    invoke-direct {p0, p1, p2}, Lorg/briarproject/bramble/sync/SimplexOutgoingSession$WriteBatch;-><init>(Lorg/briarproject/bramble/sync/SimplexOutgoingSession;Ljava/util/Collection;)V

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

    .line 195
    iget-object v0, p0, Lorg/briarproject/bramble/sync/SimplexOutgoingSession$WriteBatch;->this$0:Lorg/briarproject/bramble/sync/SimplexOutgoingSession;

    invoke-static {v0}, Lorg/briarproject/bramble/sync/SimplexOutgoingSession;->access$200(Lorg/briarproject/bramble/sync/SimplexOutgoingSession;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 196
    :cond_0
    iget-object v0, p0, Lorg/briarproject/bramble/sync/SimplexOutgoingSession$WriteBatch;->batch:Ljava/util/Collection;

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/briarproject/bramble/api/sync/Message;

    iget-object v2, p0, Lorg/briarproject/bramble/sync/SimplexOutgoingSession$WriteBatch;->this$0:Lorg/briarproject/bramble/sync/SimplexOutgoingSession;

    invoke-static {v2}, Lorg/briarproject/bramble/sync/SimplexOutgoingSession;->access$900(Lorg/briarproject/bramble/sync/SimplexOutgoingSession;)Lorg/briarproject/bramble/api/sync/SyncRecordWriter;

    move-result-object v2

    invoke-interface {v2, v1}, Lorg/briarproject/bramble/api/sync/SyncRecordWriter;->writeMessage(Lorg/briarproject/bramble/api/sync/Message;)V

    goto :goto_0

    .line 197
    :cond_1
    invoke-static {}, Lorg/briarproject/bramble/sync/SimplexOutgoingSession;->access$400()Ljava/util/logging/Logger;

    move-result-object v0

    const-string v1, "Sent batch"

    invoke-virtual {v0, v1}, Ljava/util/logging/Logger;->info(Ljava/lang/String;)V

    .line 198
    iget-object v0, p0, Lorg/briarproject/bramble/sync/SimplexOutgoingSession$WriteBatch;->this$0:Lorg/briarproject/bramble/sync/SimplexOutgoingSession;

    invoke-static {v0}, Lorg/briarproject/bramble/sync/SimplexOutgoingSession;->access$1000(Lorg/briarproject/bramble/sync/SimplexOutgoingSession;)Ljava/util/concurrent/Executor;

    move-result-object v0

    new-instance v1, Lorg/briarproject/bramble/sync/SimplexOutgoingSession$GenerateBatch;

    iget-object v2, p0, Lorg/briarproject/bramble/sync/SimplexOutgoingSession$WriteBatch;->this$0:Lorg/briarproject/bramble/sync/SimplexOutgoingSession;

    const/4 v3, 0x0

    invoke-direct {v1, v2, v3}, Lorg/briarproject/bramble/sync/SimplexOutgoingSession$GenerateBatch;-><init>(Lorg/briarproject/bramble/sync/SimplexOutgoingSession;Lorg/briarproject/bramble/sync/SimplexOutgoingSession$1;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method
