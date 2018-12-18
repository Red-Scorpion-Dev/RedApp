.class public abstract Lorg/briarproject/bramble/api/UniqueId;
.super Lorg/briarproject/bramble/api/Bytes;
.source "UniqueId.java"


# annotations
.annotation runtime Lorg/briarproject/bramble/api/nullsafety/NotNullByDefault;
.end annotation


# static fields
.field public static final LENGTH:I = 0x20


# direct methods
.method protected constructor <init>([B)V
    .locals 1

    .line 17
    invoke-direct {p0, p1}, Lorg/briarproject/bramble/api/Bytes;-><init>([B)V

    .line 18
    array-length p1, p1

    const/16 v0, 0x20

    if-ne p1, v0, :cond_0

    return-void

    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    invoke-direct {p1}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw p1
.end method
