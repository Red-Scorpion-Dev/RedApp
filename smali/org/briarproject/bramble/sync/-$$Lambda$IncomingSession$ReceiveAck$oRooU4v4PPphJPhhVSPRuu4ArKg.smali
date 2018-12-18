.class public final synthetic Lorg/briarproject/bramble/sync/-$$Lambda$IncomingSession$ReceiveAck$oRooU4v4PPphJPhhVSPRuu4ArKg;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Lorg/briarproject/bramble/api/db/DbRunnable;


# instance fields
.field private final synthetic f$0:Lorg/briarproject/bramble/sync/IncomingSession$ReceiveAck;


# direct methods
.method public synthetic constructor <init>(Lorg/briarproject/bramble/sync/IncomingSession$ReceiveAck;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/briarproject/bramble/sync/-$$Lambda$IncomingSession$ReceiveAck$oRooU4v4PPphJPhhVSPRuu4ArKg;->f$0:Lorg/briarproject/bramble/sync/IncomingSession$ReceiveAck;

    return-void
.end method


# virtual methods
.method public final run(Lorg/briarproject/bramble/api/db/Transaction;)V
    .locals 1

    iget-object v0, p0, Lorg/briarproject/bramble/sync/-$$Lambda$IncomingSession$ReceiveAck$oRooU4v4PPphJPhhVSPRuu4ArKg;->f$0:Lorg/briarproject/bramble/sync/IncomingSession$ReceiveAck;

    invoke-static {v0, p1}, Lorg/briarproject/bramble/sync/IncomingSession$ReceiveAck;->lambda$run$0(Lorg/briarproject/bramble/sync/IncomingSession$ReceiveAck;Lorg/briarproject/bramble/api/db/Transaction;)V

    return-void
.end method
