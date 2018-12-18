.class public Lnet/freehaven/tor/control/TorControlConnection$ControlParseThread;
.super Ljava/lang/Thread;
.source "TorControlConnection.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnet/freehaven/tor/control/TorControlConnection;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4
    name = "ControlParseThread"
.end annotation


# instance fields
.field final synthetic this$0:Lnet/freehaven/tor/control/TorControlConnection;


# direct methods
.method protected constructor <init>(Lnet/freehaven/tor/control/TorControlConnection;)V
    .locals 0

    .line 295
    iput-object p1, p0, Lnet/freehaven/tor/control/TorControlConnection$ControlParseThread;->this$0:Lnet/freehaven/tor/control/TorControlConnection;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 300
    :try_start_0
    iget-object v0, p0, Lnet/freehaven/tor/control/TorControlConnection$ControlParseThread;->this$0:Lnet/freehaven/tor/control/TorControlConnection;

    invoke-virtual {v0}, Lnet/freehaven/tor/control/TorControlConnection;->react()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 302
    iget-object v1, p0, Lnet/freehaven/tor/control/TorControlConnection$ControlParseThread;->this$0:Lnet/freehaven/tor/control/TorControlConnection;

    invoke-static {v1, v0}, Lnet/freehaven/tor/control/TorControlConnection;->access$002(Lnet/freehaven/tor/control/TorControlConnection;Ljava/io/IOException;)Ljava/io/IOException;

    :goto_0
    return-void
.end method
