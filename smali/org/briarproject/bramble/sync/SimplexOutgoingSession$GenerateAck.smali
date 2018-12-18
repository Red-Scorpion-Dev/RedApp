.class Lorg/briarproject/bramble/sync/SimplexOutgoingSession$GenerateAck;
.super Ljava/lang/Object;
.source "SimplexOutgoingSession.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/briarproject/bramble/sync/SimplexOutgoingSession;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "GenerateAck"
.end annotation


# instance fields
.field final synthetic this$0:Lorg/briarproject/bramble/sync/SimplexOutgoingSession;


# direct methods
.method private constructor <init>(Lorg/briarproject/bramble/sync/SimplexOutgoingSession;)V
    .locals 0

    .line 124
    iput-object p1, p0, Lorg/briarproject/bramble/sync/SimplexOutgoingSession$GenerateAck;->this$0:Lorg/briarproject/bramble/sync/SimplexOutgoingSession;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lorg/briarproject/bramble/sync/SimplexOutgoingSession;Lorg/briarproject/bramble/sync/SimplexOutgoingSession$1;)V
    .locals 0

    .line 124
    invoke-direct {p0, p1}, Lorg/briarproject/bramble/sync/SimplexOutgoingSession$GenerateAck;-><init>(Lorg/briarproject/bramble/sync/SimplexOutgoingSession;)V

    return-void
.end method

