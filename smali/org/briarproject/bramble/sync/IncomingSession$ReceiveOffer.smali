.class Lorg/briarproject/bramble/sync/IncomingSession$ReceiveOffer;
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
    name = "ReceiveOffer"
.end annotation


# instance fields
.field private final offer:Lorg/briarproject/bramble/api/sync/Offer;

.field final synthetic this$0:Lorg/briarproject/bramble/sync/IncomingSession;


# direct methods
.method private constructor <init>(Lorg/briarproject/bramble/sync/IncomingSession;Lorg/briarproject/bramble/api/sync/Offer;)V
    .locals 0

    .line 156
    iput-object p1, p0, Lorg/briarproject/bramble/sync/IncomingSession$ReceiveOffer;->this$0:Lorg/briarproject/bramble/sync/IncomingSession;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 157
    iput-object p2, p0, Lorg/briarproject/bramble/sync/IncomingSession$ReceiveOffer;->offer:Lorg/briarproject/bramble/api/sync/Offer;

    return-void
.end method

.method synthetic constructor <init>(Lorg/briarproject/bramble/sync/IncomingSession;Lorg/briarproject/bramble/api/sync/Offer;Lorg/briarproject/bramble/sync/IncomingSession$1;)V
    .locals 0

    .line 152
    invoke-direct {p0, p1, p2}, Lorg/briarproject/bramble/sync/IncomingSession$ReceiveOffer;-><init>(Lorg/briarproject/bramble/sync/IncomingSession;Lorg/briarproject/bramble/api/sync/Offer;)V

    return-void
.end method

.method public static synthetic lambda$run$0(Lorg/briarproject/bramble/sync/IncomingSession$ReceiveOffer;Lorg/briarproject/bramble/api/db/Transaction;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/briarproject/bramble/api/db/DbException;,
            Ljava/lang/RuntimeException;
        }
    .end annotation

    .line 165
    iget-object v0, p0, Lorg/briarproject/bramble/sync/IncomingSession$ReceiveOffer;->this$0:Lorg/briarproject/bramble/sync/IncomingSession;

    invoke-static {v0}, Lorg/briarproject/bramble/sync/IncomingSession;->access$400(Lorg/briarproject/bramble/sync/IncomingSession;)Lorg/briarproject/bramble/api/db/DatabaseComponent;

    move-result-object v0

    iget-object v1, p0, Lorg/briarproject/bramble/sync/IncomingSession$ReceiveOffer;->this$0:Lorg/briarproject/bramble/sync/IncomingSession;

    invoke-static {v1}, Lorg/briarproject/bramble/sync/IncomingSession;->access$600(Lorg/briarproject/bramble/sync/IncomingSession;)Lorg/briarproject/bramble/api/contact/ContactId;

    move-result-object v1

    iget-object v2, p0, Lorg/briarproject/bramble/sync/IncomingSession$ReceiveOffer;->offer:Lorg/briarproject/bramble/api/sync/Offer;

    invoke-interface {v0, p1, v1, v2}, Lorg/briarproject/bramble/api/db/DatabaseComponent;->receiveOffer(Lorg/briarproject/bramble/api/db/Transaction;Lorg/briarproject/bramble/api/contact/ContactId;Lorg/briarproject/bramble/api/sync/Offer;)V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3
    .annotation runtime Lorg/briarproject/bramble/api/db/DatabaseExecutor;
    .end annotation

    .line 164
    :try_start_0
    iget-object v0, p0, Lorg/briarproject/bramble/sync/IncomingSession$ReceiveOffer;->this$0:Lorg/briarproject/bramble/sync/IncomingSession;

    invoke-static {v0}, Lorg/briarproject/bramble/sync/IncomingSession;->access$400(Lorg/briarproject/bramble/sync/IncomingSession;)Lorg/briarproject/bramble/api/db/DatabaseComponent;

    move-result-object v0

    const/4 v1, 0x0

    new-instance v2, Lorg/briarproject/bramble/sync/-$$Lambda$IncomingSession$ReceiveOffer$aYhyKwszbZ6cY0sZkn0Attyen10;

    invoke-direct {v2, p0}, Lorg/briarproject/bramble/sync/-$$Lambda$IncomingSession$ReceiveOffer$aYhyKwszbZ6cY0sZkn0Attyen10;-><init>(Lorg/briarproject/bramble/sync/IncomingSession$ReceiveOffer;)V

    invoke-interface {v0, v1, v2}, Lorg/briarproject/bramble/api/db/DatabaseComponent;->transaction(ZLorg/briarproject/bramble/api/db/DbRunnable;)V
    :try_end_0
    .catch Lorg/briarproject/bramble/api/db/DbException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 167
    invoke-static {}, Lorg/briarproject/bramble/sync/IncomingSession;->access$500()Ljava/util/logging/Logger;

    move-result-object v1

    sget-object v2, Ljava/util/logging/Level;->WARNING:Ljava/util/logging/Level;

    invoke-static {v1, v2, v0}, Lorg/briarproject/bramble/util/LogUtils;->logException(Ljava/util/logging/Logger;Ljava/util/logging/Level;Ljava/lang/Throwable;)V

    .line 168
    iget-object v0, p0, Lorg/briarproject/bramble/sync/IncomingSession$ReceiveOffer;->this$0:Lorg/briarproject/bramble/sync/IncomingSession;

    invoke-virtual {v0}, Lorg/briarproject/bramble/sync/IncomingSession;->interrupt()V

    :goto_0
    return-void
.end method
