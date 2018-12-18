.class public Lorg/briarproject/bramble/api/sync/MessageContext;
.super Ljava/lang/Object;
.source "MessageContext.java"


# annotations
.annotation runtime Lorg/briarproject/bramble/api/nullsafety/NotNullByDefault;
.end annotation


# instance fields
.field private final dependencies:Ljava/util/Collection;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Collection<",
            "Lorg/briarproject/bramble/api/sync/MessageId;",
            ">;"
        }
    .end annotation
.end field

.field private final metadata:Lorg/briarproject/bramble/api/db/Metadata;


# direct methods
.method public constructor <init>(Lorg/briarproject/bramble/api/db/Metadata;)V
    .locals 1

    .line 25
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lorg/briarproject/bramble/api/sync/MessageContext;-><init>(Lorg/briarproject/bramble/api/db/Metadata;Ljava/util/Collection;)V

    return-void
.end method

.method public constructor <init>(Lorg/briarproject/bramble/api/db/Metadata;Ljava/util/Collection;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/briarproject/bramble/api/db/Metadata;",
            "Ljava/util/Collection<",
            "Lorg/briarproject/bramble/api/sync/MessageId;",
            ">;)V"
        }
    .end annotation

    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 20
    iput-object p1, p0, Lorg/briarproject/bramble/api/sync/MessageContext;->metadata:Lorg/briarproject/bramble/api/db/Metadata;

    .line 21
    iput-object p2, p0, Lorg/briarproject/bramble/api/sync/MessageContext;->dependencies:Ljava/util/Collection;

    return-void
.end method


# virtual methods
.method public getDependencies()Ljava/util/Collection;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection<",
            "Lorg/briarproject/bramble/api/sync/MessageId;",
            ">;"
        }
    .end annotation

    .line 33
    iget-object v0, p0, Lorg/briarproject/bramble/api/sync/MessageContext;->dependencies:Ljava/util/Collection;

    return-object v0
.end method

.method public getMetadata()Lorg/briarproject/bramble/api/db/Metadata;
    .locals 1

    .line 29
    iget-object v0, p0, Lorg/briarproject/bramble/api/sync/MessageContext;->metadata:Lorg/briarproject/bramble/api/db/Metadata;

    return-object v0
.end method
