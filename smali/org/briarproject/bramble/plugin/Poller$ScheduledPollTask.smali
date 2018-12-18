.class Lorg/briarproject/bramble/plugin/Poller$ScheduledPollTask;
.super Ljava/lang/Object;
.source "Poller.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/briarproject/bramble/plugin/Poller;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ScheduledPollTask"
.end annotation


# instance fields
.field private final future:Ljava/util/concurrent/Future;

.field private final task:Lorg/briarproject/bramble/plugin/Poller$PollTask;

.field final synthetic this$0:Lorg/briarproject/bramble/plugin/Poller;


# direct methods
.method private constructor <init>(Lorg/briarproject/bramble/plugin/Poller;Lorg/briarproject/bramble/plugin/Poller$PollTask;Ljava/util/concurrent/Future;)V
    .locals 0

    .line 224
    iput-object p1, p0, Lorg/briarproject/bramble/plugin/Poller$ScheduledPollTask;->this$0:Lorg/briarproject/bramble/plugin/Poller;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 225
    iput-object p2, p0, Lorg/briarproject/bramble/plugin/Poller$ScheduledPollTask;->task:Lorg/briarproject/bramble/plugin/Poller$PollTask;

    .line 226
    iput-object p3, p0, Lorg/briarproject/bramble/plugin/Poller$ScheduledPollTask;->future:Ljava/util/concurrent/Future;

    return-void
.end method

.method synthetic constructor <init>(Lorg/briarproject/bramble/plugin/Poller;Lorg/briarproject/bramble/plugin/Poller$PollTask;Ljava/util/concurrent/Future;Lorg/briarproject/bramble/plugin/Poller$1;)V
    .locals 0

    .line 219
    invoke-direct {p0, p1, p2, p3}, Lorg/briarproject/bramble/plugin/Poller$ScheduledPollTask;-><init>(Lorg/briarproject/bramble/plugin/Poller;Lorg/briarproject/bramble/plugin/Poller$PollTask;Ljava/util/concurrent/Future;)V

    return-void
.end method

.method static synthetic access$000(Lorg/briarproject/bramble/plugin/Poller$ScheduledPollTask;)Lorg/briarproject/bramble/plugin/Poller$PollTask;
    .locals 0

    .line 219
    iget-object p0, p0, Lorg/briarproject/bramble/plugin/Poller$ScheduledPollTask;->task:Lorg/briarproject/bramble/plugin/Poller$PollTask;

    return-object p0
.end method

.method static synthetic access$200(Lorg/briarproject/bramble/plugin/Poller$ScheduledPollTask;)Ljava/util/concurrent/Future;
    .locals 0

    .line 219
    iget-object p0, p0, Lorg/briarproject/bramble/plugin/Poller$ScheduledPollTask;->future:Ljava/util/concurrent/Future;

    return-object p0
.end method
