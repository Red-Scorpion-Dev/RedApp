.class public final synthetic Lorg/briarproject/bramble/sync/-$$Lambda$DuplexOutgoingSession$GenerateRequest$dBNNIMe2Y7jcWQZgin4Yq5Vnc1g;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Lorg/briarproject/bramble/api/db/NullableDbCallable;


# instance fields
.field private final synthetic f$0:Lorg/briarproject/bramble/sync/DuplexOutgoingSession$GenerateRequest;


# direct methods
.method public synthetic constructor <init>(Lorg/briarproject/bramble/sync/DuplexOutgoingSession$GenerateRequest;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/briarproject/bramble/sync/-$$Lambda$DuplexOutgoingSession$GenerateRequest$dBNNIMe2Y7jcWQZgin4Yq5Vnc1g;->f$0:Lorg/briarproject/bramble/sync/DuplexOutgoingSession$GenerateRequest;

    return-void
.end method


# virtual methods
.method public final call(Lorg/briarproject/bramble/api/db/Transaction;)Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lorg/briarproject/bramble/sync/-$$Lambda$DuplexOutgoingSession$GenerateRequest$dBNNIMe2Y7jcWQZgin4Yq5Vnc1g;->f$0:Lorg/briarproject/bramble/sync/DuplexOutgoingSession$GenerateRequest;

    invoke-static {v0, p1}, Lorg/briarproject/bramble/sync/DuplexOutgoingSession$GenerateRequest;->lambda$run$0(Lorg/briarproject/bramble/sync/DuplexOutgoingSession$GenerateRequest;Lorg/briarproject/bramble/api/db/Transaction;)Lorg/briarproject/bramble/api/sync/Request;

    move-result-object p1

    return-object p1
.end method
