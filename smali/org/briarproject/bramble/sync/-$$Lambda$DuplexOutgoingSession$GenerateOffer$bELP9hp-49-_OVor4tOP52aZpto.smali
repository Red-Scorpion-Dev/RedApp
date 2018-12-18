.class public final synthetic Lorg/briarproject/bramble/sync/-$$Lambda$DuplexOutgoingSession$GenerateOffer$bELP9hp-49-_OVor4tOP52aZpto;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Lorg/briarproject/bramble/api/db/NullableDbCallable;


# instance fields
.field private final synthetic f$0:Lorg/briarproject/bramble/sync/DuplexOutgoingSession$GenerateOffer;


# direct methods
.method public synthetic constructor <init>(Lorg/briarproject/bramble/sync/DuplexOutgoingSession$GenerateOffer;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/briarproject/bramble/sync/-$$Lambda$DuplexOutgoingSession$GenerateOffer$bELP9hp-49-_OVor4tOP52aZpto;->f$0:Lorg/briarproject/bramble/sync/DuplexOutgoingSession$GenerateOffer;

    return-void
.end method


# virtual methods
.method public final call(Lorg/briarproject/bramble/api/db/Transaction;)Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lorg/briarproject/bramble/sync/-$$Lambda$DuplexOutgoingSession$GenerateOffer$bELP9hp-49-_OVor4tOP52aZpto;->f$0:Lorg/briarproject/bramble/sync/DuplexOutgoingSession$GenerateOffer;

    invoke-static {v0, p1}, Lorg/briarproject/bramble/sync/DuplexOutgoingSession$GenerateOffer;->lambda$run$0(Lorg/briarproject/bramble/sync/DuplexOutgoingSession$GenerateOffer;Lorg/briarproject/bramble/api/db/Transaction;)Lorg/briarproject/bramble/api/sync/Offer;

    move-result-object p1

    return-object p1
.end method
