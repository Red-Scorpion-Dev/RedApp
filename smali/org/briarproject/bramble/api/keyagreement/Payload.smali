.class public Lorg/briarproject/bramble/api/keyagreement/Payload;
.super Ljava/lang/Object;
.source "Payload.java"

# interfaces
.implements Ljava/lang/Comparable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/lang/Comparable<",
        "Lorg/briarproject/bramble/api/keyagreement/Payload;",
        ">;"
    }
.end annotation

.annotation runtime Lorg/briarproject/bramble/api/nullsafety/NotNullByDefault;
.end annotation


# instance fields
.field private final commitment:Lorg/briarproject/bramble/api/Bytes;

.field private final descriptors:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lorg/briarproject/bramble/api/keyagreement/TransportDescriptor;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>([BLjava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([B",
            "Ljava/util/List<",
            "Lorg/briarproject/bramble/api/keyagreement/TransportDescriptor;",
            ">;)V"
        }
    .end annotation

    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 21
    new-instance v0, Lorg/briarproject/bramble/api/Bytes;

    invoke-direct {v0, p1}, Lorg/briarproject/bramble/api/Bytes;-><init>([B)V

    iput-object v0, p0, Lorg/briarproject/bramble/api/keyagreement/Payload;->commitment:Lorg/briarproject/bramble/api/Bytes;

    .line 22
    iput-object p2, p0, Lorg/briarproject/bramble/api/keyagreement/Payload;->descriptors:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public bridge synthetic compareTo(Ljava/lang/Object;)I
    .locals 0

    .line 13
    check-cast p1, Lorg/briarproject/bramble/api/keyagreement/Payload;

    invoke-virtual {p0, p1}, Lorg/briarproject/bramble/api/keyagreement/Payload;->compareTo(Lorg/briarproject/bramble/api/keyagreement/Payload;)I

    move-result p1

    return p1
.end method

.method public compareTo(Lorg/briarproject/bramble/api/keyagreement/Payload;)I
    .locals 1

    .line 41
    iget-object v0, p0, Lorg/briarproject/bramble/api/keyagreement/Payload;->commitment:Lorg/briarproject/bramble/api/Bytes;

    iget-object p1, p1, Lorg/briarproject/bramble/api/keyagreement/Payload;->commitment:Lorg/briarproject/bramble/api/Bytes;

    invoke-virtual {v0, p1}, Lorg/briarproject/bramble/api/Bytes;->compareTo(Lorg/briarproject/bramble/api/Bytes;)I

    move-result p1

    return p1
.end method

.method public getCommitment()[B
    .locals 1

    .line 29
    iget-object v0, p0, Lorg/briarproject/bramble/api/keyagreement/Payload;->commitment:Lorg/briarproject/bramble/api/Bytes;

    invoke-virtual {v0}, Lorg/briarproject/bramble/api/Bytes;->getBytes()[B

    move-result-object v0

    return-object v0
.end method

.method public getTransportDescriptors()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lorg/briarproject/bramble/api/keyagreement/TransportDescriptor;",
            ">;"
        }
    .end annotation

    .line 36
    iget-object v0, p0, Lorg/briarproject/bramble/api/keyagreement/Payload;->descriptors:Ljava/util/List;

    return-object v0
.end method
