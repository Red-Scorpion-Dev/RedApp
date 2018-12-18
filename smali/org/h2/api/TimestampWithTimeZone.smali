.class public Lorg/h2/api/TimestampWithTimeZone;
.super Ljava/sql/Timestamp;
.source "TimestampWithTimeZone.java"


# static fields
.field private static final serialVersionUID:J = 0x3d3ef079c46bdd13L


# instance fields
.field private final timeZoneOffsetMins:S


# direct methods
.method public constructor <init>(JIS)V
    .locals 0

    .line 26
    invoke-direct {p0, p1, p2}, Ljava/sql/Timestamp;-><init>(J)V

    .line 27
    invoke-virtual {p0, p3}, Lorg/h2/api/TimestampWithTimeZone;->setNanos(I)V

    .line 28
    iput-short p4, p0, Lorg/h2/api/TimestampWithTimeZone;->timeZoneOffsetMins:S

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    .line 50
    :cond_0
    invoke-super {p0, p1}, Ljava/sql/Timestamp;->equals(Ljava/lang/Object;)Z

    move-result v1

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    .line 53
    :cond_1
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v1, v3, :cond_2

    return v2

    .line 56
    :cond_2
    check-cast p1, Lorg/h2/api/TimestampWithTimeZone;

    .line 57
    iget-short v1, p0, Lorg/h2/api/TimestampWithTimeZone;->timeZoneOffsetMins:S

    iget-short p1, p1, Lorg/h2/api/TimestampWithTimeZone;->timeZoneOffsetMins:S

    if-eq v1, p1, :cond_3

    return v2

    :cond_3
    return v0
.end method

.method public getTimeZoneOffsetMins()S
    .locals 1

    .line 37
    iget-short v0, p0, Lorg/h2/api/TimestampWithTimeZone;->timeZoneOffsetMins:S

    return v0
.end method

.method public hashCode()I
    .locals 2

    .line 42
    invoke-super {p0}, Ljava/sql/Timestamp;->hashCode()I

    move-result v0

    mul-int/lit8 v0, v0, 0x1f

    iget-short v1, p0, Lorg/h2/api/TimestampWithTimeZone;->timeZoneOffsetMins:S

    add-int/2addr v0, v1

    return v0
.end method
