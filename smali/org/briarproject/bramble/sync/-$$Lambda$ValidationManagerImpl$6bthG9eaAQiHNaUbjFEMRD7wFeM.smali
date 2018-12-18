.class public final synthetic Lorg/briarproject/bramble/sync/-$$Lambda$ValidationManagerImpl$6bthG9eaAQiHNaUbjFEMRD7wFeM;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final synthetic f$0:Lorg/briarproject/bramble/sync/ValidationManagerImpl;

.field private final synthetic f$1:Lorg/briarproject/bramble/api/sync/Message;


# direct methods
.method public synthetic constructor <init>(Lorg/briarproject/bramble/sync/ValidationManagerImpl;Lorg/briarproject/bramble/api/sync/Message;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/briarproject/bramble/sync/-$$Lambda$ValidationManagerImpl$6bthG9eaAQiHNaUbjFEMRD7wFeM;->f$0:Lorg/briarproject/bramble/sync/ValidationManagerImpl;

    iput-object p2, p0, Lorg/briarproject/bramble/sync/-$$Lambda$ValidationManagerImpl$6bthG9eaAQiHNaUbjFEMRD7wFeM;->f$1:Lorg/briarproject/bramble/api/sync/Message;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Lorg/briarproject/bramble/sync/-$$Lambda$ValidationManagerImpl$6bthG9eaAQiHNaUbjFEMRD7wFeM;->f$0:Lorg/briarproject/bramble/sync/ValidationManagerImpl;

    iget-object v1, p0, Lorg/briarproject/bramble/sync/-$$Lambda$ValidationManagerImpl$6bthG9eaAQiHNaUbjFEMRD7wFeM;->f$1:Lorg/briarproject/bramble/api/sync/Message;

    invoke-static {v0, v1}, Lorg/briarproject/bramble/sync/ValidationManagerImpl;->lambda$loadGroupAndValidateAsync$11(Lorg/briarproject/bramble/sync/ValidationManagerImpl;Lorg/briarproject/bramble/api/sync/Message;)V

    return-void
.end method
