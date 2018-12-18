.class Lorg/spongycastle/asn1/StreamUtil;
.super Ljava/lang/Object;
.source "StreamUtil.java"


# static fields
.field private static final MAX_MEMORY:J


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 11
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Runtime;->maxMemory()J

    move-result-wide v0

    sput-wide v0, Lorg/spongycastle/asn1/StreamUtil;->MAX_MEMORY:J

    return-void
.end method

.method static calculateBodyLength(I)I
    .locals 2

    const/4 v0, 0x1

    const/16 v1, 0x7f

    if-le p0, v1, :cond_1

    const/4 v1, 0x1

    :goto_0
    ushr-int/lit8 p0, p0, 0x8

    if-eqz p0, :cond_0

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    sub-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x8

    :goto_1
    if-ltz v1, :cond_1

    add-int/lit8 v0, v0, 0x1

    add-int/lit8 v1, v1, -0x8

    goto :goto_1

    :cond_1
    return v0
.end method
