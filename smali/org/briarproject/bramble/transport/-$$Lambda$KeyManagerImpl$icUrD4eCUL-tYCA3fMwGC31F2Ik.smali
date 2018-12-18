.class public final synthetic Lorg/briarproject/bramble/transport/-$$Lambda$KeyManagerImpl$icUrD4eCUL-tYCA3fMwGC31F2Ik;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Lorg/briarproject/bramble/api/db/DbRunnable;


# instance fields
.field private final synthetic f$0:Lorg/briarproject/bramble/transport/KeyManagerImpl;

.field private final synthetic f$1:Ljava/util/Map;


# direct methods
.method public synthetic constructor <init>(Lorg/briarproject/bramble/transport/KeyManagerImpl;Ljava/util/Map;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/briarproject/bramble/transport/-$$Lambda$KeyManagerImpl$icUrD4eCUL-tYCA3fMwGC31F2Ik;->f$0:Lorg/briarproject/bramble/transport/KeyManagerImpl;

    iput-object p2, p0, Lorg/briarproject/bramble/transport/-$$Lambda$KeyManagerImpl$icUrD4eCUL-tYCA3fMwGC31F2Ik;->f$1:Ljava/util/Map;

    return-void
.end method


# virtual methods
.method public final run(Lorg/briarproject/bramble/api/db/Transaction;)V
    .locals 2

    iget-object v0, p0, Lorg/briarproject/bramble/transport/-$$Lambda$KeyManagerImpl$icUrD4eCUL-tYCA3fMwGC31F2Ik;->f$0:Lorg/briarproject/bramble/transport/KeyManagerImpl;

    iget-object v1, p0, Lorg/briarproject/bramble/transport/-$$Lambda$KeyManagerImpl$icUrD4eCUL-tYCA3fMwGC31F2Ik;->f$1:Ljava/util/Map;

    invoke-static {v0, v1, p1}, Lorg/briarproject/bramble/transport/KeyManagerImpl;->lambda$startService$0(Lorg/briarproject/bramble/transport/KeyManagerImpl;Ljava/util/Map;Lorg/briarproject/bramble/api/db/Transaction;)V

    return-void
.end method
