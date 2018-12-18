.class Lorg/briarproject/bramble/plugin/Poller$PollTask;
.super Ljava/lang/Object;
.source "Poller.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/briarproject/bramble/plugin/Poller;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "PollTask"
.end annotation


# instance fields
.field private final due:J

.field private final plugin:Lorg/briarproject/bramble/api/plugin/Plugin;

.field private final randomiseNext:Z

.field final synthetic this$0:Lorg/briarproject/bramble/plugin/Poller;


# direct methods
.method private constructor <init>(Lorg/briarproject/bramble/plugin/Poller;Lorg/briarproject/bramble/api/plugin/Plugin;JZ)V
    .locals 0

    .line 236
    iput-object p1, p0, Lorg/briarproject/bramble/plugin/Poller$PollTask;->this$0:Lorg/briarproject/bramble/plugin/Poller;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 237
    iput-object p2, p0, Lorg/briarproject/bramble/plugin/Poller$PollTask;->plugin:Lorg/briarproject/bramble/api/plugin/Plugin;

    .line 238
    iput-wide p3, p0, Lorg/briarproject/bramble/plugin/Poller$PollTask;->due:J

    .line 239
    iput-boolean p5, p0, Lorg/briarproject/bramble/plugin/Poller$PollTask;->randomiseNext:Z

    return-void
.end method

.method synthetic constructor <init>(Lorg/briarproject/bramble/plugin/Poller;Lorg/briarproject/bramble/api/plugin/Plugin;JZLorg/briarproject/bramble/plugin/Poller$1;)V
    .locals 0

    .line 230
    invoke-direct/range {p0 .. p5}, Lorg/briarproject/bramble/plugin/Poller$PollTask;-><init>(Lorg/briarproject/bramble/plugin/Poller;Lorg/briarproject/bramble/api/plugin/Plugin;JZ)V

    return-void
.end method

.method static synthetic access$100(Lorg/briarproject/bramble/plugin/Poller$PollTask;)J
    .locals 2

    .line 230
    iget-wide v0, p0, Lorg/briarproject/bramble/plugin/Poller$PollTask;->due:J

    return-wide v0
.end method


