.class public Lorg/briarproject/bramble/api/sync/Ack;
.super Ljava/lang/Object;
.source "Ack.java"


# instance fields
.field private final acked:Ljava/util/Collection;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Collection<",
            "Lorg/briarproject/bramble/api/sync/MessageId;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/util/Collection;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "Lorg/briarproject/bramble/api/sync/MessageId;",
            ">;)V"
        }
    .end annotation

    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 13
    iput-object p1, p0, Lorg/briarproject/bramble/api/sync/Ack;->acked:Ljava/util/Collection;

    return-void
.end method


# virtual methods
.method public getMessageIds()Ljava/util/Collection;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection<",
            "Lorg/briarproject/bramble/api/sync/MessageId;",
            ">;"
        }
    .end annotation

    .line 20
    iget-object v0, p0, Lorg/briarproject/bramble/api/sync/Ack;->acked:Ljava/util/Collection;

    return-object v0
.end method
