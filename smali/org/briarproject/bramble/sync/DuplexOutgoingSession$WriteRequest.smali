.class Lorg/briarproject/bramble/sync/DuplexOutgoingSession$WriteRequest;
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
    name = "WriteRequest"
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
.field private final request:Lorg/briarproject/bramble/api/sync/Request;

.field final synthetic this$0:Lorg/briarproject/bramble/sync/DuplexOutgoingSession;


# direct methods
.method private constructor <init>(Lorg/briarproject/bramble/sync/DuplexOutgoingSession;Lorg/briarproject/bramble/api/sync/Request;)V
    .locals 0

    .line 376
    iput-object p1, p0, Lorg/briarproject/bramble/sync/DuplexOutgoingSession$WriteRequest;->this$0:Lorg/briarproject/bramble/sync/DuplexOutgoingSession;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 377
    iput-object p2, p0, Lorg/briarproject/bramble/sync/DuplexOutgoingSession$WriteRequest;->request:Lorg/briarproject/bramble/api/sync/Request;

    return-void
.end method

.method synthetic constructor <init>(Lorg/briarproject/bramble/sync/DuplexOutgoingSession;Lorg/briarproject/bramble/api/sync/Request;Lorg/briarproject/bramble/sync/DuplexOutgoingSession$1;)V
    .locals 0

    .line 372
    invoke-direct {p0, p1, p2}, Lorg/briarproject/bramble/sync/DuplexOutgoingSession$WriteRequest;-><init>(Lorg/briarproject/bramble/sync/DuplexOutgoingSession;Lorg/briarproject/bramble/api/sync/Request;)V

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

    .line 383
    iget-object v0, p0, Lorg/briarproject/bramble/sync/DuplexOutgoingSession$WriteRequest;->this$0:Lorg/briarproject/bramble/sync/DuplexOutgoingSession;

    invoke-static {v0}, Lorg/briarproject/bramble/sync/DuplexOutgoingSession;->access$400(Lorg/briarproject/bramble/sync/DuplexOutgoingSession;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 384
    :cond_0
    iget-object v0, p0, Lorg/briarproject/bramble/sync/DuplexOutgoingSession$WriteRequest;->this$0:Lorg/briarproject/bramble/sync/DuplexOutgoingSession;

    invoke-static {v0}, Lorg/briarproject/bramble/sync/DuplexOutgoingSession;->access$1100(Lorg/briarproject/bramble/sync/DuplexOutgoingSession;)Lorg/briarproject/bramble/api/sync/SyncRecordWriter;

    move-result-object v0

    iget-object v1, p0, Lorg/briarproject/bramble/sync/DuplexOutgoingSession$WriteRequest;->request:Lorg/briarproject/bramble/api/sync/Request;

    invoke-interface {v0, v1}, Lorg/briarproject/bramble/api/sync/SyncRecordWriter;->writeRequest(Lorg/briarproject/bramble/api/sync/Request;)V

    .line 385
    invoke-static {}, Lorg/briarproject/bramble/sync/DuplexOutgoingSession;->access$700()Ljava/util/logging/Logger;

    move-result-object v0

    const-string v1, "Sent request"

    invoke-virtual {v0, v1}, Ljava/util/logging/Logger;->info(Ljava/lang/String;)V

    .line 386
    iget-object v0, p0, Lorg/briarproject/bramble/sync/DuplexOutgoingSession$WriteRequest;->this$0:Lorg/briarproject/bramble/sync/DuplexOutgoingSession;

    invoke-static {v0}, Lorg/briarproject/bramble/sync/DuplexOutgoingSession;->access$2300(Lorg/briarproject/bramble/sync/DuplexOutgoingSession;)V

    return-void
.end method
