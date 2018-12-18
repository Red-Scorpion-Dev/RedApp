.class Lorg/briarproject/bramble/keyagreement/KeyAgreementConnector$ReadableTask;
.super Ljava/lang/Object;
.source "KeyAgreementConnector.java"

# interfaces
.implements Ljava/util/concurrent/Callable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/briarproject/bramble/keyagreement/KeyAgreementConnector;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ReadableTask"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/concurrent/Callable<",
        "Lorg/briarproject/bramble/api/keyagreement/KeyAgreementConnection;",
        ">;"
    }
.end annotation


# instance fields
.field private final connectionTask:Ljava/util/concurrent/Callable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/Callable<",
            "Lorg/briarproject/bramble/api/keyagreement/KeyAgreementConnection;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic this$0:Lorg/briarproject/bramble/keyagreement/KeyAgreementConnector;


# direct methods
.method private constructor <init>(Lorg/briarproject/bramble/keyagreement/KeyAgreementConnector;Ljava/util/concurrent/Callable;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/concurrent/Callable<",
            "Lorg/briarproject/bramble/api/keyagreement/KeyAgreementConnection;",
            ">;)V"
        }
    .end annotation

    .line 186
    iput-object p1, p0, Lorg/briarproject/bramble/keyagreement/KeyAgreementConnector$ReadableTask;->this$0:Lorg/briarproject/bramble/keyagreement/KeyAgreementConnector;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 187
    iput-object p2, p0, Lorg/briarproject/bramble/keyagreement/KeyAgreementConnector$ReadableTask;->connectionTask:Ljava/util/concurrent/Callable;

    return-void
.end method

.method synthetic constructor <init>(Lorg/briarproject/bramble/keyagreement/KeyAgreementConnector;Ljava/util/concurrent/Callable;Lorg/briarproject/bramble/keyagreement/KeyAgreementConnector$1;)V
    .locals 0

    .line 182
    invoke-direct {p0, p1, p2}, Lorg/briarproject/bramble/keyagreement/KeyAgreementConnector$ReadableTask;-><init>(Lorg/briarproject/bramble/keyagreement/KeyAgreementConnector;Ljava/util/concurrent/Callable;)V

    return-void
.end method


# virtual methods
.method public bridge synthetic call()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 182
    invoke-virtual {p0}, Lorg/briarproject/bramble/keyagreement/KeyAgreementConnector$ReadableTask;->call()Lorg/briarproject/bramble/api/keyagreement/KeyAgreementConnection;

    move-result-object v0

    return-object v0
.end method

