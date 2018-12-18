.class public Lorg/h2/mvstore/DataUtils;
.super Ljava/lang/Object;
.source "DataUtils.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/h2/mvstore/DataUtils$MapEntry;
    }
.end annotation


# static fields
.field public static final COMPRESSED_VAR_INT_MAX:I = 0x1fffff

.field public static final COMPRESSED_VAR_LONG_MAX:J = 0x1ffffffffffffL

.field private static final EMPTY_BYTES:[B

.field public static final ERROR_BLOCK_NOT_FOUND:I = 0x32

.field public static final ERROR_CHUNK_NOT_FOUND:I = 0x9

.field public static final ERROR_CLOSED:I = 0x4

.field public static final ERROR_FILE_CORRUPT:I = 0x6

.field public static final ERROR_FILE_LOCKED:I = 0x7

.field public static final ERROR_INTERNAL:I = 0x3

.field public static final ERROR_READING_FAILED:I = 0x1

.field public static final ERROR_SERIALIZATION:I = 0x8

.field public static final ERROR_TOO_MANY_OPEN_TRANSACTIONS:I = 0x66

.field public static final ERROR_TRANSACTION_CORRUPT:I = 0x64

.field public static final ERROR_TRANSACTION_ILLEGAL_STATE:I = 0x67

.field public static final ERROR_TRANSACTION_LOCKED:I = 0x65

.field public static final ERROR_UNSUPPORTED_FORMAT:I = 0x5

.field public static final ERROR_WRITING_FAILED:I = 0x2

.field public static final LATIN:Ljava/nio/charset/Charset;

.field private static final MAX_GROW:I = 0x1000000

.field public static final MAX_VAR_INT_LEN:I = 0x5

.field public static final MAX_VAR_LONG_LEN:I = 0xa

.field public static final PAGE_COMPRESSED:I = 0x2

.field public static final PAGE_COMPRESSED_HIGH:I = 0x6

.field public static final PAGE_LARGE:I = 0x200000

.field public static final PAGE_MEMORY:I = 0x80

.field public static final PAGE_MEMORY_CHILD:I = 0x10

.field public static final PAGE_TYPE_LEAF:I = 0x0

.field public static final PAGE_TYPE_NODE:I = 0x1

.field public static final UTF8:Ljava/nio/charset/Charset;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string v0, "UTF-8"

    .line 162
    invoke-static {v0}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    move-result-object v0

    sput-object v0, Lorg/h2/mvstore/DataUtils;->UTF8:Ljava/nio/charset/Charset;

    const-string v0, "ISO-8859-1"

    .line 167
    invoke-static {v0}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    move-result-object v0

    sput-object v0, Lorg/h2/mvstore/DataUtils;->LATIN:Ljava/nio/charset/Charset;

    const/4 v0, 0x0

    .line 172
    new-array v0, v0, [B

    sput-object v0, Lorg/h2/mvstore/DataUtils;->EMPTY_BYTES:[B

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static appendMap(Ljava/lang/StringBuilder;Ljava/util/HashMap;)Ljava/lang/StringBuilder;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/StringBuilder;",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "*>;)",
            "Ljava/lang/StringBuilder;"
        }
    .end annotation

    .line 592
    invoke-virtual {p1}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-static {v0}, Lorg/h2/util/New;->arrayList(Ljava/util/Collection;)Ljava/util/ArrayList;

    move-result-object v0

    .line 593
    invoke-static {v0}, Ljava/util/Collections;->sort(Ljava/util/List;)V

    .line 594
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 595
    invoke-virtual {p1, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    invoke-static {p0, v1, v2}, Lorg/h2/mvstore/DataUtils;->appendMap(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_0

    :cond_0
    return-object p0
.end method

.method public static appendMap(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/Object;)V
    .locals 4

    .line 610
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->length()I

    move-result v0

    const/16 v1, 0x2c

    if-lez v0, :cond_0

    .line 611
    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 613
    :cond_0
    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 p1, 0x3a

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 615
    instance-of p1, p2, Ljava/lang/Long;

    if-eqz p1, :cond_1

    .line 616
    check-cast p2, Ljava/lang/Long;

    invoke-virtual {p2}, Ljava/lang/Long;->longValue()J

    move-result-wide p1

    invoke-static {p1, p2}, Ljava/lang/Long;->toHexString(J)Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    .line 617
    :cond_1
    instance-of p1, p2, Ljava/lang/Integer;

    if-eqz p1, :cond_2

    .line 618
    check-cast p2, Ljava/lang/Integer;

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    .line 620
    :cond_2
    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    .line 622
    :goto_0
    invoke-virtual {p1, v1}, Ljava/lang/String;->indexOf(I)I

    move-result p2

    const/16 v0, 0x22

    if-gez p2, :cond_3

    invoke-virtual {p1, v0}, Ljava/lang/String;->indexOf(I)I

    move-result p2

    if-gez p2, :cond_3

    .line 623
    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_2

    .line 625
    :cond_3
    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const/4 p2, 0x0

    .line 626
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    :goto_1
    if-ge p2, v1, :cond_5

    .line 627
    invoke-virtual {p1, p2}, Ljava/lang/String;->charAt(I)C

    move-result v2

    if-ne v2, v0, :cond_4

    const/16 v3, 0x5c

    .line 629
    invoke-virtual {p0, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 631
    :cond_4
    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    add-int/lit8 p2, p2, 0x1

    goto :goto_1

    .line 633
    :cond_5
    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    :goto_2
    return-void
.end method

.method public static varargs checkArgument(ZLjava/lang/String;[Ljava/lang/Object;)V
    .locals 0

    if-eqz p0, :cond_0

    return-void

    .line 723
    :cond_0
    invoke-static {p1, p2}, Lorg/h2/mvstore/DataUtils;->newIllegalArgumentException(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/IllegalArgumentException;

    move-result-object p0

    throw p0
.end method

.method public static copyExcept(Ljava/lang/Object;Ljava/lang/Object;II)V
    .locals 1

    if-lez p3, :cond_0

    if-lez p2, :cond_0

    const/4 v0, 0x0

    .line 409
    invoke-static {p0, v0, p1, v0, p3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :cond_0
    if-ge p3, p2, :cond_1

    add-int/lit8 v0, p3, 0x1

    sub-int/2addr p2, p3

    add-int/lit8 p2, p2, -0x1

    .line 412
    invoke-static {p0, v0, p1, p3, p2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :cond_1
    return-void
.end method

.method public static copyWithGap(Ljava/lang/Object;Ljava/lang/Object;II)V
    .locals 1

    if-lez p3, :cond_0

    const/4 v0, 0x0

    .line 390
    invoke-static {p0, v0, p1, v0, p3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :cond_0
    if-ge p3, p2, :cond_1

    add-int/lit8 v0, p3, 0x1

    sub-int/2addr p2, p3

    .line 393
    invoke-static {p0, p3, p1, v0, p2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :cond_1
    return-void
.end method

.method public static encodeLength(I)I
    .locals 2

    const/16 v0, 0x20

    if-gt p0, v0, :cond_0

    const/4 p0, 0x0

    return p0

    .line 483
    :cond_0
    invoke-static {p0}, Ljava/lang/Integer;->numberOfLeadingZeros(I)I

    move-result v0

    add-int/lit8 v1, v0, 0x1

    shl-int/2addr p0, v1

    add-int/2addr v0, v0

    const/high16 v1, -0x80000000

    and-int/2addr v1, p0

    if-eqz v1, :cond_1

    add-int/lit8 v0, v0, -0x1

    :cond_1
    shl-int/lit8 p0, p0, 0x1

    if-eqz p0, :cond_2

    add-int/lit8 v0, v0, -0x1

    :cond_2
    const/16 p0, 0x1f

    rsub-int/lit8 v0, v0, 0x34

    .line 492
    invoke-static {p0, v0}, Ljava/lang/Math;->min(II)I

    move-result p0

    return p0
.end method

.method public static ensureCapacity(Ljava/nio/ByteBuffer;I)Ljava/nio/ByteBuffer;
    .locals 1

    add-int/lit16 p1, p1, 0x400

    .line 873
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v0

    if-le v0, p1, :cond_0

    return-object p0

    .line 876
    :cond_0
    invoke-static {p0, p1}, Lorg/h2/mvstore/DataUtils;->grow(Ljava/nio/ByteBuffer;I)Ljava/nio/ByteBuffer;

    move-result-object p0

    return-object p0
.end method

.method public static varargs formatMessage(ILjava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;
    .locals 5

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 800
    :goto_0
    array-length v2, p2

    if-ge v1, v2, :cond_3

    .line 801
    aget-object v2, p2, v1

    .line 802
    instance-of v3, v2, Ljava/lang/Exception;

    if-nez v3, :cond_2

    if-nez v2, :cond_0

    const-string v2, "null"

    goto :goto_1

    .line 803
    :cond_0
    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    .line 804
    :goto_1
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v3

    const/16 v4, 0x3e8

    if-le v3, v4, :cond_1

    .line 805
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "..."

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 807
    :cond_1
    aput-object v2, p2, v1

    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 810
    :cond_3
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {p1, p2}, Ljava/text/MessageFormat;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " ["

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 p1, 0x1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, "."

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 p1, 0x4

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, "."

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 p1, 0xc0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, "/"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p0, "]"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static getCheckValue(I)S
    .locals 1

    shr-int/lit8 v0, p0, 0x10

    xor-int/2addr p0, v0

    int-to-short p0, p0

    return p0
.end method

.method public static getErrorCode(Ljava/lang/String;)I
    .locals 2

    if-eqz p0, :cond_0

    const-string v0, "]"

    .line 823
    invoke-virtual {p0, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0x2f

    .line 824
    invoke-virtual {p0, v0}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v0

    if-ltz v0, :cond_0

    add-int/lit8 v0, v0, 0x1

    .line 826
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {p0, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    .line 828
    :try_start_0
    invoke-static {p0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p0
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    return p0

    :catch_0
    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public static getFletcher32([BI)I
    .locals 8

    .line 692
    div-int/lit8 v0, p1, 0x2

    mul-int/lit8 v0, v0, 0x2

    const v1, 0xffff

    const/4 v2, 0x0

    const v3, 0xffff

    const v4, 0xffff

    :goto_0
    if-ge v2, v0, :cond_1

    add-int/lit16 v5, v2, 0x2d0

    .line 695
    invoke-static {v5, v0}, Ljava/lang/Math;->min(II)I

    move-result v5

    :goto_1
    if-ge v2, v5, :cond_0

    add-int/lit8 v6, v2, 0x1

    .line 696
    aget-byte v2, p0, v2

    and-int/lit16 v2, v2, 0xff

    shl-int/lit8 v2, v2, 0x8

    add-int/lit8 v7, v6, 0x1

    aget-byte v6, p0, v6

    and-int/lit16 v6, v6, 0xff

    or-int/2addr v2, v6

    add-int/2addr v4, v2

    add-int/2addr v3, v4

    move v2, v7

    goto :goto_1

    :cond_0
    and-int v5, v4, v1

    ushr-int/lit8 v4, v4, 0x10

    add-int/2addr v4, v5

    and-int v5, v3, v1

    ushr-int/lit8 v3, v3, 0x10

    add-int/2addr v3, v5

    goto :goto_0

    :cond_1
    if-ge v2, p1, :cond_2

    .line 704
    aget-byte p0, p0, v2

    and-int/lit16 p0, p0, 0xff

    shl-int/lit8 p0, p0, 0x8

    add-int/2addr v4, p0

    add-int/2addr v3, v4

    :cond_2
    and-int p0, v4, v1

    ushr-int/lit8 p1, v4, 0x10

    add-int/2addr p0, p1

    and-int p1, v3, v1

    ushr-int/lit8 v0, v3, 0x10

    add-int/2addr p1, v0

    shl-int/lit8 p1, p1, 0x10

    or-int/2addr p0, p1

    return p0
.end method

.method public static getPageChunkId(J)I
    .locals 1

    const/16 v0, 0x26

    ushr-long/2addr p0, v0

    long-to-int p0, p0

    return p0
.end method

.method public static getPageMaxLength(J)I
    .locals 3

    const/4 v0, 0x1

    shr-long/2addr p0, v0

    const-wide/16 v1, 0x1f

    and-long/2addr p0, v1

    long-to-int p0, p0

    const/16 p1, 0x1f

    if-ne p0, p1, :cond_0

    const/high16 p0, 0x200000

    return p0

    :cond_0
    and-int/lit8 p1, p0, 0x1

    add-int/lit8 p1, p1, 0x2

    shr-int/2addr p0, v0

    add-int/lit8 p0, p0, 0x4

    shl-int p0, p1, p0

    return p0
.end method

.method public static getPageOffset(J)I
    .locals 1

    const/4 v0, 0x6

    shr-long/2addr p0, v0

    long-to-int p0, p0

    return p0
.end method

.method public static getPagePos(IIII)J
    .locals 3

    int-to-long v0, p0

    const/16 p0, 0x26

    shl-long/2addr v0, p0

    int-to-long p0, p1

    const/4 v2, 0x6

    shl-long/2addr p0, v2

    or-long/2addr p0, v0

    .line 566
    invoke-static {p2}, Lorg/h2/mvstore/DataUtils;->encodeLength(I)I

    move-result p2

    shl-int/lit8 p2, p2, 0x1

    int-to-long v0, p2

    or-long/2addr p0, v0

    int-to-long p2, p3

    or-long/2addr p0, p2

    return-wide p0
.end method

.method public static getPageType(J)I
    .locals 0

    long-to-int p0, p0

    and-int/lit8 p0, p0, 0x1

    return p0
.end method

.method public static getVarIntLen(I)I
    .locals 1

    and-int/lit8 v0, p0, -0x80

    if-nez v0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    and-int/lit16 v0, p0, -0x4000

    if-nez v0, :cond_1

    const/4 p0, 0x2

    return p0

    :cond_1
    const/high16 v0, -0x200000

    and-int/2addr v0, p0

    if-nez v0, :cond_2

    const/4 p0, 0x3

    return p0

    :cond_2
    const/high16 v0, -0x10000000

    and-int/2addr p0, v0

    if-nez p0, :cond_3

    const/4 p0, 0x4

    return p0

    :cond_3
    const/4 p0, 0x5

    return p0
.end method

.method public static getVarLongLen(J)I
    .locals 4

    const/4 v0, 0x1

    :goto_0
    const/4 v1, 0x7

    ushr-long/2addr p0, v1

    const-wide/16 v1, 0x0

    cmp-long v3, p0, v1

    if-nez v3, :cond_0

    return v0

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method private static grow(Ljava/nio/ByteBuffer;I)Ljava/nio/ByteBuffer;
    .locals 2

    .line 880
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v0

    add-int/2addr v0, p1

    .line 881
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->capacity()I

    move-result p1

    const/high16 v1, 0x1000000

    add-int/2addr v1, p1

    mul-int/lit8 p1, p1, 0x2

    .line 882
    invoke-static {v1, p1}, Ljava/lang/Math;->min(II)I

    move-result p1

    invoke-static {v0, p1}, Ljava/lang/Math;->max(II)I

    move-result p1

    .line 883
    invoke-static {p1}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object p1

    .line 884
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->flip()Ljava/nio/Buffer;

    .line 885
    invoke-virtual {p1, p0}, Ljava/nio/ByteBuffer;->put(Ljava/nio/ByteBuffer;)Ljava/nio/ByteBuffer;

    return-object p1
.end method

.method private static varargs initCause(Ljava/lang/Exception;[Ljava/lang/Object;)Ljava/lang/Exception;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Exception;",
            ">(TT;[",
            "Ljava/lang/Object;",
            ")TT;"
        }
    .end annotation

    .line 779
    array-length v0, p1

    if-lez v0, :cond_0

    add-int/lit8 v0, v0, -0x1

    .line 781
    aget-object p1, p1, v0

    .line 782
    instance-of v0, p1, Ljava/lang/Exception;

    if-eqz v0, :cond_0

    .line 783
    check-cast p1, Ljava/lang/Exception;

    invoke-virtual {p0, p1}, Ljava/lang/Exception;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    :cond_0
    return-object p0
.end method

.method public static newBytes(I)[B
    .locals 4

    if-nez p0, :cond_0

    .line 852
    sget-object p0, Lorg/h2/mvstore/DataUtils;->EMPTY_BYTES:[B

    return-object p0

    .line 855
    :cond_0
    :try_start_0
    new-array v0, p0, [B
    :try_end_0
    .catch Ljava/lang/OutOfMemoryError; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    .line 857
    new-instance v1, Ljava/lang/OutOfMemoryError;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Requested memory: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v1, p0}, Ljava/lang/OutOfMemoryError;-><init>(Ljava/lang/String;)V

    .line 858
    invoke-virtual {v1, v0}, Ljava/lang/Error;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    .line 859
    throw v1
.end method

.method public static newConcurrentModificationException(Ljava/lang/String;)Ljava/util/ConcurrentModificationException;
    .locals 3

    .line 760
    new-instance v0, Ljava/util/ConcurrentModificationException;

    const/4 v1, 0x0

    new-array v2, v1, [Ljava/lang/Object;

    invoke-static {v1, p0, v2}, Lorg/h2/mvstore/DataUtils;->formatMessage(ILjava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/util/ConcurrentModificationException;-><init>(Ljava/lang/String;)V

    return-object v0
.end method

.method public static varargs newIllegalArgumentException(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/IllegalArgumentException;
    .locals 2

    .line 736
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const/4 v1, 0x0

    invoke-static {v1, p0, p1}, Lorg/h2/mvstore/DataUtils;->formatMessage(ILjava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    invoke-static {v0, p1}, Lorg/h2/mvstore/DataUtils;->initCause(Ljava/lang/Exception;[Ljava/lang/Object;)Ljava/lang/Exception;

    move-result-object p0

    check-cast p0, Ljava/lang/IllegalArgumentException;

    return-object p0
.end method

.method public static varargs newIllegalStateException(ILjava/lang/String;[Ljava/lang/Object;)Ljava/lang/IllegalStateException;
    .locals 1

    .line 773
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-static {p0, p1, p2}, Lorg/h2/mvstore/DataUtils;->formatMessage(ILjava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    invoke-static {v0, p2}, Lorg/h2/mvstore/DataUtils;->initCause(Ljava/lang/Exception;[Ljava/lang/Object;)Ljava/lang/Exception;

    move-result-object p0

    check-cast p0, Ljava/lang/IllegalStateException;

    return-object p0
.end method

.method public static newUnsupportedOperationException(Ljava/lang/String;)Ljava/lang/UnsupportedOperationException;
    .locals 3

    .line 749
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const/4 v1, 0x0

    new-array v2, v1, [Ljava/lang/Object;

    invoke-static {v1, p0, v2}, Lorg/h2/mvstore/DataUtils;->formatMessage(ILjava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    return-object v0
.end method

.method public static parseHexInt(Ljava/lang/String;)I
    .locals 4

    const/16 v0, 0x10

    .line 947
    :try_start_0
    invoke-static {p0, v0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;I)J

    move-result-wide v0
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    long-to-int p0, v0

    return p0

    :catch_0
    move-exception v0

    const/4 v1, 0x6

    const/4 v2, 0x2

    .line 949
    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p0, v2, v3

    const/4 p0, 0x1

    aput-object v0, v2, p0

    const-string p0, "Error parsing the value {0}"

    invoke-static {v1, p0, v2}, Lorg/h2/mvstore/DataUtils;->newIllegalStateException(ILjava/lang/String;[Ljava/lang/Object;)Ljava/lang/IllegalStateException;

    move-result-object p0

    throw p0
.end method

.method public static parseHexLong(Ljava/lang/String;)J
    .locals 6

    const/4 v0, 0x0

    .line 923
    :try_start_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    const/16 v2, 0x10

    if-ne v1, v2, :cond_0

    const/16 v1, 0x8

    .line 926
    invoke-virtual {p0, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3, v2}, Ljava/lang/Long;->parseLong(Ljava/lang/String;I)J

    move-result-wide v3

    const/16 v5, 0x20

    shl-long/2addr v3, v5

    invoke-virtual {p0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, v2}, Ljava/lang/Long;->parseLong(Ljava/lang/String;I)J

    move-result-wide v1

    or-long/2addr v1, v3

    return-wide v1

    .line 929
    :cond_0
    invoke-static {p0, v2}, Ljava/lang/Long;->parseLong(Ljava/lang/String;I)J

    move-result-wide v1
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    return-wide v1

    :catch_0
    move-exception v1

    const/4 v2, 0x6

    const/4 v3, 0x2

    .line 931
    new-array v3, v3, [Ljava/lang/Object;

    aput-object p0, v3, v0

    const/4 p0, 0x1

    aput-object v1, v3, p0

    const-string p0, "Error parsing the value {0}"

    invoke-static {v2, p0, v3}, Lorg/h2/mvstore/DataUtils;->newIllegalStateException(ILjava/lang/String;[Ljava/lang/Object;)Ljava/lang/IllegalStateException;

    move-result-object p0

    throw p0
.end method

.method public static parseMap(Ljava/lang/String;)Ljava/util/HashMap;
    .locals 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 645
    invoke-static {}, Lorg/h2/util/New;->hashMap()Ljava/util/HashMap;

    move-result-object v0

    .line 646
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v1, :cond_8

    const/16 v4, 0x3a

    .line 648
    invoke-virtual {p0, v4, v3}, Ljava/lang/String;->indexOf(II)I

    move-result v4

    const/4 v5, 0x6

    const/4 v6, 0x1

    if-ltz v4, :cond_7

    add-int/lit8 v7, v4, 0x1

    .line 653
    invoke-virtual {p0, v3, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    .line 654
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    :goto_1
    if-ge v7, v1, :cond_6

    add-int/lit8 v8, v7, 0x1

    .line 656
    invoke-virtual {p0, v7}, Ljava/lang/String;->charAt(I)C

    move-result v7

    const/16 v9, 0x2c

    if-ne v7, v9, :cond_0

    move v7, v8

    goto :goto_5

    :cond_0
    const/16 v9, 0x22

    if-ne v7, v9, :cond_5

    :goto_2
    if-ge v8, v1, :cond_4

    add-int/lit8 v7, v8, 0x1

    .line 661
    invoke-virtual {p0, v8}, Ljava/lang/String;->charAt(I)C

    move-result v8

    const/16 v10, 0x5c

    if-ne v8, v10, :cond_2

    if-eq v7, v1, :cond_1

    add-int/lit8 v8, v7, 0x1

    .line 668
    invoke-virtual {p0, v7}, Ljava/lang/String;->charAt(I)C

    move-result v7

    goto :goto_3

    .line 664
    :cond_1
    new-array v0, v6, [Ljava/lang/Object;

    aput-object p0, v0, v2

    const-string p0, "Not a map: {0}"

    invoke-static {v5, p0, v0}, Lorg/h2/mvstore/DataUtils;->newIllegalStateException(ILjava/lang/String;[Ljava/lang/Object;)Ljava/lang/IllegalStateException;

    move-result-object p0

    throw p0

    :cond_2
    if-ne v8, v9, :cond_3

    goto :goto_1

    :cond_3
    move v11, v8

    move v8, v7

    move v7, v11

    .line 672
    :goto_3
    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_2

    :cond_4
    :goto_4
    move v7, v8

    goto :goto_1

    .line 675
    :cond_5
    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_4

    .line 678
    :cond_6
    :goto_5
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move v3, v7

    goto :goto_0

    .line 650
    :cond_7
    new-array v0, v6, [Ljava/lang/Object;

    aput-object p0, v0, v2

    const-string p0, "Not a map: {0}"

    invoke-static {v5, p0, v0}, Lorg/h2/mvstore/DataUtils;->newIllegalStateException(ILjava/lang/String;[Ljava/lang/Object;)Ljava/lang/IllegalStateException;

    move-result-object p0

    throw p0

    :cond_8
    return-object v0
.end method

.method public static readFully(Ljava/nio/channels/FileChannel;JLjava/nio/ByteBuffer;)V
    .locals 5

    .line 429
    :cond_0
    :try_start_0
    invoke-virtual {p0, p3, p1, p2}, Ljava/nio/channels/FileChannel;->read(Ljava/nio/ByteBuffer;J)I

    move-result v0

    if-ltz v0, :cond_1

    int-to-long v0, v0

    add-long/2addr p1, v0

    .line 434
    invoke-virtual {p3}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v0

    if-gtz v0, :cond_0

    .line 435
    invoke-virtual {p3}, Ljava/nio/ByteBuffer;->rewind()Ljava/nio/Buffer;

    return-void

    .line 431
    :cond_1
    new-instance v0, Ljava/io/EOFException;

    invoke-direct {v0}, Ljava/io/EOFException;-><init>()V

    throw v0
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    move-exception v0

    .line 439
    :try_start_1
    invoke-virtual {p0}, Ljava/nio/channels/FileChannel;->size()J

    move-result-wide v1
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    :catch_1
    const-wide/16 v1, -0x1

    :goto_0
    const/4 v3, 0x5

    .line 443
    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object p0, v3, v4

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p0

    const/4 v1, 0x1

    aput-object p0, v3, v1

    const/4 p0, 0x2

    invoke-virtual {p3}, Ljava/nio/ByteBuffer;->remaining()I

    move-result p3

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    aput-object p3, v3, p0

    const/4 p0, 0x3

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    aput-object p1, v3, p0

    const/4 p0, 0x4

    aput-object v0, v3, p0

    const-string p0, "Reading from {0} failed; file length {1} read length {2} at {3}"

    invoke-static {v1, p0, v3}, Lorg/h2/mvstore/DataUtils;->newIllegalStateException(ILjava/lang/String;[Ljava/lang/Object;)Ljava/lang/IllegalStateException;

    move-result-object p0

    throw p0
.end method

.method public static readHexInt(Ljava/util/HashMap;Ljava/lang/String;I)I
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "+",
            "Ljava/lang/Object;",
            ">;",
            "Ljava/lang/String;",
            "I)I"
        }
    .end annotation

    .line 965
    invoke-virtual {p0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    if-nez p0, :cond_0

    return p2

    .line 968
    :cond_0
    instance-of p1, p0, Ljava/lang/Integer;

    if-eqz p1, :cond_1

    .line 969
    check-cast p0, Ljava/lang/Integer;

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    return p0

    .line 973
    :cond_1
    :try_start_0
    move-object p1, p0

    check-cast p1, Ljava/lang/String;

    const/16 p2, 0x10

    invoke-static {p1, p2}, Ljava/lang/Long;->parseLong(Ljava/lang/String;I)J

    move-result-wide p1
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    long-to-int p0, p1

    return p0

    :catch_0
    move-exception p1

    const/4 p2, 0x6

    const/4 v0, 0x2

    .line 975
    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p0, v0, v1

    const/4 p0, 0x1

    aput-object p1, v0, p0

    const-string p0, "Error parsing the value {0}"

    invoke-static {p2, p0, v0}, Lorg/h2/mvstore/DataUtils;->newIllegalStateException(ILjava/lang/String;[Ljava/lang/Object;)Ljava/lang/IllegalStateException;

    move-result-object p0

    throw p0
.end method

.method public static readHexLong(Ljava/util/Map;Ljava/lang/String;J)J
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "+",
            "Ljava/lang/Object;",
            ">;",
            "Ljava/lang/String;",
            "J)J"
        }
    .end annotation

    .line 900
    invoke-interface {p0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    if-nez p0, :cond_0

    return-wide p2

    .line 903
    :cond_0
    instance-of p1, p0, Ljava/lang/Long;

    if-eqz p1, :cond_1

    .line 904
    check-cast p0, Ljava/lang/Long;

    invoke-virtual {p0}, Ljava/lang/Long;->longValue()J

    move-result-wide p0

    return-wide p0

    .line 907
    :cond_1
    :try_start_0
    move-object p1, p0

    check-cast p1, Ljava/lang/String;

    invoke-static {p1}, Lorg/h2/mvstore/DataUtils;->parseHexLong(Ljava/lang/String;)J

    move-result-wide p1
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    return-wide p1

    :catch_0
    move-exception p1

    const/4 p2, 0x6

    const/4 p3, 0x2

    .line 909
    new-array p3, p3, [Ljava/lang/Object;

    const/4 v0, 0x0

    aput-object p0, p3, v0

    const/4 p0, 0x1

    aput-object p1, p3, p0

    const-string p0, "Error parsing the value {0}"

    invoke-static {p2, p0, p3}, Lorg/h2/mvstore/DataUtils;->newIllegalStateException(ILjava/lang/String;[Ljava/lang/Object;)Ljava/lang/IllegalStateException;

    move-result-object p0

    throw p0
.end method

.method public static readString(Ljava/nio/ByteBuffer;I)Ljava/lang/String;
    .locals 4

    .line 335
    new-array v0, p1, [C

    const/4 v1, 0x0

    :goto_0
    if-ge v1, p1, :cond_2

    .line 337
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->get()B

    move-result v2

    and-int/lit16 v2, v2, 0xff

    const/16 v3, 0x80

    if-ge v2, v3, :cond_0

    int-to-char v2, v2

    .line 339
    aput-char v2, v0, v1

    goto :goto_1

    :cond_0
    const/16 v3, 0xe0

    if-lt v2, v3, :cond_1

    and-int/lit8 v2, v2, 0xf

    shl-int/lit8 v2, v2, 0xc

    .line 341
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->get()B

    move-result v3

    and-int/lit8 v3, v3, 0x3f

    shl-int/lit8 v3, v3, 0x6

    add-int/2addr v2, v3

    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->get()B

    move-result v3

    and-int/lit8 v3, v3, 0x3f

    add-int/2addr v2, v3

    int-to-char v2, v2

    aput-char v2, v0, v1

    goto :goto_1

    :cond_1
    and-int/lit8 v2, v2, 0x1f

    shl-int/lit8 v2, v2, 0x6

    .line 344
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->get()B

    move-result v3

    and-int/lit8 v3, v3, 0x3f

    add-int/2addr v2, v3

    int-to-char v2, v2

    aput-char v2, v0, v1

    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 347
    :cond_2
    new-instance p0, Ljava/lang/String;

    invoke-direct {p0, v0}, Ljava/lang/String;-><init>([C)V

    return-object p0
.end method

.method public static readVarInt(Ljava/nio/ByteBuffer;)I
    .locals 1

    .line 222
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->get()B

    move-result v0

    if-ltz v0, :cond_0

    return v0

    .line 227
    :cond_0
    invoke-static {p0, v0}, Lorg/h2/mvstore/DataUtils;->readVarIntRest(Ljava/nio/ByteBuffer;I)I

    move-result p0

    return p0
.end method

.method private static readVarIntRest(Ljava/nio/ByteBuffer;I)I
    .locals 1

    and-int/lit8 p1, p1, 0x7f

    .line 232
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->get()B

    move-result v0

    if-ltz v0, :cond_0

    shl-int/lit8 p0, v0, 0x7

    or-int/2addr p0, p1

    return p0

    :cond_0
    and-int/lit8 v0, v0, 0x7f

    shl-int/lit8 v0, v0, 0x7

    or-int/2addr p1, v0

    .line 237
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->get()B

    move-result v0

    if-ltz v0, :cond_1

    shl-int/lit8 p0, v0, 0xe

    or-int/2addr p0, p1

    return p0

    :cond_1
    and-int/lit8 v0, v0, 0x7f

    shl-int/lit8 v0, v0, 0xe

    or-int/2addr p1, v0

    .line 242
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->get()B

    move-result v0

    if-ltz v0, :cond_2

    shl-int/lit8 p0, v0, 0x15

    or-int/2addr p0, p1

    return p0

    :cond_2
    and-int/lit8 v0, v0, 0x7f

    shl-int/lit8 v0, v0, 0x15

    .line 246
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->get()B

    move-result p0

    shl-int/lit8 p0, p0, 0x1c

    or-int/2addr p0, v0

    or-int/2addr p0, p1

    return p0
.end method

.method public static readVarLong(Ljava/nio/ByteBuffer;)J
    .locals 11

    .line 257
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->get()B

    move-result v0

    int-to-long v0, v0

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-ltz v4, :cond_0

    return-wide v0

    :cond_0
    const-wide/16 v4, 0x7f

    and-long/2addr v0, v4

    const/4 v6, 0x7

    :goto_0
    const/16 v7, 0x40

    if-ge v6, v7, :cond_2

    .line 263
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->get()B

    move-result v7

    int-to-long v7, v7

    and-long v9, v7, v4

    shl-long/2addr v9, v6

    or-long/2addr v0, v9

    cmp-long v9, v7, v2

    if-ltz v9, :cond_1

    goto :goto_1

    :cond_1
    add-int/lit8 v6, v6, 0x7

    goto :goto_0

    :cond_2
    :goto_1
    return-wide v0
.end method

.method public static writeFully(Ljava/nio/channels/FileChannel;JLjava/nio/ByteBuffer;)V
    .locals 4

    const/4 v0, 0x0

    const/4 v1, 0x0

    :cond_0
    int-to-long v2, v1

    add-long/2addr v2, p1

    .line 462
    :try_start_0
    invoke-virtual {p0, p3, v2, v3}, Ljava/nio/channels/FileChannel;->write(Ljava/nio/ByteBuffer;J)I

    move-result v2

    add-int/2addr v1, v2

    .line 464
    invoke-virtual {p3}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v2
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    if-gtz v2, :cond_0

    return-void

    :catch_0
    move-exception v1

    const/4 v2, 0x4

    .line 466
    new-array v2, v2, [Ljava/lang/Object;

    aput-object p0, v2, v0

    const/4 p0, 0x1

    invoke-virtual {p3}, Ljava/nio/ByteBuffer;->remaining()I

    move-result p3

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    aput-object p3, v2, p0

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p0

    const/4 p1, 0x2

    aput-object p0, v2, p1

    const/4 p0, 0x3

    aput-object v1, v2, p0

    const-string p0, "Writing to {0} failed; length {1} at {2}"

    invoke-static {p1, p0, v2}, Lorg/h2/mvstore/DataUtils;->newIllegalStateException(ILjava/lang/String;[Ljava/lang/Object;)Ljava/lang/IllegalStateException;

    move-result-object p0

    throw p0
.end method

.method public static writeStringData(Ljava/nio/ByteBuffer;Ljava/lang/String;I)Ljava/nio/ByteBuffer;
    .locals 3

    mul-int/lit8 v0, p2, 0x3

    .line 310
    invoke-static {p0, v0}, Lorg/h2/mvstore/DataUtils;->ensureCapacity(Ljava/nio/ByteBuffer;I)Ljava/nio/ByteBuffer;

    move-result-object p0

    const/4 v0, 0x0

    :goto_0
    if-ge v0, p2, :cond_2

    .line 312
    invoke-virtual {p1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/16 v2, 0x80

    if-ge v1, v2, :cond_0

    int-to-byte v1, v1

    .line 314
    invoke-virtual {p0, v1}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    goto :goto_1

    :cond_0
    const/16 v2, 0x800

    if-lt v1, v2, :cond_1

    shr-int/lit8 v2, v1, 0xc

    or-int/lit16 v2, v2, 0xe0

    int-to-byte v2, v2

    .line 316
    invoke-virtual {p0, v2}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    shr-int/lit8 v2, v1, 0x6

    and-int/lit8 v2, v2, 0x3f

    int-to-byte v2, v2

    .line 317
    invoke-virtual {p0, v2}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    and-int/lit8 v1, v1, 0x3f

    int-to-byte v1, v1

    .line 318
    invoke-virtual {p0, v1}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    goto :goto_1

    :cond_1
    shr-int/lit8 v2, v1, 0x6

    or-int/lit16 v2, v2, 0xc0

    int-to-byte v2, v2

    .line 320
    invoke-virtual {p0, v2}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    and-int/lit8 v1, v1, 0x3f

    int-to-byte v1, v1

    .line 321
    invoke-virtual {p0, v1}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    return-object p0
.end method

.method public static writeVarInt(Ljava/io/OutputStream;I)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    :goto_0
    and-int/lit8 v0, p1, -0x80

    if-eqz v0, :cond_0

    and-int/lit8 v0, p1, 0x7f

    or-int/lit16 v0, v0, 0x80

    int-to-byte v0, v0

    .line 280
    invoke-virtual {p0, v0}, Ljava/io/OutputStream;->write(I)V

    ushr-int/lit8 p1, p1, 0x7

    goto :goto_0

    :cond_0
    int-to-byte p1, p1

    .line 283
    invoke-virtual {p0, p1}, Ljava/io/OutputStream;->write(I)V

    return-void
.end method

.method public static writeVarInt(Ljava/nio/ByteBuffer;I)V
    .locals 1

    :goto_0
    and-int/lit8 v0, p1, -0x80

    if-eqz v0, :cond_0

    and-int/lit8 v0, p1, 0x7f

    or-int/lit16 v0, v0, 0x80

    int-to-byte v0, v0

    .line 294
    invoke-virtual {p0, v0}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    ushr-int/lit8 p1, p1, 0x7

    goto :goto_0

    :cond_0
    int-to-byte p1, p1

    .line 297
    invoke-virtual {p0, p1}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    return-void
.end method

.method public static writeVarLong(Ljava/io/OutputStream;J)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    :goto_0
    const-wide/16 v0, -0x80

    and-long/2addr v0, p1

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-eqz v4, :cond_0

    const-wide/16 v0, 0x80

    const-wide/16 v2, 0x7f

    and-long/2addr v2, p1

    or-long/2addr v0, v2

    long-to-int v0, v0

    int-to-byte v0, v0

    .line 373
    invoke-virtual {p0, v0}, Ljava/io/OutputStream;->write(I)V

    const/4 v0, 0x7

    ushr-long/2addr p1, v0

    goto :goto_0

    :cond_0
    long-to-int p1, p1

    int-to-byte p1, p1

    .line 376
    invoke-virtual {p0, p1}, Ljava/io/OutputStream;->write(I)V

    return-void
.end method

.method public static writeVarLong(Ljava/nio/ByteBuffer;J)V
    .locals 5

    :goto_0
    const-wide/16 v0, -0x80

    and-long/2addr v0, p1

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-eqz v4, :cond_0

    const-wide/16 v0, 0x80

    const-wide/16 v2, 0x7f

    and-long/2addr v2, p1

    or-long/2addr v0, v2

    long-to-int v0, v0

    int-to-byte v0, v0

    .line 358
    invoke-virtual {p0, v0}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    const/4 v0, 0x7

    ushr-long/2addr p1, v0

    goto :goto_0

    :cond_0
    long-to-int p1, p1

    int-to-byte p1, p1

    .line 361
    invoke-virtual {p0, p1}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    return-void
.end method
