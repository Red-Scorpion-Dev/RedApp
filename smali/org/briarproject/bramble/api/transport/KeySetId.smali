.class public Lorg/briarproject/bramble/api/transport/KeySetId;
.super Ljava/lang/Object;
.source "KeySetId.java"


# annotations
.annotation runtime Lorg/briarproject/bramble/api/nullsafety/NotNullByDefault;
.end annotation


# instance fields
.field private final id:I


# direct methods
.method public constructor <init>(I)V
    .locals 0

    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 20
    iput p1, p0, Lorg/briarproject/bramble/api/transport/KeySetId;->id:I

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 1

    .line 34
    instance-of v0, p1, Lorg/briarproject/bramble/api/transport/KeySetId;

    if-eqz v0, :cond_0

    iget v0, p0, Lorg/briarproject/bramble/api/transport/KeySetId;->id:I

    check-cast p1, Lorg/briarproject/bramble/api/transport/KeySetId;

    iget p1, p1, Lorg/briarproject/bramble/api/transport/KeySetId;->id:I

    if-ne v0, p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public getInt()I
    .locals 1

    .line 24
    iget v0, p0, Lorg/briarproject/bramble/api/transport/KeySetId;->id:I

    return v0
.end method

.method public hashCode()I
    .locals 1

    .line 29
    iget v0, p0, Lorg/briarproject/bramble/api/transport/KeySetId;->id:I

    return v0
.end method