# virtual methods
.method public run()V
    .locals 4
    .annotation runtime Lorg/briarproject/bramble/api/lifecycle/IoExecutor;
    .end annotation

    .line 245
    iget-object v0, p0, Lorg/briarproject/bramble/plugin/Poller$PollTask;->this$0:Lorg/briarproject/bramble/plugin/Poller;

    invoke-static {v0}, Lorg/briarproject/bramble/plugin/Poller;->access$500(Lorg/briarproject/bramble/plugin/Poller;)Ljava/util/concurrent/locks/Lock;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->lock()V

    .line 247
    :try_start_0
    iget-object v0, p0, Lorg/briarproject/bramble/plugin/Poller$PollTask;->plugin:Lorg/briarproject/bramble/api/plugin/Plugin;

    invoke-interface {v0}, Lorg/briarproject/bramble/api/plugin/Plugin;->getId()Lorg/briarproject/bramble/api/plugin/TransportId;

    move-result-object v0

    .line 248
    iget-object v1, p0, Lorg/briarproject/bramble/plugin/Poller$PollTask;->this$0:Lorg/briarproject/bramble/plugin/Poller;

    invoke-static {v1}, Lorg/briarproject/bramble/plugin/Poller;->access$600(Lorg/briarproject/bramble/plugin/Poller;)Ljava/util/Map;

    move-result-object v1

    invoke-interface {v1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/briarproject/bramble/plugin/Poller$ScheduledPollTask;

    if-eqz v1, :cond_0

    .line 249
    invoke-static {v1}, Lorg/briarproject/bramble/plugin/Poller$ScheduledPollTask;->access$000(Lorg/briarproject/bramble/plugin/Poller$ScheduledPollTask;)Lorg/briarproject/bramble/plugin/Poller$PollTask;

    move-result-object v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eq v1, p0, :cond_0

    .line 253
    iget-object v0, p0, Lorg/briarproject/bramble/plugin/Poller$PollTask;->this$0:Lorg/briarproject/bramble/plugin/Poller;

    invoke-static {v0}, Lorg/briarproject/bramble/plugin/Poller;->access$500(Lorg/briarproject/bramble/plugin/Poller;)Ljava/util/concurrent/locks/Lock;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    return-void

    .line 251
    :cond_0
    :try_start_1
    iget-object v1, p0, Lorg/briarproject/bramble/plugin/Poller$PollTask;->this$0:Lorg/briarproject/bramble/plugin/Poller;

    invoke-static {v1}, Lorg/briarproject/bramble/plugin/Poller;->access$600(Lorg/briarproject/bramble/plugin/Poller;)Ljava/util/Map;

    move-result-object v1

    invoke-interface {v1, v0}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 253
    iget-object v0, p0, Lorg/briarproject/bramble/plugin/Poller$PollTask;->this$0:Lorg/briarproject/bramble/plugin/Poller;

    invoke-static {v0}, Lorg/briarproject/bramble/plugin/Poller;->access$500(Lorg/briarproject/bramble/plugin/Poller;)Ljava/util/concurrent/locks/Lock;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    .line 255
    iget-object v0, p0, Lorg/briarproject/bramble/plugin/Poller$PollTask;->plugin:Lorg/briarproject/bramble/api/plugin/Plugin;

    invoke-interface {v0}, Lorg/briarproject/bramble/api/plugin/Plugin;->getPollingInterval()I

    move-result v0

    .line 256
    iget-boolean v1, p0, Lorg/briarproject/bramble/plugin/Poller$PollTask;->randomiseNext:Z

    if-eqz v1, :cond_1

    int-to-double v0, v0

    iget-object v2, p0, Lorg/briarproject/bramble/plugin/Poller$PollTask;->this$0:Lorg/briarproject/bramble/plugin/Poller;

    invoke-static {v2}, Lorg/briarproject/bramble/plugin/Poller;->access$700(Lorg/briarproject/bramble/plugin/Poller;)Ljava/security/SecureRandom;

    move-result-object v2

    invoke-virtual {v2}, Ljava/security/SecureRandom;->nextDouble()D

    move-result-wide v2

    invoke-static {v0, v1}, Ljava/lang/Double;->isNaN(D)Z

    mul-double v0, v0, v2

    double-to-int v0, v0

    .line 257
    :cond_1
    iget-object v1, p0, Lorg/briarproject/bramble/plugin/Poller$PollTask;->this$0:Lorg/briarproject/bramble/plugin/Poller;

    iget-object v2, p0, Lorg/briarproject/bramble/plugin/Poller$PollTask;->plugin:Lorg/briarproject/bramble/api/plugin/Plugin;

    const/4 v3, 0x0

    invoke-static {v1, v2, v0, v3}, Lorg/briarproject/bramble/plugin/Poller;->access$800(Lorg/briarproject/bramble/plugin/Poller;Lorg/briarproject/bramble/api/plugin/Plugin;IZ)V

    .line 258
    iget-object v0, p0, Lorg/briarproject/bramble/plugin/Poller$PollTask;->this$0:Lorg/briarproject/bramble/plugin/Poller;

    iget-object v1, p0, Lorg/briarproject/bramble/plugin/Poller$PollTask;->plugin:Lorg/briarproject/bramble/api/plugin/Plugin;

    invoke-static {v0, v1}, Lorg/briarproject/bramble/plugin/Poller;->access$900(Lorg/briarproject/bramble/plugin/Poller;Lorg/briarproject/bramble/api/plugin/Plugin;)V

    return-void

    :catchall_0
    move-exception v0

    .line 253
    iget-object v1, p0, Lorg/briarproject/bramble/plugin/Poller$PollTask;->this$0:Lorg/briarproject/bramble/plugin/Poller;

    invoke-static {v1}, Lorg/briarproject/bramble/plugin/Poller;->access$500(Lorg/briarproject/bramble/plugin/Poller;)Ljava/util/concurrent/locks/Lock;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    .line 254
    throw v0
.end method
