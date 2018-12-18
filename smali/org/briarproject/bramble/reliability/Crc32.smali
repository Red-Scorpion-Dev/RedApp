.class Lorg/briarproject/bramble/reliability/Crc32;
.super Ljava/lang/Object;
.source "Crc32.java"


# annotations
.annotation runtime Lorg/briarproject/bramble/api/nullsafety/NotNullByDefault;
.end annotation


# static fields
.field private static final TABLE:[J


# direct methods
.method static constructor <clinit>()V
    .locals 12

    const/16 v0, 0x100

    .line 8
    new-array v1, v0, [J

    sput-object v1, Lorg/briarproject/bramble/reliability/Crc32;->TABLE:[J

    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_2

    int-to-long v3, v2

    move-wide v4, v3

    const/4 v3, 0x0

    :goto_1
    const/16 v6, 0x8

    if-ge v3, v6, :cond_1

    const-wide/16 v6, 0x1

    and-long/2addr v6, v4

    const-wide/16 v8, 0x0

    const/4 v10, 0x1

    cmp-long v11, v6, v8

    if-eqz v11, :cond_0

    const-wide v6, 0xedb88320L

    shr-long/2addr v4, v10

    xor-long/2addr v4, v6

    goto :goto_2

    :cond_0
    shr-long/2addr v4, v10

    :goto_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 17
    :cond_1
    sget-object v3, Lorg/briarproject/bramble/reliability/Crc32;->TABLE:[J

    aput-wide v4, v3, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_2
    return-void
.end method

.method constructor <init>()V
    .locals 0

    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static crc([BII)J
    .locals 2

    const-wide v0, 0xffffffffL

    .line 28
    invoke-static {v0, v1, p0, p1, p2}, Lorg/briarproject/bramble/reliability/Crc32;->update(J[BII)J

    move-result-wide p0

    xor-long/2addr p0, v0

    return-wide p0
.end method

.method private static update(J[BII)J
    .locals 6

    move-wide v0, p0

    move p0, p3

    :goto_0
    add-int p1, p3, p4

    if-ge p0, p1, :cond_0

    .line 23
    sget-object p1, Lorg/briarproject/bramble/reliability/Crc32;->TABLE:[J

    aget-byte v2, p2, p0

    int-to-long v2, v2

    xor-long/2addr v2, v0

    const-wide/16 v4, 0xff

    and-long/2addr v2, v4

    long-to-int v2, v2

    aget-wide v2, p1, v2

    const/16 p1, 0x8

    shr-long/2addr v0, p1

    xor-long/2addr v0, v2

    add-int/lit8 p0, p0, 0x1

    goto :goto_0

    :cond_0
    return-wide v0
.end method
