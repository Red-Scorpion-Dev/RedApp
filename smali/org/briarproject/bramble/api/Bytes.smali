.class public Lorg/briarproject/bramble/api/Bytes;
.super Ljava/lang/Object;
.source "Bytes.java"

# interfaces
.implements Ljava/lang/Comparable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/briarproject/bramble/api/Bytes$BytesComparator;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/lang/Comparable<",
        "Lorg/briarproject/bramble/api/Bytes;",
        ">;"
    }
.end annotation

.annotation runtime Lorg/briarproject/bramble/api/nullsafety/NotNullByDefault;
.end annotation


# static fields
.field public static final COMPARATOR:Lorg/briarproject/bramble/api/Bytes$BytesComparator;


# instance fields
.field private final bytes:[B

.field private hashCode:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 18
    new-instance v0, Lorg/briarproject/bramble/api/Bytes$BytesComparator;

    invoke-direct {v0}, Lorg/briarproject/bramble/api/Bytes$BytesComparator;-><init>()V

    sput-object v0, Lorg/briarproject/bramble/api/Bytes;->COMPARATOR:Lorg/briarproject/bramble/api/Bytes$BytesComparator;

    return-void
.end method

.method public constructor <init>([B)V
    .locals 1

    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    .line 22
    iput v0, p0, Lorg/briarproject/bramble/api/Bytes;->hashCode:I

    .line 25
    iput-object p1, p0, Lorg/briarproject/bramble/api/Bytes;->bytes:[B

    return-void
.end method


# virtual methods
.method public bridge synthetic compareTo(Ljava/lang/Object;)I
    .locals 0

    .line 14
    check-cast p1, Lorg/briarproject/bramble/api/Bytes;

    invoke-virtual {p0, p1}, Lorg/briarproject/bramble/api/Bytes;->compareTo(Lorg/briarproject/bramble/api/Bytes;)I

    move-result p1

    return p1
.end method

.method public compareTo(Lorg/briarproject/bramble/api/Bytes;)I
    .locals 5

    .line 47
    iget-object v0, p0, Lorg/briarproject/bramble/api/Bytes;->bytes:[B

    iget-object p1, p1, Lorg/briarproject/bramble/api/Bytes;->bytes:[B

    .line 48
    array-length v1, v0

    array-length v2, p1

    invoke-static {v1, v2}, Ljava/lang/Math;->min(II)I

    move-result v1

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_2

    .line 50
    aget-byte v3, v0, v2

    and-int/lit16 v3, v3, 0xff

    aget-byte v4, p1, v2

    and-int/lit16 v4, v4, 0xff

    if-ge v3, v4, :cond_0

    const/4 p1, -0x1

    return p1

    :cond_0
    if-le v3, v4, :cond_1

    const/4 p1, 0x1

    return p1

    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 54
    :cond_2
    array-length v0, v0

    array-length p1, p1

    sub-int/2addr v0, p1

    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 1

    .line 42
    instance-of v0, p1, Lorg/briarproject/bramble/api/Bytes;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/briarproject/bramble/api/Bytes;->bytes:[B

    check-cast p1, Lorg/briarproject/bramble/api/Bytes;

    iget-object p1, p1, Lorg/briarproject/bramble/api/Bytes;->bytes:[B

    invoke-static {v0, p1}, Ljava/util/Arrays;->equals([B[B)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public getBytes()[B
    .locals 1

    .line 29
    iget-object v0, p0, Lorg/briarproject/bramble/api/Bytes;->bytes:[B

    return-object v0
.end method

.method public hashCode()I
    .locals 2

    .line 36
    iget v0, p0, Lorg/briarproject/bramble/api/Bytes;->hashCode:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lorg/briarproject/bramble/api/Bytes;->bytes:[B

    invoke-static {v0}, Ljava/util/Arrays;->hashCode([B)I

    move-result v0

    iput v0, p0, Lorg/briarproject/bramble/api/Bytes;->hashCode:I

    .line 37
    :cond_0
    iget v0, p0, Lorg/briarproject/bramble/api/Bytes;->hashCode:I

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 59
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 60
    invoke-virtual {p0}, Lorg/briarproject/bramble/api/Bytes;->getBytes()[B

    move-result-object v1

    invoke-static {v1}, Lorg/briarproject/bramble/util/StringUtils;->toHexString([B)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
