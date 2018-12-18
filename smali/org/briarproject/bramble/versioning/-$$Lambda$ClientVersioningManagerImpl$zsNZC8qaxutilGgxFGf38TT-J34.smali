.class public final synthetic Lorg/briarproject/bramble/versioning/-$$Lambda$ClientVersioningManagerImpl$zsNZC8qaxutilGgxFGf38TT-J34;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Lorg/briarproject/bramble/api/db/DbRunnable;


# instance fields
.field private final synthetic f$0:Lorg/briarproject/bramble/versioning/ClientVersioningManagerImpl;

.field private final synthetic f$1:Ljava/util/List;


# direct methods
.method public synthetic constructor <init>(Lorg/briarproject/bramble/versioning/ClientVersioningManagerImpl;Ljava/util/List;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/briarproject/bramble/versioning/-$$Lambda$ClientVersioningManagerImpl$zsNZC8qaxutilGgxFGf38TT-J34;->f$0:Lorg/briarproject/bramble/versioning/ClientVersioningManagerImpl;

    iput-object p2, p0, Lorg/briarproject/bramble/versioning/-$$Lambda$ClientVersioningManagerImpl$zsNZC8qaxutilGgxFGf38TT-J34;->f$1:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public final run(Lorg/briarproject/bramble/api/db/Transaction;)V
    .locals 2

    iget-object v0, p0, Lorg/briarproject/bramble/versioning/-$$Lambda$ClientVersioningManagerImpl$zsNZC8qaxutilGgxFGf38TT-J34;->f$0:Lorg/briarproject/bramble/versioning/ClientVersioningManagerImpl;

    iget-object v1, p0, Lorg/briarproject/bramble/versioning/-$$Lambda$ClientVersioningManagerImpl$zsNZC8qaxutilGgxFGf38TT-J34;->f$1:Ljava/util/List;

    invoke-static {v0, v1, p1}, Lorg/briarproject/bramble/versioning/ClientVersioningManagerImpl;->lambda$startService$0(Lorg/briarproject/bramble/versioning/ClientVersioningManagerImpl;Ljava/util/List;Lorg/briarproject/bramble/api/db/Transaction;)V

    return-void
.end method
