.class Lorg/briarproject/bramble/sync/DuplexOutgoingSession$WriteOffer;
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
    name = "WriteOffer"
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
.field private final offer:Lorg/briarproject/bramble/api/sync/Offer;

.field final synthetic this$0:Lorg/briarproject/bramble/sync/DuplexOutgoingSession;


# direct methods
.method private constructor <init>(Lorg/briarproject/bramble/sync/DuplexOutgoingSession;Lorg/briarproject/bramble/api/sync/Offer;)V
    .locals 0

    .line 337
    iput-object p1, p0, Lorg/briarproject/bramble/sync/DuplexOutgoingSession$WriteOffer;->this$0:Lorg/briarproject/bramble/sync/DuplexOutgoingSession;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 338
    iput-object p2, p0, Lorg/briarproject/bramble/sync/DuplexOutgoingSession$WriteOffer;->offer:Lorg/briarproject/bramble/api/sync/Offer;

    return-void
.end method

.method synthetic constructor <init>(Lorg/briarproject/bramble/sync/DuplexOutgoingSession;Lorg/briarproject/bramble/api/sync/Offer;Lorg/briarproject/bramble/sync/DuplexOutgoingSession$1;)V
    .locals 0

    .line 333
    invoke-direct {p0, p1, p2}, Lorg/briarproject/bramble/sync/DuplexOutgoingSession$WriteOffer;-><init>(Lorg/briarproject/bramble/sync/DuplexOutgoingSession;Lorg/briarproject/bramble/api/sync/Offer;)V

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

    .line 344
    iget-object v0, p0, Lorg/briarproject/bramble/sync/DuplexOutgoingSession$WriteOffer;->this$0:Lorg/briarproject/bramble/sync/DuplexOutgoingSession;

    invoke-static {v0}, Lorg/briarproject/bramble/sync/DuplexOutgoingSession;->access$400(Lorg/briarproject/bramble/sync/DuplexOutgoingSession;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 345
    :cond_0
    iget-object v0, p0, Lorg/briarproject/bramble/sync/DuplexOutgoingSession$WriteOffer;->this$0:Lorg/briarproject/bramble/sync/DuplexOutgoingSession;

    invoke-static {v0}, Lorg/briarproject/bramble/sync/DuplexOutgoingSession;->access$1100(Lorg/briarproject/bramble/sync/DuplexOutgoingSession;)Lorg/briarproject/bramble/api/sync/SyncRecordWriter;

    move-result-object v0

    iget-object v1, p0, Lorg/briarproject/bramble/sync/DuplexOutgoingSession$WriteOffer;->offer:Lorg/briarproject/bramble/api/sync/Offer;

    invoke-interface {v0, v1}, Lorg/briarproject/bramble/api/sync/SyncRecordWriter;->writeOffer(Lorg/briarproject/bramble/api/sync/Offer;)V

    .line 346
    invoke-static {}, Lorg/briarproject/bramble/sync/DuplexOutgoingSession;->access$700()Ljava/util/logging/Logger;

    move-result-object v0

    const-string v1, "Sent offer"

    invoke-virtual {v0, v1}, Ljava/util/logging/Logger;->info(Ljava/lang/String;)V

    .line 347
    iget-object v0, p0, Lorg/briarproject/bramble/sync/DuplexOutgoingSession$WriteOffer;->this$0:Lorg/briarproject/bramble/sync/DuplexOutgoingSession;

    invoke-static {v0}, Lorg/briarproject/bramble/sync/DuplexOutgoingSession;->access$2000(Lorg/briarproject/bramble/sync/DuplexOutgoingSession;)V

    return-void
.end method
