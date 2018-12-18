.class public interface abstract Lorg/h2/compress/Compressor;
.super Ljava/lang/Object;
.source "Compressor.java"


# static fields
.field public static final DEFLATE:I = 0x2

.field public static final LZF:I = 0x1

.field public static final NO:I


# virtual methods
.method public abstract compress([BI[BI)I
.end method

.method public abstract expand([BII[BII)V
.end method

.method public abstract getAlgorithm()I
.end method

.method public abstract setOptions(Ljava/lang/String;)V
.end method
