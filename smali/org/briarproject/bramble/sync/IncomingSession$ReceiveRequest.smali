.class Lorg/briarproject/bramble/sync/IncomingSession$ReceiveRequest;
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
    name = "ReceiveRequest"
.end annotation


# instance fields
.field private final request:Lorg/briarproject/bramble/api/sync/Request;

.field final synthetic this$0:Lorg/briarproject/bramble/sync/IncomingSession;


# direct methods
.method private constructor <init>(Lorg/briarproject/bramble/sync/IncomingSession;Lorg/briarproject/bramble/api/sync/Request;)V
    .locals 0

    .line 177
    iput-object p1, p0, Lorg/briarproject/bramble/sync/IncomingSession$ReceiveRequest;->this$0:Lorg/briarproject/bramble/sync/IncomingSession;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 178
    iput-object p2, p0, Lorg/briarproject/bramble/sync/IncomingSession$ReceiveRequest;->request:Lorg/briarproject/bramble/api/sync/Request;

    return-void
.end method

.method synthetic constructor <init>(Lorg/briarproject/bramble/sync/IncomingSession;Lorg/briarproject/bramble/api/sync/Request;Lorg/briarproject/bramble/sync/IncomingSession$1;)V
    .locals 0

    .line 173
    invoke-direct {p0, p1, p2}, Lorg/briarproject/bramble/sync/IncomingSession$ReceiveRequest;-><init>(Lorg/briarproject/bramble/sync/IncomingSession;Lorg/briarproject/bramble/api/sync/Request;)V

    return-void
.end method

.method public static synthetic lambda$run$0(Lorg/briarproject/bramble/sync/IncomingSession$ReceiveRequest;Lorg/briarproject/bramble/api/db/Transaction;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/briarproject/bramble/api/db/DbException;,
            Ljava/lang/RuntimeException;
        }
    .end annotation

    .line 186
    iget-object v0, p0, Lorg/briarproject/bramble/sync/IncomingSession$ReceiveRequest;->this$0:Lorg/briarproject/bramble/sync/IncomingSession;

    invoke-static {v0}, Lorg/briarproject/bramble/sync/IncomingSession;->access$400(Lorg/briarproject/bramble/sync/IncomingSession;)Lorg/briarproject/bramble/api/db/DatabaseComponent;

    move-result-object v0

    iget-object v1, p0, Lorg/briarproject/bramble/sync/IncomingSession$ReceiveRequest;->this$0:Lorg/briarproject/bramble/sync/IncomingSession;

    invoke-static {v1}, Lorg/briarproject/bramble/sync/IncomingSession;->access$600(Lorg/briarproject/bramble/sync/IncomingSession;)Lorg/briarproject/bramble/api/contact/ContactId;

    move-result-object v1

    iget-object v2, p0, Lorg/briarproject/bramble/sync/IncomingSession$ReceiveRequest;->request:Lorg/briarproject/bramble/api/sync/Request;

    invoke-interface {v0, p1, v1, v2}, Lorg/briarproject/bramble/api/db/DatabaseComponent;->receiveRequest(Lorg/briarproject/bramble/api/db/Transaction;Lorg/briarproject/bramble/api/contact/ContactId;Lorg/briarproject/bramble/api/sync/Request;)V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3
    .annotation runtime Lorg/briarproject/bramble/api/db/DatabaseExecutor;
    .end annotation

    .line 185
    :try_start_0
    iget-object v0, p0, Lorg/briarproject/bramble/sync/IncomingSession$ReceiveRequest;->this$0:Lorg/briarproject/bramble/sync/IncomingSession;

    invoke-static {v0}, Lorg/briarproject/bramble/sync/IncomingSession;->access$400(Lorg/briarproject/bramble/sync/IncomingSession;)Lorg/briarproject/bramble/api/db/DatabaseComponent;

    move-result-object v0

    const/4 v1, 0x0

    new-instance v2, Lorg/briarproject/bramble/sync/-$$Lambda$IncomingSession$ReceiveRequest$V1OyXLbYGm02kHbQXtS8sKJwTXc;

    invoke-direct {v2, p0}, Lorg/briarproject/bramble/sync/-$$Lambda$IncomingSession$ReceiveRequest$V1OyXLbYGm02kHbQXtS8sKJwTXc;-><init>(Lorg/briarproject/bramble/sync/IncomingSession$ReceiveRequest;)V

    invoke-interface {v0, v1, v2}, Lorg/briarproject/bramble/api/db/DatabaseComponent;->transaction(ZLorg/briarproject/bramble/api/db/DbRunnable;)V
    :try_end_0
    .catch Lorg/briarproject/bramble/api/db/DbException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 188
    invoke-static {}, Lorg/briarproject/bramble/sync/IncomingSession;->access$500()Ljava/util/logging/Logger;

    move-result-object v1

    sget-object v2, Ljava/util/logging/Level;->WARNING:Ljava/util/logging/Level;

    invoke-static {v1, v2, v0}, Lorg/briarproject/bramble/util/LogUtils;->logException(Ljava/util/logging/Logger;Ljava/util/logging/Level;Ljava/lang/Throwable;)V

    .line 189
    iget-object v0, p0, Lorg/briarproject/bramble/sync/IncomingSession$ReceiveRequest;->this$0:Lorg/briarproject/bramble/sync/IncomingSession;

    invoke-virtual {v0}, Lorg/briarproject/bramble/sync/IncomingSession;->interrupt()V

    :goto_0
    return-void
.end method
