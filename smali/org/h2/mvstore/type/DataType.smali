.class public interface abstract Lorg/h2/mvstore/type/DataType;
.super Ljava/lang/Object;
.source "DataType.java"


# virtual methods
.method public abstract compare(Ljava/lang/Object;Ljava/lang/Object;)I
.end method

.method public abstract getMemory(Ljava/lang/Object;)I
.end method

.method public abstract read(Ljava/nio/ByteBuffer;)Ljava/lang/Object;
.end method

.method public abstract read(Ljava/nio/ByteBuffer;[Ljava/lang/Object;IZ)V
.end method

.method public abstract write(Lorg/h2/mvstore/WriteBuffer;Ljava/lang/Object;)V
.end method

.method public abstract write(Lorg/h2/mvstore/WriteBuffer;[Ljava/lang/Object;IZ)V
.end method
