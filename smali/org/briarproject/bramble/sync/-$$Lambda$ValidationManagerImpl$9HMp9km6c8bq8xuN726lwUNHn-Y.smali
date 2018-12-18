.class public final synthetic Lorg/briarproject/bramble/sync/-$$Lambda$ValidationManagerImpl$9HMp9km6c8bq8xuN726lwUNHn-Y;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Lorg/briarproject/bramble/api/db/DbRunnable;


# instance fields
.field private final synthetic f$0:Lorg/briarproject/bramble/sync/ValidationManagerImpl;

.field private final synthetic f$1:Ljava/util/Queue;

.field private final synthetic f$2:Ljava/util/Queue;

.field private final synthetic f$3:Ljava/util/Queue;


# direct methods
.method public synthetic constructor <init>(Lorg/briarproject/bramble/sync/ValidationManagerImpl;Ljava/util/Queue;Ljava/util/Queue;Ljava/util/Queue;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/briarproject/bramble/sync/-$$Lambda$ValidationManagerImpl$9HMp9km6c8bq8xuN726lwUNHn-Y;->f$0:Lorg/briarproject/bramble/sync/ValidationManagerImpl;

    iput-object p2, p0, Lorg/briarproject/bramble/sync/-$$Lambda$ValidationManagerImpl$9HMp9km6c8bq8xuN726lwUNHn-Y;->f$1:Ljava/util/Queue;

    iput-object p3, p0, Lorg/briarproject/bramble/sync/-$$Lambda$ValidationManagerImpl$9HMp9km6c8bq8xuN726lwUNHn-Y;->f$2:Ljava/util/Queue;

    iput-object p4, p0, Lorg/briarproject/bramble/sync/-$$Lambda$ValidationManagerImpl$9HMp9km6c8bq8xuN726lwUNHn-Y;->f$3:Ljava/util/Queue;

    return-void
.end method


# virtual methods
.method public final run(Lorg/briarproject/bramble/api/db/Transaction;)V
    .locals 4

    iget-object v0, p0, Lorg/briarproject/bramble/sync/-$$Lambda$ValidationManagerImpl$9HMp9km6c8bq8xuN726lwUNHn-Y;->f$0:Lorg/briarproject/bramble/sync/ValidationManagerImpl;

    iget-object v1, p0, Lorg/briarproject/bramble/sync/-$$Lambda$ValidationManagerImpl$9HMp9km6c8bq8xuN726lwUNHn-Y;->f$1:Ljava/util/Queue;

    iget-object v2, p0, Lorg/briarproject/bramble/sync/-$$Lambda$ValidationManagerImpl$9HMp9km6c8bq8xuN726lwUNHn-Y;->f$2:Ljava/util/Queue;

    iget-object v3, p0, Lorg/briarproject/bramble/sync/-$$Lambda$ValidationManagerImpl$9HMp9km6c8bq8xuN726lwUNHn-Y;->f$3:Ljava/util/Queue;

    invoke-static {v0, v1, v2, v3, p1}, Lorg/briarproject/bramble/sync/ValidationManagerImpl;->lambda$deliverNextPendingMessage$3(Lorg/briarproject/bramble/sync/ValidationManagerImpl;Ljava/util/Queue;Ljava/util/Queue;Ljava/util/Queue;Lorg/briarproject/bramble/api/db/Transaction;)V

    return-void
.end method
