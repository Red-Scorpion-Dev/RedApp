.class public Lorg/briarproject/bramble/api/client/BdfMessageContext;
.super Ljava/lang/Object;
.source "BdfMessageContext.java"


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

.field private final dictionary:Lorg/briarproject/bramble/api/data/BdfDictionary;


# direct methods
.method public constructor <init>(Lorg/briarproject/bramble/api/data/BdfDictionary;)V
    .locals 1

    .line 26
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lorg/briarproject/bramble/api/client/BdfMessageContext;-><init>(Lorg/briarproject/bramble/api/data/BdfDictionary;Ljava/util/Collection;)V

    return-void
.end method

.method public constructor <init>(Lorg/briarproject/bramble/api/data/BdfDictionary;Ljava/util/Collection;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/briarproject/bramble/api/data/BdfDictionary;",
            "Ljava/util/Collection<",
            "Lorg/briarproject/bramble/api/sync/MessageId;",
            ">;)V"
        }
    .end annotation

    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 21
    iput-object p1, p0, Lorg/briarproject/bramble/api/client/BdfMessageContext;->dictionary:Lorg/briarproject/bramble/api/data/BdfDictionary;

    .line 22
    iput-object p2, p0, Lorg/briarproject/bramble/api/client/BdfMessageContext;->dependencies:Ljava/util/Collection;

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

    .line 34
    iget-object v0, p0, Lorg/briarproject/bramble/api/client/BdfMessageContext;->dependencies:Ljava/util/Collection;

    return-object v0
.end method

.method public getDictionary()Lorg/briarproject/bramble/api/data/BdfDictionary;
    .locals 1

    .line 30
    iget-object v0, p0, Lorg/briarproject/bramble/api/client/BdfMessageContext;->dictionary:Lorg/briarproject/bramble/api/data/BdfDictionary;

    return-object v0
.end method
