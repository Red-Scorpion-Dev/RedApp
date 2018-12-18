.class public Lorg/briarproject/bramble/util/ValidationUtils;
.super Ljava/lang/Object;
.source "ValidationUtils.java"


# annotations
.annotation runtime Lorg/briarproject/bramble/api/nullsafety/NotNullByDefault;
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static checkLength(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/briarproject/bramble/api/FormatException;
        }
    .end annotation

    if-eqz p0, :cond_1

    .line 24
    invoke-static {p0}, Lorg/briarproject/bramble/util/StringUtils;->toUtf8(Ljava/lang/String;)[B

    move-result-object p0

    array-length p0, p0

    if-ne p0, p1, :cond_0

    goto :goto_0

    .line 25
    :cond_0
    new-instance p0, Lorg/briarproject/bramble/api/FormatException;

    invoke-direct {p0}, Lorg/briarproject/bramble/api/FormatException;-><init>()V

    throw p0

    :cond_1
    :goto_0
    return-void
.end method

.method public static checkLength(Ljava/lang/String;II)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/briarproject/bramble/api/FormatException;
        }
    .end annotation

    if-eqz p0, :cond_2

    .line 16
    invoke-static {p0}, Lorg/briarproject/bramble/util/StringUtils;->toUtf8(Ljava/lang/String;)[B

    move-result-object p0

    array-length p0, p0

    if-lt p0, p1, :cond_1

    if-gt p0, p2, :cond_0

    goto :goto_0

    .line 18
    :cond_0
    new-instance p0, Lorg/briarproject/bramble/api/FormatException;

    invoke-direct {p0}, Lorg/briarproject/bramble/api/FormatException;-><init>()V

    throw p0

    .line 17
    :cond_1
    new-instance p0, Lorg/briarproject/bramble/api/FormatException;

    invoke-direct {p0}, Lorg/briarproject/bramble/api/FormatException;-><init>()V

    throw p0

    :cond_2
    :goto_0
    return-void
.end method

.method public static checkLength([BI)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/briarproject/bramble/api/FormatException;
        }
    .end annotation

    if-eqz p0, :cond_1

    .line 38
    array-length p0, p0

    if-ne p0, p1, :cond_0

    goto :goto_0

    :cond_0
    new-instance p0, Lorg/briarproject/bramble/api/FormatException;

    invoke-direct {p0}, Lorg/briarproject/bramble/api/FormatException;-><init>()V

    throw p0

    :cond_1
    :goto_0
    return-void
.end method

.method public static checkLength([BII)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/briarproject/bramble/api/FormatException;
        }
    .end annotation

    if-eqz p0, :cond_2

    .line 31
    array-length v0, p0

    if-lt v0, p1, :cond_1

    .line 32
    array-length p0, p0

    if-gt p0, p2, :cond_0

    goto :goto_0

    :cond_0
    new-instance p0, Lorg/briarproject/bramble/api/FormatException;

    invoke-direct {p0}, Lorg/briarproject/bramble/api/FormatException;-><init>()V

    throw p0

    .line 31
    :cond_1
    new-instance p0, Lorg/briarproject/bramble/api/FormatException;

    invoke-direct {p0}, Lorg/briarproject/bramble/api/FormatException;-><init>()V

    throw p0

    :cond_2
    :goto_0
    return-void
.end method

.method public static checkSize(Lorg/briarproject/bramble/api/data/BdfDictionary;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/briarproject/bramble/api/FormatException;
        }
    .end annotation

    if-eqz p0, :cond_1

    .line 64
    invoke-virtual {p0}, Lorg/briarproject/bramble/api/data/BdfDictionary;->size()I

    move-result p0

    if-ne p0, p1, :cond_0

    goto :goto_0

    .line 65
    :cond_0
    new-instance p0, Lorg/briarproject/bramble/api/FormatException;

    invoke-direct {p0}, Lorg/briarproject/bramble/api/FormatException;-><init>()V

    throw p0

    :cond_1
    :goto_0
    return-void
.end method

.method public static checkSize(Lorg/briarproject/bramble/api/data/BdfDictionary;II)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/briarproject/bramble/api/FormatException;
        }
    .end annotation

    if-eqz p0, :cond_2

    .line 57
    invoke-virtual {p0}, Lorg/briarproject/bramble/api/data/BdfDictionary;->size()I

    move-result v0

    if-lt v0, p1, :cond_1

    .line 58
    invoke-virtual {p0}, Lorg/briarproject/bramble/api/data/BdfDictionary;->size()I

    move-result p0

    if-gt p0, p2, :cond_0

    goto :goto_0

    :cond_0
    new-instance p0, Lorg/briarproject/bramble/api/FormatException;

    invoke-direct {p0}, Lorg/briarproject/bramble/api/FormatException;-><init>()V

    throw p0

    .line 57
    :cond_1
    new-instance p0, Lorg/briarproject/bramble/api/FormatException;

    invoke-direct {p0}, Lorg/briarproject/bramble/api/FormatException;-><init>()V

    throw p0

    :cond_2
    :goto_0
    return-void
.end method

.method public static checkSize(Lorg/briarproject/bramble/api/data/BdfList;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/briarproject/bramble/api/FormatException;
        }
    .end annotation

    if-eqz p0, :cond_1

    .line 51
    invoke-virtual {p0}, Lorg/briarproject/bramble/api/data/BdfList;->size()I

    move-result p0

    if-ne p0, p1, :cond_0

    goto :goto_0

    :cond_0
    new-instance p0, Lorg/briarproject/bramble/api/FormatException;

    invoke-direct {p0}, Lorg/briarproject/bramble/api/FormatException;-><init>()V

    throw p0

    :cond_1
    :goto_0
    return-void
.end method

.method public static checkSize(Lorg/briarproject/bramble/api/data/BdfList;II)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/briarproject/bramble/api/FormatException;
        }
    .end annotation

    if-eqz p0, :cond_2

    .line 44
    invoke-virtual {p0}, Lorg/briarproject/bramble/api/data/BdfList;->size()I

    move-result v0

    if-lt v0, p1, :cond_1

    .line 45
    invoke-virtual {p0}, Lorg/briarproject/bramble/api/data/BdfList;->size()I

    move-result p0

    if-gt p0, p2, :cond_0

    goto :goto_0

    :cond_0
    new-instance p0, Lorg/briarproject/bramble/api/FormatException;

    invoke-direct {p0}, Lorg/briarproject/bramble/api/FormatException;-><init>()V

    throw p0

    .line 44
    :cond_1
    new-instance p0, Lorg/briarproject/bramble/api/FormatException;

    invoke-direct {p0}, Lorg/briarproject/bramble/api/FormatException;-><init>()V

    throw p0

    :cond_2
    :goto_0
    return-void
.end method
