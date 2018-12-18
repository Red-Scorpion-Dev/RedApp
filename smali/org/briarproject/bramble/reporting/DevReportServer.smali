.class public Lorg/briarproject/bramble/reporting/DevReportServer;
.super Ljava/lang/Object;
.source "DevReportServer.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/briarproject/bramble/reporting/DevReportServer$ReportSaver;,
        Lorg/briarproject/bramble/reporting/DevReportServer$TokenBucket;
    }
.end annotation

.annotation runtime Lorg/briarproject/bramble/api/nullsafety/NotNullByDefault;
.end annotation


# static fields
.field private static final FILE_PREFIX:Ljava/lang/String; = "report-"

.field private static final FILE_SUFFIX:Ljava/lang/String; = ".enc"

.field private static final MAX_REPORT_LENGTH:I = 0x100000

.field private static final MAX_TOKENS:I = 0x3e8

.field private static final MIN_REQUEST_INTERVAL_MS:I = 0xea60

.field private static final SOCKET_TIMEOUT_MS:I = 0xea60


# instance fields
.field private final listenAddress:Ljava/net/InetSocketAddress;

.field private final reportDir:Ljava/io/File;


# direct methods
.method private constructor <init>(Ljava/net/InetSocketAddress;Ljava/io/File;)V
    .locals 0

    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 35
    iput-object p1, p0, Lorg/briarproject/bramble/reporting/DevReportServer;->listenAddress:Ljava/net/InetSocketAddress;

    .line 36
    iput-object p2, p0, Lorg/briarproject/bramble/reporting/DevReportServer;->reportDir:Ljava/io/File;

    return-void
.end method

.method static synthetic access$300(Lorg/briarproject/bramble/reporting/DevReportServer;)Ljava/io/File;
    .locals 0

    .line 22
    iget-object p0, p0, Lorg/briarproject/bramble/reporting/DevReportServer;->reportDir:Ljava/io/File;

    return-object p0
.end method

.method static synthetic access$400(Lorg/briarproject/bramble/reporting/DevReportServer;Ljava/io/Closeable;)V
    .locals 0

    .line 22
    invoke-direct {p0, p1}, Lorg/briarproject/bramble/reporting/DevReportServer;->tryToClose(Ljava/io/Closeable;)V

    return-void
.end method

.method private listen()V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 40
    new-instance v0, Ljava/net/ServerSocket;

    invoke-direct {v0}, Ljava/net/ServerSocket;-><init>()V

    .line 41
    iget-object v1, p0, Lorg/briarproject/bramble/reporting/DevReportServer;->listenAddress:Ljava/net/InetSocketAddress;

    invoke-virtual {v0, v1}, Ljava/net/ServerSocket;->bind(Ljava/net/SocketAddress;)V

    .line 42
    new-instance v1, Lorg/briarproject/bramble/reporting/DevReportServer$TokenBucket;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Lorg/briarproject/bramble/reporting/DevReportServer$TokenBucket;-><init>(Lorg/briarproject/bramble/reporting/DevReportServer$1;)V

    .line 43
    invoke-virtual {v1}, Lorg/briarproject/bramble/reporting/DevReportServer$TokenBucket;->start()V

    .line 46
    :goto_0
    :try_start_0
    invoke-virtual {v0}, Ljava/net/ServerSocket;->accept()Ljava/net/Socket;

    move-result-object v3

    .line 47
    sget-object v4, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v5, "Incoming connection"

    invoke-virtual {v4, v5}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 48
    invoke-static {v1}, Lorg/briarproject/bramble/reporting/DevReportServer$TokenBucket;->access$100(Lorg/briarproject/bramble/reporting/DevReportServer$TokenBucket;)V

    .line 49
    new-instance v4, Lorg/briarproject/bramble/reporting/DevReportServer$ReportSaver;

    invoke-direct {v4, p0, v3, v2}, Lorg/briarproject/bramble/reporting/DevReportServer$ReportSaver;-><init>(Lorg/briarproject/bramble/reporting/DevReportServer;Ljava/net/Socket;Lorg/briarproject/bramble/reporting/DevReportServer$1;)V

    invoke-virtual {v4}, Lorg/briarproject/bramble/reporting/DevReportServer$ReportSaver;->start()V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v1

    goto :goto_1

    .line 52
    :catch_0
    :try_start_1
    sget-object v1, Ljava/lang/System;->err:Ljava/io/PrintStream;

    const-string v2, "Interrupted while listening"

    invoke-virtual {v1, v2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 54
    invoke-direct {p0, v0}, Lorg/briarproject/bramble/reporting/DevReportServer;->tryToClose(Ljava/net/ServerSocket;)V

    return-void

    :goto_1
    invoke-direct {p0, v0}, Lorg/briarproject/bramble/reporting/DevReportServer;->tryToClose(Ljava/net/ServerSocket;)V

    .line 55
    throw v1
.end method

.method public static main([Ljava/lang/String;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 75
    array-length v0, p0

    const/4 v1, 0x1

    const/4 v2, 0x3

    if-eq v0, v2, :cond_0

    .line 76
    sget-object v0, Ljava/lang/System;->err:Ljava/io/PrintStream;

    const-string v2, "Usage:"

    invoke-virtual {v0, v2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 77
    sget-object v0, Ljava/lang/System;->err:Ljava/io/PrintStream;

    const-string v2, "DevReportServer <addr> <port> <report_dir>"

    invoke-virtual {v0, v2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 78
    invoke-static {v1}, Ljava/lang/System;->exit(I)V

    .line 80
    :cond_0
    aget-object v0, p0, v1

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    .line 81
    new-instance v1, Ljava/net/InetSocketAddress;

    const/4 v2, 0x0

    aget-object v2, p0, v2

    invoke-direct {v1, v2, v0}, Ljava/net/InetSocketAddress;-><init>(Ljava/lang/String;I)V

    .line 82
    new-instance v0, Ljava/io/File;

    const/4 v2, 0x2

    aget-object p0, p0, v2

    invoke-direct {v0, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 83
    sget-object p0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Listening on "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 84
    sget-object p0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Saving reports to "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 85
    new-instance p0, Lorg/briarproject/bramble/reporting/DevReportServer;

    invoke-direct {p0, v1, v0}, Lorg/briarproject/bramble/reporting/DevReportServer;-><init>(Ljava/net/InetSocketAddress;Ljava/io/File;)V

    invoke-direct {p0}, Lorg/briarproject/bramble/reporting/DevReportServer;->listen()V

    return-void
.end method

.method private tryToClose(Ljava/io/Closeable;)V
    .locals 0

    if-eqz p1, :cond_0

    .line 68
    :try_start_0
    invoke-interface {p1}, Ljava/io/Closeable;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 70
    invoke-virtual {p1}, Ljava/io/IOException;->printStackTrace()V

    :cond_0
    :goto_0
    return-void
.end method

.method private tryToClose(Ljava/net/ServerSocket;)V
    .locals 0

    if-eqz p1, :cond_0

    .line 60
    :try_start_0
    invoke-virtual {p1}, Ljava/net/ServerSocket;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 62
    invoke-virtual {p1}, Ljava/io/IOException;->printStackTrace()V

    :cond_0
    :goto_0
    return-void
.end method
