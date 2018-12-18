.class public final synthetic Lorg/briarproject/bramble/sync/-$$Lambda$IncomingSession$ReceiveRequest$V1OyXLbYGm02kHbQXtS8sKJwTXc;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Lorg/briarproject/bramble/api/db/DbRunnable;


# instance fields
.field private final synthetic f$0:Lorg/briarproject/bramble/sync/IncomingSession$ReceiveRequest;


# direct methods
.method public synthetic constructor <init>(Lorg/briarproject/bramble/sync/IncomingSession$ReceiveRequest;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/briarproject/bramble/sync/-$$Lambda$IncomingSession$ReceiveRequest$V1OyXLbYGm02kHbQXtS8sKJwTXc;->f$0:Lorg/briarproject/bramble/sync/IncomingSession$ReceiveRequest;

    return-void
.end method


# virtual methods
.method public final run(Lorg/briarproject/bramble/api/db/Transaction;)V
    .locals 1

    iget-object v0, p0, Lorg/briarproject/bramble/sync/-$$Lambda$IncomingSession$ReceiveRequest$V1OyXLbYGm02kHbQXtS8sKJwTXc;->f$0:Lorg/briarproject/bramble/sync/IncomingSession$ReceiveRequest;

    invoke-static {v0, p1}, Lorg/briarproject/bramble/sync/IncomingSession$ReceiveRequest;->lambda$run$0(Lorg/briarproject/bramble/sync/IncomingSession$ReceiveRequest;Lorg/briarproject/bramble/api/db/Transaction;)V

    return-void
.end method