.method public static synthetic lambda$run$0(Lorg/briarproject/bramble/sync/SimplexOutgoingSession$GenerateAck;Lorg/briarproject/bramble/api/db/Transaction;)Lorg/briarproject/bramble/api/sync/Ack;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/briarproject/bramble/api/db/DbException;,
            Ljava/lang/RuntimeException;
        }
    .end annotation

    .line 132
    iget-object v0, p0, Lorg/briarproject/bramble/sync/SimplexOutgoingSession$GenerateAck;->this$0:Lorg/briarproject/bramble/sync/SimplexOutgoingSession;

    invoke-static {v0}, Lorg/briarproject/bramble/sync/SimplexOutgoingSession;->access$300(Lorg/briarproject/bramble/sync/SimplexOutgoingSession;)Lorg/briarproject/bramble/api/db/DatabaseComponent;

    move-result-object v0

    iget-object v1, p0, Lorg/briarproject/bramble/sync/SimplexOutgoingSession$GenerateAck;->this$0:Lorg/briarproject/bramble/sync/SimplexOutgoingSession;

    invoke-static {v1}, Lorg/briarproject/bramble/sync/SimplexOutgoingSession;->access$800(Lorg/briarproject/bramble/sync/SimplexOutgoingSession;)Lorg/briarproject/bramble/api/contact/ContactId;

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

    .line 129
    iget-object v0, p0, Lorg/briarproject/bramble/sync/SimplexOutgoingSession$GenerateAck;->this$0:Lorg/briarproject/bramble/sync/SimplexOutgoingSession;

    invoke-static {v0}, Lorg/briarproject/bramble/sync/SimplexOutgoingSession;->access$200(Lorg/briarproject/bramble/sync/SimplexOutgoingSession;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 131
    :cond_0
    :try_start_0
    iget-object v0, p0, Lorg/briarproject/bramble/sync/SimplexOutgoingSession$GenerateAck;->this$0:Lorg/briarproject/bramble/sync/SimplexOutgoingSession;

    invoke-static {v0}, Lorg/briarproject/bramble/sync/SimplexOutgoingSession;->access$300(Lorg/briarproject/bramble/sync/SimplexOutgoingSession;)Lorg/briarproject/bramble/api/db/DatabaseComponent;

    move-result-object v0

    new-instance v1, Lorg/briarproject/bramble/sync/-$$Lambda$SimplexOutgoingSession$GenerateAck$MilyVfLo8XB8Qs15YqhHsWxpUx0;

    invoke-direct {v1, p0}, Lorg/briarproject/bramble/sync/-$$Lambda$SimplexOutgoingSession$GenerateAck$MilyVfLo8XB8Qs15YqhHsWxpUx0;-><init>(Lorg/briarproject/bramble/sync/SimplexOutgoingSession$GenerateAck;)V

    const/4 v2, 0x0

    invoke-interface {v0, v2, v1}, Lorg/briarproject/bramble/api/db/DatabaseComponent;->transactionWithNullableResult(ZLorg/briarproject/bramble/api/db/NullableDbCallable;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/briarproject/bramble/api/sync/Ack;

    .line 133
    invoke-static {}, Lorg/briarproject/bramble/sync/SimplexOutgoingSession;->access$400()Ljava/util/logging/Logger;

    move-result-object v1

    sget-object v3, Ljava/util/logging/Level;->INFO:Ljava/util/logging/Level;

    invoke-virtual {v1, v3}, Ljava/util/logging/Logger;->isLoggable(Ljava/util/logging/Level;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 134
    invoke-static {}, Lorg/briarproject/bramble/sync/SimplexOutgoingSession;->access$400()Ljava/util/logging/Logger;

    move-result-object v1

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Generated ack: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-eqz v0, :cond_1

    const/4 v2, 0x1

    :cond_1
    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/logging/Logger;->info(Ljava/lang/String;)V

    :cond_2
    if-nez v0, :cond_3

    .line 135
    iget-object v0, p0, Lorg/briarproject/bramble/sync/SimplexOutgoingSession$GenerateAck;->this$0:Lorg/briarproject/bramble/sync/SimplexOutgoingSession;

    invoke-static {v0}, Lorg/briarproject/bramble/sync/SimplexOutgoingSession;->access$500(Lorg/briarproject/bramble/sync/SimplexOutgoingSession;)V

    goto :goto_0

    .line 136
    :cond_3
    iget-object v1, p0, Lorg/briarproject/bramble/sync/SimplexOutgoingSession$GenerateAck;->this$0:Lorg/briarproject/bramble/sync/SimplexOutgoingSession;

    invoke-static {v1}, Lorg/briarproject/bramble/sync/SimplexOutgoingSession;->access$700(Lorg/briarproject/bramble/sync/SimplexOutgoingSession;)Ljava/util/concurrent/BlockingQueue;

    move-result-object v1

    new-instance v2, Lorg/briarproject/bramble/sync/SimplexOutgoingSession$WriteAck;

    iget-object v3, p0, Lorg/briarproject/bramble/sync/SimplexOutgoingSession$GenerateAck;->this$0:Lorg/briarproject/bramble/sync/SimplexOutgoingSession;

    const/4 v4, 0x0

    invoke-direct {v2, v3, v0, v4}, Lorg/briarproject/bramble/sync/SimplexOutgoingSession$WriteAck;-><init>(Lorg/briarproject/bramble/sync/SimplexOutgoingSession;Lorg/briarproject/bramble/api/sync/Ack;Lorg/briarproject/bramble/sync/SimplexOutgoingSession$1;)V

    invoke-interface {v1, v2}, Ljava/util/concurrent/BlockingQueue;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Lorg/briarproject/bramble/api/db/DbException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 138
    invoke-static {}, Lorg/briarproject/bramble/sync/SimplexOutgoingSession;->access$400()Ljava/util/logging/Logger;

    move-result-object v1

    sget-object v2, Ljava/util/logging/Level;->WARNING:Ljava/util/logging/Level;

    invoke-static {v1, v2, v0}, Lorg/briarproject/bramble/util/LogUtils;->logException(Ljava/util/logging/Logger;Ljava/util/logging/Level;Ljava/lang/Throwable;)V

    .line 139
    iget-object v0, p0, Lorg/briarproject/bramble/sync/SimplexOutgoingSession$GenerateAck;->this$0:Lorg/briarproject/bramble/sync/SimplexOutgoingSession;

    invoke-virtual {v0}, Lorg/briarproject/bramble/sync/SimplexOutgoingSession;->interrupt()V

    :goto_0
    return-void
.end method
