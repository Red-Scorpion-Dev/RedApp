.class public final synthetic Lorg/briarproject/bramble/sync/-$$Lambda$ValidationManagerImpl$1otlF_NrH62ak0M4-cZkuBXqw7M;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Lorg/briarproject/bramble/api/db/DbRunnable;


# instance fields
.field private final synthetic f$0:Lorg/briarproject/bramble/sync/ValidationManagerImpl;

.field private final synthetic f$1:Lorg/briarproject/bramble/api/sync/MessageContext;

.field private final synthetic f$2:Lorg/briarproject/bramble/api/sync/Message;

.field private final synthetic f$3:Lorg/briarproject/bramble/api/sync/MessageId;

.field private final synthetic f$4:Ljava/util/Queue;

.field private final synthetic f$5:Lorg/briarproject/bramble/api/sync/ClientId;

.field private final synthetic f$6:I

.field private final synthetic f$7:Ljava/util/Queue;

.field private final synthetic f$8:Ljava/util/Queue;


# direct methods
.method public synthetic constructor <init>(Lorg/briarproject/bramble/sync/ValidationManagerImpl;Lorg/briarproject/bramble/api/sync/MessageContext;Lorg/briarproject/bramble/api/sync/Message;Lorg/briarproject/bramble/api/sync/MessageId;Ljava/util/Queue;Lorg/briarproject/bramble/api/sync/ClientId;ILjava/util/Queue;Ljava/util/Queue;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/briarproject/bramble/sync/-$$Lambda$ValidationManagerImpl$1otlF_NrH62ak0M4-cZkuBXqw7M;->f$0:Lorg/briarproject/bramble/sync/ValidationManagerImpl;

    iput-object p2, p0, Lorg/briarproject/bramble/sync/-$$Lambda$ValidationManagerImpl$1otlF_NrH62ak0M4-cZkuBXqw7M;->f$1:Lorg/briarproject/bramble/api/sync/MessageContext;

    iput-object p3, p0, Lorg/briarproject/bramble/sync/-$$Lambda$ValidationManagerImpl$1otlF_NrH62ak0M4-cZkuBXqw7M;->f$2:Lorg/briarproject/bramble/api/sync/Message;

    iput-object p4, p0, Lorg/briarproject/bramble/sync/-$$Lambda$ValidationManagerImpl$1otlF_NrH62ak0M4-cZkuBXqw7M;->f$3:Lorg/briarproject/bramble/api/sync/MessageId;

    iput-object p5, p0, Lorg/briarproject/bramble/sync/-$$Lambda$ValidationManagerImpl$1otlF_NrH62ak0M4-cZkuBXqw7M;->f$4:Ljava/util/Queue;

    iput-object p6, p0, Lorg/briarproject/bramble/sync/-$$Lambda$ValidationManagerImpl$1otlF_NrH62ak0M4-cZkuBXqw7M;->f$5:Lorg/briarproject/bramble/api/sync/ClientId;

    iput p7, p0, Lorg/briarproject/bramble/sync/-$$Lambda$ValidationManagerImpl$1otlF_NrH62ak0M4-cZkuBXqw7M;->f$6:I

    iput-object p8, p0, Lorg/briarproject/bramble/sync/-$$Lambda$ValidationManagerImpl$1otlF_NrH62ak0M4-cZkuBXqw7M;->f$7:Ljava/util/Queue;

    iput-object p9, p0, Lorg/briarproject/bramble/sync/-$$Lambda$ValidationManagerImpl$1otlF_NrH62ak0M4-cZkuBXqw7M;->f$8:Ljava/util/Queue;

    return-void
.end method


# virtual methods
.method public final run(Lorg/briarproject/bramble/api/db/Transaction;)V
    .locals 10

    iget-object v0, p0, Lorg/briarproject/bramble/sync/-$$Lambda$ValidationManagerImpl$1otlF_NrH62ak0M4-cZkuBXqw7M;->f$0:Lorg/briarproject/bramble/sync/ValidationManagerImpl;

    iget-object v1, p0, Lorg/briarproject/bramble/sync/-$$Lambda$ValidationManagerImpl$1otlF_NrH62ak0M4-cZkuBXqw7M;->f$1:Lorg/briarproject/bramble/api/sync/MessageContext;

    iget-object v2, p0, Lorg/briarproject/bramble/sync/-$$Lambda$ValidationManagerImpl$1otlF_NrH62ak0M4-cZkuBXqw7M;->f$2:Lorg/briarproject/bramble/api/sync/Message;

    iget-object v3, p0, Lorg/briarproject/bramble/sync/-$$Lambda$ValidationManagerImpl$1otlF_NrH62ak0M4-cZkuBXqw7M;->f$3:Lorg/briarproject/bramble/api/sync/MessageId;

    iget-object v4, p0, Lorg/briarproject/bramble/sync/-$$Lambda$ValidationManagerImpl$1otlF_NrH62ak0M4-cZkuBXqw7M;->f$4:Ljava/util/Queue;

    iget-object v5, p0, Lorg/briarproject/bramble/sync/-$$Lambda$ValidationManagerImpl$1otlF_NrH62ak0M4-cZkuBXqw7M;->f$5:Lorg/briarproject/bramble/api/sync/ClientId;

    iget v6, p0, Lorg/briarproject/bramble/sync/-$$Lambda$ValidationManagerImpl$1otlF_NrH62ak0M4-cZkuBXqw7M;->f$6:I

    iget-object v7, p0, Lorg/briarproject/bramble/sync/-$$Lambda$ValidationManagerImpl$1otlF_NrH62ak0M4-cZkuBXqw7M;->f$7:Ljava/util/Queue;

    iget-object v8, p0, Lorg/briarproject/bramble/sync/-$$Lambda$ValidationManagerImpl$1otlF_NrH62ak0M4-cZkuBXqw7M;->f$8:Ljava/util/Queue;

    move-object v9, p1

    invoke-static/range {v0 .. v9}, Lorg/briarproject/bramble/sync/ValidationManagerImpl;->lambda$storeMessageContext$6(Lorg/briarproject/bramble/sync/ValidationManagerImpl;Lorg/briarproject/bramble/api/sync/MessageContext;Lorg/briarproject/bramble/api/sync/Message;Lorg/briarproject/bramble/api/sync/MessageId;Ljava/util/Queue;Lorg/briarproject/bramble/api/sync/ClientId;ILjava/util/Queue;Ljava/util/Queue;Lorg/briarproject/bramble/api/db/Transaction;)V

    return-void
.end method
