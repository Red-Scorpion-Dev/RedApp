.class public final synthetic Lorg/briarproject/bramble/sync/-$$Lambda$ValidationManagerImpl$vGPMmpe9rdOz2bEVpyGs0DiAodU;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Lorg/briarproject/bramble/api/db/DbCallable;


# instance fields
.field private final synthetic f$0:Lorg/briarproject/bramble/sync/ValidationManagerImpl;

.field private final synthetic f$1:Lorg/briarproject/bramble/api/sync/Message;


# direct methods
.method public synthetic constructor <init>(Lorg/briarproject/bramble/sync/ValidationManagerImpl;Lorg/briarproject/bramble/api/sync/Message;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/briarproject/bramble/sync/-$$Lambda$ValidationManagerImpl$vGPMmpe9rdOz2bEVpyGs0DiAodU;->f$0:Lorg/briarproject/bramble/sync/ValidationManagerImpl;

    iput-object p2, p0, Lorg/briarproject/bramble/sync/-$$Lambda$ValidationManagerImpl$vGPMmpe9rdOz2bEVpyGs0DiAodU;->f$1:Lorg/briarproject/bramble/api/sync/Message;

    return-void
.end method


# virtual methods
.method public final call(Lorg/briarproject/bramble/api/db/Transaction;)Ljava/lang/Object;
    .locals 2

    iget-object v0, p0, Lorg/briarproject/bramble/sync/-$$Lambda$ValidationManagerImpl$vGPMmpe9rdOz2bEVpyGs0DiAodU;->f$0:Lorg/briarproject/bramble/sync/ValidationManagerImpl;

    iget-object v1, p0, Lorg/briarproject/bramble/sync/-$$Lambda$ValidationManagerImpl$vGPMmpe9rdOz2bEVpyGs0DiAodU;->f$1:Lorg/briarproject/bramble/api/sync/Message;

    invoke-static {v0, v1, p1}, Lorg/briarproject/bramble/sync/ValidationManagerImpl;->lambda$loadGroupAndValidate$12(Lorg/briarproject/bramble/sync/ValidationManagerImpl;Lorg/briarproject/bramble/api/sync/Message;Lorg/briarproject/bramble/api/db/Transaction;)Lorg/briarproject/bramble/api/sync/Group;

    move-result-object p1

    return-object p1
.end method
