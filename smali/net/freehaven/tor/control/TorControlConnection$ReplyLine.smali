.class Lnet/freehaven/tor/control/TorControlConnection$ReplyLine;
.super Ljava/lang/Object;
.source "TorControlConnection.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnet/freehaven/tor/control/TorControlConnection;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "ReplyLine"
.end annotation


# instance fields
.field final msg:Ljava/lang/String;

.field final rest:Ljava/lang/String;

.field final status:Ljava/lang/String;


# direct methods
.method constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 72
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 73
    iput-object p1, p0, Lnet/freehaven/tor/control/TorControlConnection$ReplyLine;->status:Ljava/lang/String;

    iput-object p2, p0, Lnet/freehaven/tor/control/TorControlConnection$ReplyLine;->msg:Ljava/lang/String;

    iput-object p3, p0, Lnet/freehaven/tor/control/TorControlConnection$ReplyLine;->rest:Ljava/lang/String;

    return-void
.end method
