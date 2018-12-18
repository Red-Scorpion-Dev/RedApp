.class public final synthetic Lorg/briarproject/bramble/plugin/-$$Lambda$Poller$QeumeN38ltbwrGGdkEZNXQMtHvs;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final synthetic f$0:Lorg/briarproject/bramble/plugin/Poller;

.field private final synthetic f$1:Lorg/briarproject/bramble/plugin/Poller$PollTask;


# direct methods
.method public synthetic constructor <init>(Lorg/briarproject/bramble/plugin/Poller;Lorg/briarproject/bramble/plugin/Poller$PollTask;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/briarproject/bramble/plugin/-$$Lambda$Poller$QeumeN38ltbwrGGdkEZNXQMtHvs;->f$0:Lorg/briarproject/bramble/plugin/Poller;

    iput-object p2, p0, Lorg/briarproject/bramble/plugin/-$$Lambda$Poller$QeumeN38ltbwrGGdkEZNXQMtHvs;->f$1:Lorg/briarproject/bramble/plugin/Poller$PollTask;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Lorg/briarproject/bramble/plugin/-$$Lambda$Poller$QeumeN38ltbwrGGdkEZNXQMtHvs;->f$0:Lorg/briarproject/bramble/plugin/Poller;

    iget-object v1, p0, Lorg/briarproject/bramble/plugin/-$$Lambda$Poller$QeumeN38ltbwrGGdkEZNXQMtHvs;->f$1:Lorg/briarproject/bramble/plugin/Poller$PollTask;

    invoke-static {v0, v1}, Lorg/briarproject/bramble/plugin/Poller;->lambda$schedule$2(Lorg/briarproject/bramble/plugin/Poller;Lorg/briarproject/bramble/plugin/Poller$PollTask;)V

    return-void
.end method
