.class public final synthetic Lorg/briarproject/bramble/sync/-$$Lambda$ValidationManagerImpl$rwKQNeo0AxT8DurQPCCOnS-wMEs;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final synthetic f$0:Lorg/briarproject/bramble/sync/ValidationManagerImpl;

.field private final synthetic f$1:Ljava/util/Queue;


# direct methods
.method public synthetic constructor <init>(Lorg/briarproject/bramble/sync/ValidationManagerImpl;Ljava/util/Queue;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/briarproject/bramble/sync/-$$Lambda$ValidationManagerImpl$rwKQNeo0AxT8DurQPCCOnS-wMEs;->f$0:Lorg/briarproject/bramble/sync/ValidationManagerImpl;

    iput-object p2, p0, Lorg/briarproject/bramble/sync/-$$Lambda$ValidationManagerImpl$rwKQNeo0AxT8DurQPCCOnS-wMEs;->f$1:Ljava/util/Queue;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Lorg/briarproject/bramble/sync/-$$Lambda$ValidationManagerImpl$rwKQNeo0AxT8DurQPCCOnS-wMEs;->f$0:Lorg/briarproject/bramble/sync/ValidationManagerImpl;

    iget-object v1, p0, Lorg/briarproject/bramble/sync/-$$Lambda$ValidationManagerImpl$rwKQNeo0AxT8DurQPCCOnS-wMEs;->f$1:Ljava/util/Queue;

    invoke-static {v0, v1}, Lorg/briarproject/bramble/sync/ValidationManagerImpl;->lambda$invalidateNextMessageAsync$9(Lorg/briarproject/bramble/sync/ValidationManagerImpl;Ljava/util/Queue;)V

    return-void
.end method
