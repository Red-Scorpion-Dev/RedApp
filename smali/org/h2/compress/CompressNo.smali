.class public Lorg/h2/compress/CompressNo;
.super Ljava/lang/Object;
.source "CompressNo.java"

# interfaces
.implements Lorg/h2/compress/Compressor;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public compress([BI[BI)I
    .locals 1

    const/4 v0, 0x0

    .line 27
    invoke-static {p1, v0, p3, p4, p2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    add-int/2addr p4, p2

    return p4
.end method

.method public expand([BII[BII)V
    .locals 0

    .line 34
    invoke-static {p1, p2, p4, p5, p6}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-void
.end method

.method public getAlgorithm()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public setOptions(Ljava/lang/String;)V
    .locals 0

    return-void
.end method
