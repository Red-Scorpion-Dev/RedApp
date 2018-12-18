.class public final Lcom/rometools/utils/Dates;
.super Ljava/lang/Object;
.source "Dates.java"


# direct methods
.method public static copy(Ljava/util/Date;)Ljava/util/Date;
    .locals 3

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 34
    :cond_0
    new-instance v0, Ljava/util/Date;

    invoke-virtual {p0}, Ljava/util/Date;->getTime()J

    move-result-wide v1

    invoke-direct {v0, v1, v2}, Ljava/util/Date;-><init>(J)V

    return-object v0
.end method
