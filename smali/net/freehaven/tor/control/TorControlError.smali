.class public Lnet/freehaven/tor/control/TorControlError;
.super Ljava/io/IOException;
.source "TorControlError.java"


# instance fields
.field private final errorType:I


# direct methods
.method public constructor <init>(ILjava/lang/String;)V
    .locals 0

    .line 17
    invoke-direct {p0, p2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .line 18
    iput p1, p0, Lnet/freehaven/tor/control/TorControlError;->errorType:I

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 1

    const/4 v0, -0x1

    .line 22
    invoke-direct {p0, v0, p1}, Lnet/freehaven/tor/control/TorControlError;-><init>(ILjava/lang/String;)V

    return-void
.end method