.method public call()Lorg/briarproject/bramble/api/keyagreement/KeyAgreementConnection;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 193
    iget-object v0, p0, Lorg/briarproject/bramble/keyagreement/KeyAgreementConnector$ReadableTask;->connectionTask:Ljava/util/concurrent/Callable;

    invoke-interface {v0}, Ljava/util/concurrent/Callable;->call()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/briarproject/bramble/api/keyagreement/KeyAgreementConnection;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return-object v0

    .line 195
    :cond_0
    iget-object v1, p0, Lorg/briarproject/bramble/keyagreement/KeyAgreementConnector$ReadableTask;->this$0:Lorg/briarproject/bramble/keyagreement/KeyAgreementConnector;

    invoke-static {v1}, Lorg/briarproject/bramble/keyagreement/KeyAgreementConnector;->access$400(Lorg/briarproject/bramble/keyagreement/KeyAgreementConnector;)Ljava/util/concurrent/CountDownLatch;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/concurrent/CountDownLatch;->await()V

    .line 196
    iget-object v1, p0, Lorg/briarproject/bramble/keyagreement/KeyAgreementConnector$ReadableTask;->this$0:Lorg/briarproject/bramble/keyagreement/KeyAgreementConnector;

    invoke-static {v1}, Lorg/briarproject/bramble/keyagreement/KeyAgreementConnector;->access$500(Lorg/briarproject/bramble/keyagreement/KeyAgreementConnector;)Z

    move-result v1

    if-nez v1, :cond_5

    iget-object v1, p0, Lorg/briarproject/bramble/keyagreement/KeyAgreementConnector$ReadableTask;->this$0:Lorg/briarproject/bramble/keyagreement/KeyAgreementConnector;

    invoke-static {v1}, Lorg/briarproject/bramble/keyagreement/KeyAgreementConnector;->access$200(Lorg/briarproject/bramble/keyagreement/KeyAgreementConnector;)Z

    move-result v1

    if-eqz v1, :cond_1

    goto/16 :goto_1

    .line 199
    :cond_1
    invoke-virtual {v0}, Lorg/briarproject/bramble/api/keyagreement/KeyAgreementConnection;->getConnection()Lorg/briarproject/bramble/api/plugin/duplex/DuplexTransportConnection;

    move-result-object v1

    invoke-interface {v1}, Lorg/briarproject/bramble/api/plugin/duplex/DuplexTransportConnection;->getReader()Lorg/briarproject/bramble/api/plugin/TransportConnectionReader;

    move-result-object v1

    invoke-interface {v1}, Lorg/briarproject/bramble/api/plugin/TransportConnectionReader;->getInputStream()Ljava/io/InputStream;

    move-result-object v1

    .line 200
    :goto_0
    iget-object v2, p0, Lorg/briarproject/bramble/keyagreement/KeyAgreementConnector$ReadableTask;->this$0:Lorg/briarproject/bramble/keyagreement/KeyAgreementConnector;

    invoke-static {v2}, Lorg/briarproject/bramble/keyagreement/KeyAgreementConnector;->access$200(Lorg/briarproject/bramble/keyagreement/KeyAgreementConnector;)Z

    move-result v2

    if-nez v2, :cond_3

    invoke-virtual {v1}, Ljava/io/InputStream;->available()I

    move-result v2

    if-nez v2, :cond_3

    .line 201
    invoke-static {}, Lorg/briarproject/bramble/keyagreement/KeyAgreementConnector;->access$300()Ljava/util/logging/Logger;

    move-result-object v2

    sget-object v3, Ljava/util/logging/Level;->INFO:Ljava/util/logging/Level;

    invoke-virtual {v2, v3}, Ljava/util/logging/Logger;->isLoggable(Ljava/util/logging/Level;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 202
    invoke-static {}, Lorg/briarproject/bramble/keyagreement/KeyAgreementConnector;->access$300()Ljava/util/logging/Logger;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Lorg/briarproject/bramble/api/keyagreement/KeyAgreementConnection;->getTransportId()Lorg/briarproject/bramble/api/plugin/TransportId;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v4, ": Waiting for data"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/logging/Logger;->info(Ljava/lang/String;)V

    .line 203
    :cond_2
    iget-object v2, p0, Lorg/briarproject/bramble/keyagreement/KeyAgreementConnector$ReadableTask;->this$0:Lorg/briarproject/bramble/keyagreement/KeyAgreementConnector;

    invoke-static {v2}, Lorg/briarproject/bramble/keyagreement/KeyAgreementConnector;->access$600(Lorg/briarproject/bramble/keyagreement/KeyAgreementConnector;)V

    const-wide/16 v2, 0x1f4

    .line 204
    invoke-static {v2, v3}, Ljava/lang/Thread;->sleep(J)V

    goto :goto_0

    .line 206
    :cond_3
    iget-object v1, p0, Lorg/briarproject/bramble/keyagreement/KeyAgreementConnector$ReadableTask;->this$0:Lorg/briarproject/bramble/keyagreement/KeyAgreementConnector;

    invoke-static {v1}, Lorg/briarproject/bramble/keyagreement/KeyAgreementConnector;->access$200(Lorg/briarproject/bramble/keyagreement/KeyAgreementConnector;)Z

    move-result v1

    if-nez v1, :cond_4

    invoke-static {}, Lorg/briarproject/bramble/keyagreement/KeyAgreementConnector;->access$300()Ljava/util/logging/Logger;

    move-result-object v1

    sget-object v2, Ljava/util/logging/Level;->INFO:Ljava/util/logging/Level;

    invoke-virtual {v1, v2}, Ljava/util/logging/Logger;->isLoggable(Ljava/util/logging/Level;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 207
    invoke-static {}, Lorg/briarproject/bramble/keyagreement/KeyAgreementConnector;->access$300()Ljava/util/logging/Logger;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Lorg/briarproject/bramble/api/keyagreement/KeyAgreementConnection;->getTransportId()Lorg/briarproject/bramble/api/plugin/TransportId;

    move-result-object v3

    invoke-virtual {v3}, Lorg/briarproject/bramble/api/plugin/TransportId;->getString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ": Data available"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/logging/Logger;->info(Ljava/lang/String;)V

    :cond_4
    return-object v0

    :cond_5
    :goto_1
    return-object v0
.end method
