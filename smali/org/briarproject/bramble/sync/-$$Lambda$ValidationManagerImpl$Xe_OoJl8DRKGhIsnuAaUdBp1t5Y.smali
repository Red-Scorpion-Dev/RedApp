.class public final synthetic Lorg/briarproject/bramble/sync/-$$Lambda$ValidationManagerImpl$Xe_OoJl8DRKGhIsnuAaUdBp1t5Y;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Lorg/briarproject/bramble/api/db/DbRunnable;


# instance fields
.field private final synthetic f$0:Lorg/briarproject/bramble/sync/ValidationManagerImpl;

.field private final synthetic f$1:Ljava/util/Queue;


# direct methods
.method public synthetic constructor <init>(Lorg/briarproject/bramble/sync/ValidationManagerImpl;Ljava/util/Queue;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/briarproject/bramble/sync/-$$Lambda$ValidationManagerImpl$Xe_OoJl8DRKGhIsnuAaUdBp1t5Y;->f$0:Lorg/briarproject/bramble/sync/ValidationManagerImpl;

    iput-object p2, p0, Lorg/briarproject/bramble/sync/-$$Lambda$ValidationManagerImpl$Xe_OoJl8DRKGhIsnuAaUdBp1t5Y;->f$1:Ljava/util/Queue;

    return-void
.end method


# virtual methods
.method public final run(Lorg/briarproject/bramble/api/db/Transaction;)V
    .locals 2

    iget-object v0, p0, Lorg/briarproject/bramble/sync/-$$Lambda$ValidationManagerImpl$Xe_OoJl8DRKGhIsnuAaUdBp1t5Y;->f$0:Lorg/briarproject/bramble/sync/ValidationManagerImpl;

    iget-object v1, p0, Lorg/briarproject/bramble/sync/-$$Lambda$ValidationManagerImpl$Xe_OoJl8DRKGhIsnuAaUdBp1t5Y;->f$1:Ljava/util/Queue;

    invoke-static {v0, v1, p1}, Lorg/briarproject/bramble/sync/ValidationManagerImpl;->lambda$invalidateNextMessage$10(Lorg/briarproject/bramble/sync/ValidationManagerImpl;Ljava/util/Queue;Lorg/briarproject/bramble/api/db/Transaction;)V

    return-void
.end method
