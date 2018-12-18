.class public final synthetic Lorg/briarproject/bramble/sync/-$$Lambda$SimplexOutgoingSession$GenerateBatch$fJZ-Z2uoPgCD3C7pwsp34rnTC78;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Lorg/briarproject/bramble/api/db/NullableDbCallable;


# instance fields
.field private final synthetic f$0:Lorg/briarproject/bramble/sync/SimplexOutgoingSession$GenerateBatch;


# direct methods
.method public synthetic constructor <init>(Lorg/briarproject/bramble/sync/SimplexOutgoingSession$GenerateBatch;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/briarproject/bramble/sync/-$$Lambda$SimplexOutgoingSession$GenerateBatch$fJZ-Z2uoPgCD3C7pwsp34rnTC78;->f$0:Lorg/briarproject/bramble/sync/SimplexOutgoingSession$GenerateBatch;

    return-void
.end method


# virtual methods
.method public final call(Lorg/briarproject/bramble/api/db/Transaction;)Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lorg/briarproject/bramble/sync/-$$Lambda$SimplexOutgoingSession$GenerateBatch$fJZ-Z2uoPgCD3C7pwsp34rnTC78;->f$0:Lorg/briarproject/bramble/sync/SimplexOutgoingSession$GenerateBatch;

    invoke-static {v0, p1}, Lorg/briarproject/bramble/sync/SimplexOutgoingSession$GenerateBatch;->lambda$run$0(Lorg/briarproject/bramble/sync/SimplexOutgoingSession$GenerateBatch;Lorg/briarproject/bramble/api/db/Transaction;)Ljava/util/Collection;

    move-result-object p1

    return-object p1
.end method
