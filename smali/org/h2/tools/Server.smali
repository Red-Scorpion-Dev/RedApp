.class public Lorg/h2/tools/Server;
.super Lorg/h2/util/Tool;
.source "Server.java"

# interfaces
.implements Ljava/lang/Runnable;
.implements Lorg/h2/server/ShutdownHandler;


# instance fields
.field private pg:Lorg/h2/tools/Server;

.field private final service:Lorg/h2/server/Service;

.field private shutdownHandler:Lorg/h2/server/ShutdownHandler;

.field private started:Z

.field private tcp:Lorg/h2/tools/Server;

.field private web:Lorg/h2/tools/Server;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 35
    invoke-direct {p0}, Lorg/h2/util/Tool;-><init>()V

    const/4 v0, 0x0

    .line 37
    iput-object v0, p0, Lorg/h2/tools/Server;->service:Lorg/h2/server/Service;

    return-void
.end method

.method public varargs constructor <init>(Lorg/h2/server/Service;[Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 46
    invoke-direct {p0}, Lorg/h2/util/Tool;-><init>()V

    .line 47
    invoke-direct {p0, p2}, Lorg/h2/tools/Server;->verifyArgs([Ljava/lang/String;)V

    .line 48
    iput-object p1, p0, Lorg/h2/tools/Server;->service:Lorg/h2/server/Service;

    .line 50
    :try_start_0
    invoke-interface {p1, p2}, Lorg/h2/server/Service;->init([Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    .line 52
    invoke-static {p1}, Lorg/h2/message/DbException;->toSQLException(Ljava/lang/Exception;)Ljava/sql/SQLException;

    move-result-object p1

    throw p1
.end method

.method public static varargs createPgServer([Ljava/lang/String;)Lorg/h2/tools/Server;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 473
    new-instance v0, Lorg/h2/tools/Server;

    new-instance v1, Lorg/h2/server/pg/PgServer;

    invoke-direct {v1}, Lorg/h2/server/pg/PgServer;-><init>()V

    invoke-direct {v0, v1, p0}, Lorg/h2/tools/Server;-><init>(Lorg/h2/server/Service;[Ljava/lang/String;)V

    return-object v0
.end method

.method public static varargs createTcpServer([Ljava/lang/String;)Lorg/h2/tools/Server;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 446
    new-instance v0, Lorg/h2/server/TcpServer;

    invoke-direct {v0}, Lorg/h2/server/TcpServer;-><init>()V

    .line 447
    new-instance v1, Lorg/h2/tools/Server;

    invoke-direct {v1, v0, p0}, Lorg/h2/tools/Server;-><init>(Lorg/h2/server/Service;[Ljava/lang/String;)V

    .line 448
    invoke-virtual {v0, v1}, Lorg/h2/server/TcpServer;->setShutdownHandler(Lorg/h2/server/ShutdownHandler;)V

    return-object v1
.end method

.method public static varargs createWebServer([Ljava/lang/String;)Lorg/h2/tools/Server;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 419
    new-instance v0, Lorg/h2/server/web/WebServer;

    invoke-direct {v0}, Lorg/h2/server/web/WebServer;-><init>()V

    .line 420
    new-instance v1, Lorg/h2/tools/Server;

    invoke-direct {v1, v0, p0}, Lorg/h2/tools/Server;-><init>(Lorg/h2/server/Service;[Ljava/lang/String;)V

    .line 421
    invoke-virtual {v0, v1}, Lorg/h2/server/web/WebServer;->setShutdownHandler(Lorg/h2/server/ShutdownHandler;)V

    return-object v1
.end method

.method public static varargs main([Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 118
    new-instance v0, Lorg/h2/tools/Server;

    invoke-direct {v0}, Lorg/h2/tools/Server;-><init>()V

    invoke-virtual {v0, p0}, Lorg/h2/tools/Server;->runTool([Ljava/lang/String;)V

    return-void
.end method

.method public static openBrowser(Ljava/lang/String;)V
    .locals 13
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    :try_start_0
    const-string v0, "os.name"

    const-string v1, "linux"

    .line 619
    invoke-static {v0, v1}, Lorg/h2/util/Utils;->getProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lorg/h2/util/StringUtils;->toLowerEnglish(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 621
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v1

    const-string v2, "h2.browser"

    const/4 v3, 0x0

    .line 622
    invoke-static {v2, v3}, Lorg/h2/util/Utils;->getProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_3

    if-nez v2, :cond_0

    :try_start_1
    const-string v4, "BROWSER"

    .line 626
    invoke-static {v4}, Ljava/lang/System;->getenv(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4
    :try_end_1
    .catch Ljava/lang/SecurityException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_3

    move-object v2, v4

    :catch_0
    :cond_0
    const/4 v4, 0x4

    const/4 v5, 0x3

    const/4 v6, 0x2

    const/4 v7, 0x1

    const/4 v8, 0x0

    if-eqz v2, :cond_5

    :try_start_2
    const-string v3, "call:"

    .line 632
    invoke-virtual {v2, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1

    const-string v0, "call:"

    .line 633
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    invoke-virtual {v2, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    .line 634
    new-array v1, v7, [Ljava/lang/Object;

    aput-object p0, v1, v8

    invoke-static {v0, v1}, Lorg/h2/util/Utils;->callStaticMethod(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    :cond_1
    const-string v3, "%url"

    .line 635
    invoke-virtual {v2, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_3

    const/16 v0, 0x2c

    .line 636
    invoke-static {v2, v0, v8}, Lorg/h2/util/StringUtils;->arraySplit(Ljava/lang/String;CZ)[Ljava/lang/String;

    move-result-object v0

    .line 637
    :goto_0
    array-length v2, v0

    if-ge v8, v2, :cond_2

    .line 638
    aget-object v2, v0, v8

    const-string v3, "%url"

    invoke-static {v2, v3, p0}, Lorg/h2/util/StringUtils;->replaceAll(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v8

    add-int/lit8 v8, v8, 0x1

    goto :goto_0

    .line 640
    :cond_2
    invoke-virtual {v1, v0}, Ljava/lang/Runtime;->exec([Ljava/lang/String;)Ljava/lang/Process;

    goto :goto_1

    :cond_3
    const-string v3, "windows"

    .line 641
    invoke-virtual {v0, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 642
    new-array v0, v4, [Ljava/lang/String;

    const-string v3, "cmd.exe"

    aput-object v3, v0, v8

    const-string v3, "/C"

    aput-object v3, v0, v7

    aput-object v2, v0, v6

    aput-object p0, v0, v5

    invoke-virtual {v1, v0}, Ljava/lang/Runtime;->exec([Ljava/lang/String;)Ljava/lang/Process;

    goto :goto_1

    .line 644
    :cond_4
    new-array v0, v6, [Ljava/lang/String;

    aput-object v2, v0, v8

    aput-object p0, v0, v7

    invoke-virtual {v1, v0}, Ljava/lang/Runtime;->exec([Ljava/lang/String;)Ljava/lang/Process;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_3

    :goto_1
    return-void

    :cond_5
    :try_start_3
    const-string v2, "java.awt.Desktop"

    .line 649
    invoke-static {v2}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v2

    const-string v9, "isDesktopSupported"

    .line 651
    new-array v10, v8, [Ljava/lang/Class;

    invoke-virtual {v2, v9, v10}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v9

    new-array v10, v8, [Ljava/lang/Object;

    invoke-virtual {v9, v3, v10}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/Boolean;

    .line 654
    new-instance v10, Ljava/net/URI;

    invoke-direct {v10, p0}, Ljava/net/URI;-><init>(Ljava/lang/String;)V

    .line 655
    invoke-virtual {v9}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v9

    if-eqz v9, :cond_6

    const-string v9, "getDesktop"

    .line 657
    new-array v11, v8, [Ljava/lang/Class;

    invoke-virtual {v2, v9, v11}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v9

    new-array v11, v8, [Ljava/lang/Object;

    invoke-virtual {v9, v3, v11}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    const-string v9, "browse"

    .line 660
    new-array v11, v7, [Ljava/lang/Class;

    const-class v12, Ljava/net/URI;

    aput-object v12, v11, v8

    invoke-virtual {v2, v9, v11}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v2

    new-array v9, v7, [Ljava/lang/Object;

    aput-object v10, v9, v8

    invoke-virtual {v2, v3, v9}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1

    return-void

    :catch_1
    :cond_6
    :try_start_4
    const-string v2, "windows"

    .line 667
    invoke-virtual {v0, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_7

    .line 668
    new-array v0, v5, [Ljava/lang/String;

    const-string v2, "rundll32"

    aput-object v2, v0, v8

    const-string v2, "url.dll,FileProtocolHandler"

    aput-object v2, v0, v7

    aput-object p0, v0, v6

    invoke-virtual {v1, v0}, Ljava/lang/Runtime;->exec([Ljava/lang/String;)Ljava/lang/Process;

    goto :goto_5

    :cond_7
    const-string v2, "mac"

    .line 669
    invoke-virtual {v0, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_b

    const-string v2, "darwin"

    invoke-virtual {v0, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_8

    goto :goto_4

    :cond_8
    const/16 v0, 0x9

    .line 673
    new-array v0, v0, [Ljava/lang/String;

    const-string v2, "chromium"

    aput-object v2, v0, v8

    const-string v2, "google-chrome"

    aput-object v2, v0, v7

    const-string v2, "firefox"

    aput-object v2, v0, v6

    const-string v2, "mozilla-firefox"

    aput-object v2, v0, v5

    const-string v2, "mozilla"

    aput-object v2, v0, v4

    const/4 v2, 0x5

    const-string v3, "konqueror"

    aput-object v3, v0, v2

    const/4 v2, 0x6

    const-string v3, "netscape"

    aput-object v3, v0, v2

    const/4 v2, 0x7

    const-string v3, "opera"

    aput-object v3, v0, v2

    const/16 v2, 0x8

    const-string v3, "midori"

    aput-object v3, v0, v2

    .line 677
    array-length v2, v0

    const/4 v3, 0x0

    :goto_2
    if-ge v3, v2, :cond_9

    aget-object v4, v0, v3
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_3

    .line 679
    :try_start_5
    new-array v5, v6, [Ljava/lang/String;

    aput-object v4, v5, v8

    aput-object p0, v5, v7

    invoke-virtual {v1, v5}, Ljava/lang/Runtime;->exec([Ljava/lang/String;)Ljava/lang/Process;
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_2

    goto :goto_3

    :catch_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    :cond_9
    const/4 v7, 0x0

    :goto_3
    if-eqz v7, :cond_a

    goto :goto_5

    .line 688
    :cond_a
    :try_start_6
    new-instance v0, Ljava/lang/Exception;

    const-string v1, "Browser detection failed and system property h2.browser not set"

    invoke-direct {v0, v1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw v0

    .line 671
    :cond_b
    :goto_4
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v0

    new-array v1, v6, [Ljava/lang/String;

    const-string v2, "open"

    aput-object v2, v1, v8

    aput-object p0, v1, v7

    invoke-virtual {v0, v1}, Ljava/lang/Runtime;->exec([Ljava/lang/String;)Ljava/lang/Process;
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_3

    :goto_5
    return-void

    :catch_3
    move-exception v0

    .line 694
    new-instance v1, Ljava/lang/Exception;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Failed to start a browser to open the URL "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, ": "

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v1, p0}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public static shutdownTcpServer(Ljava/lang/String;Ljava/lang/String;ZZ)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 371
    invoke-static {p0, p1, p2, p3}, Lorg/h2/server/TcpServer;->shutdown(Ljava/lang/String;Ljava/lang/String;ZZ)V

    return-void
.end method

.method public static startWebServer(Ljava/sql/Connection;)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 709
    new-instance v0, Lorg/h2/server/web/WebServer;

    invoke-direct {v0}, Lorg/h2/server/web/WebServer;-><init>()V

    .line 710
    new-instance v1, Lorg/h2/tools/Server;

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/String;

    const-string v3, "-webPort"

    const/4 v4, 0x0

    aput-object v3, v2, v4

    const-string v3, "0"

    const/4 v4, 0x1

    aput-object v3, v2, v4

    invoke-direct {v1, v0, v2}, Lorg/h2/tools/Server;-><init>(Lorg/h2/server/Service;[Ljava/lang/String;)V

    .line 711
    invoke-virtual {v1}, Lorg/h2/tools/Server;->start()Lorg/h2/tools/Server;

    .line 712
    new-instance v2, Lorg/h2/tools/Server;

    invoke-direct {v2}, Lorg/h2/tools/Server;-><init>()V

    .line 713
    iput-object v1, v2, Lorg/h2/tools/Server;->web:Lorg/h2/tools/Server;

    .line 714
    invoke-virtual {v0, v2}, Lorg/h2/server/web/WebServer;->setShutdownHandler(Lorg/h2/server/ShutdownHandler;)V

    .line 715
    invoke-virtual {v0, p0}, Lorg/h2/server/web/WebServer;->addSession(Ljava/sql/Connection;)Ljava/lang/String;

    move-result-object p0

    .line 717
    :try_start_0
    invoke-static {p0}, Lorg/h2/tools/Server;->openBrowser(Ljava/lang/String;)V

    .line 718
    :goto_0
    invoke-virtual {v0}, Lorg/h2/server/web/WebServer;->isStopped()Z

    move-result p0

    if-nez p0, :cond_0

    const-wide/16 v1, 0x3e8

    .line 719
    invoke-static {v1, v2}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    :cond_0
    return-void
.end method

.method private stopAll()V
    .locals 4

    .line 517
    iget-object v0, p0, Lorg/h2/tools/Server;->web:Lorg/h2/tools/Server;

    const/4 v1, 0x0

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    .line 518
    invoke-virtual {v0, v2}, Lorg/h2/tools/Server;->isRunning(Z)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 519
    invoke-virtual {v0}, Lorg/h2/tools/Server;->stop()V

    .line 520
    iput-object v1, p0, Lorg/h2/tools/Server;->web:Lorg/h2/tools/Server;

    .line 522
    :cond_0
    iget-object v0, p0, Lorg/h2/tools/Server;->tcp:Lorg/h2/tools/Server;

    if-eqz v0, :cond_1

    .line 523
    invoke-virtual {v0, v2}, Lorg/h2/tools/Server;->isRunning(Z)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 524
    invoke-virtual {v0}, Lorg/h2/tools/Server;->stop()V

    .line 525
    iput-object v1, p0, Lorg/h2/tools/Server;->tcp:Lorg/h2/tools/Server;

    .line 527
    :cond_1
    iget-object v0, p0, Lorg/h2/tools/Server;->pg:Lorg/h2/tools/Server;

    if-eqz v0, :cond_2

    .line 528
    invoke-virtual {v0, v2}, Lorg/h2/tools/Server;->isRunning(Z)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 529
    invoke-virtual {v0}, Lorg/h2/tools/Server;->stop()V

    .line 530
    iput-object v1, p0, Lorg/h2/tools/Server;->pg:Lorg/h2/tools/Server;

    :cond_2
    return-void
.end method

.method private varargs verifyArgs([Ljava/lang/String;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    const/4 v0, 0x0

    :goto_0
    if-eqz p1, :cond_25

    .line 122
    array-length v1, p1

    if-ge v0, v1, :cond_25

    .line 123
    aget-object v1, p1, v0

    if-nez v1, :cond_0

    goto/16 :goto_1

    :cond_0
    const-string v2, "-?"

    .line 126
    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_24

    const-string v2, "-help"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    goto/16 :goto_1

    :cond_1
    const-string v2, "-web"

    .line 128
    invoke-virtual {v1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_7

    const-string v2, "-web"

    .line 129
    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    goto/16 :goto_1

    :cond_2
    const-string v2, "-webAllowOthers"

    .line 131
    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    goto/16 :goto_1

    :cond_3
    const-string v2, "-webDaemon"

    .line 133
    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    goto/16 :goto_1

    :cond_4
    const-string v2, "-webSSL"

    .line 135
    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5

    goto/16 :goto_1

    :cond_5
    const-string v2, "-webPort"

    .line 137
    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_6

    add-int/lit8 v0, v0, 0x1

    goto/16 :goto_1

    .line 140
    :cond_6
    invoke-virtual {p0, v1}, Lorg/h2/tools/Server;->throwUnsupportedOption(Ljava/lang/String;)Ljava/sql/SQLException;

    goto/16 :goto_1

    :cond_7
    const-string v2, "-browser"

    .line 142
    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_8

    goto/16 :goto_1

    :cond_8
    const-string v2, "-tcp"

    .line 144
    invoke-virtual {v1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_11

    const-string v2, "-tcp"

    .line 145
    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_9

    goto/16 :goto_1

    :cond_9
    const-string v2, "-tcpAllowOthers"

    .line 147
    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_a

    goto/16 :goto_1

    :cond_a
    const-string v2, "-tcpDaemon"

    .line 149
    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_b

    goto/16 :goto_1

    :cond_b
    const-string v2, "-tcpSSL"

    .line 151
    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_c

    goto/16 :goto_1

    :cond_c
    const-string v2, "-tcpPort"

    .line 153
    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_d

    add-int/lit8 v0, v0, 0x1

    goto/16 :goto_1

    :cond_d
    const-string v2, "-tcpPassword"

    .line 155
    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_e

    add-int/lit8 v0, v0, 0x1

    goto/16 :goto_1

    :cond_e
    const-string v2, "-tcpShutdown"

    .line 157
    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_f

    add-int/lit8 v0, v0, 0x1

    goto/16 :goto_1

    :cond_f
    const-string v2, "-tcpShutdownForce"

    .line 159
    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_10

    goto/16 :goto_1

    .line 162
    :cond_10
    invoke-virtual {p0, v1}, Lorg/h2/tools/Server;->throwUnsupportedOption(Ljava/lang/String;)Ljava/sql/SQLException;

    goto/16 :goto_1

    :cond_11
    const-string v2, "-pg"

    .line 164
    invoke-virtual {v1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_16

    const-string v2, "-pg"

    .line 165
    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_12

    goto/16 :goto_1

    :cond_12
    const-string v2, "-pgAllowOthers"

    .line 167
    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_13

    goto/16 :goto_1

    :cond_13
    const-string v2, "-pgDaemon"

    .line 169
    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_14

    goto/16 :goto_1

    :cond_14
    const-string v2, "-pgPort"

    .line 171
    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_15

    add-int/lit8 v0, v0, 0x1

    goto/16 :goto_1

    .line 174
    :cond_15
    invoke-virtual {p0, v1}, Lorg/h2/tools/Server;->throwUnsupportedOption(Ljava/lang/String;)Ljava/sql/SQLException;

    goto/16 :goto_1

    :cond_16
    const-string v2, "-ftp"

    .line 176
    invoke-virtual {v1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1d

    const-string v2, "-ftpPort"

    .line 177
    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_17

    add-int/lit8 v0, v0, 0x1

    goto/16 :goto_1

    :cond_17
    const-string v2, "-ftpDir"

    .line 179
    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_18

    add-int/lit8 v0, v0, 0x1

    goto/16 :goto_1

    :cond_18
    const-string v2, "-ftpRead"

    .line 181
    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_19

    add-int/lit8 v0, v0, 0x1

    goto/16 :goto_1

    :cond_19
    const-string v2, "-ftpWrite"

    .line 183
    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1a

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_1a
    const-string v2, "-ftpWritePassword"

    .line 185
    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1b

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_1b
    const-string v2, "-ftpTask"

    .line 187
    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1c

    goto :goto_1

    .line 190
    :cond_1c
    invoke-virtual {p0, v1}, Lorg/h2/tools/Server;->throwUnsupportedOption(Ljava/lang/String;)Ljava/sql/SQLException;

    goto :goto_1

    :cond_1d
    const-string v2, "-properties"

    .line 192
    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1e

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_1e
    const-string v2, "-trace"

    .line 194
    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1f

    goto :goto_1

    :cond_1f
    const-string v2, "-ifExists"

    .line 196
    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_20

    goto :goto_1

    :cond_20
    const-string v2, "-baseDir"

    .line 198
    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_21

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_21
    const-string v2, "-key"

    .line 200
    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_22

    add-int/lit8 v0, v0, 0x2

    goto :goto_1

    :cond_22
    const-string v2, "-tool"

    .line 202
    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_23

    goto :goto_1

    .line 205
    :cond_23
    invoke-virtual {p0, v1}, Lorg/h2/tools/Server;->throwUnsupportedOption(Ljava/lang/String;)Ljava/sql/SQLException;

    :cond_24
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto/16 :goto_0

    :cond_25
    return-void
.end method

.method private static wait(I)V
    .locals 2

    int-to-long v0, p0

    mul-long v0, v0, v0

    .line 510
    :try_start_0
    invoke-static {v0, v1}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    return-void
.end method


# virtual methods
.method public getPort()I
    .locals 1

    .line 569
    iget-object v0, p0, Lorg/h2/tools/Server;->service:Lorg/h2/server/Service;

    invoke-interface {v0}, Lorg/h2/server/Service;->getPort()I

    move-result v0

    return v0
.end method

.method public getService()Lorg/h2/server/Service;
    .locals 1

    .line 609
    iget-object v0, p0, Lorg/h2/tools/Server;->service:Lorg/h2/server/Service;

    return-object v0
.end method

.method public getStatus()Ljava/lang/String;
    .locals 2

    .line 380
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 381
    iget-boolean v1, p0, Lorg/h2/tools/Server;->started:Z

    if-nez v1, :cond_0

    const-string v1, "Not started"

    .line 382
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    :cond_0
    const/4 v1, 0x0

    .line 383
    invoke-virtual {p0, v1}, Lorg/h2/tools/Server;->isRunning(Z)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 384
    iget-object v1, p0, Lorg/h2/tools/Server;->service:Lorg/h2/server/Service;

    invoke-interface {v1}, Lorg/h2/server/Service;->getType()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " server running at "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lorg/h2/tools/Server;->service:Lorg/h2/server/Service;

    invoke-interface {v1}, Lorg/h2/server/Service;->getURL()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " ("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 388
    iget-object v1, p0, Lorg/h2/tools/Server;->service:Lorg/h2/server/Service;

    invoke-interface {v1}, Lorg/h2/server/Service;->getAllowOthers()Z

    move-result v1

    if-eqz v1, :cond_1

    const-string v1, "others can connect"

    .line 389
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    :cond_1
    const-string v1, "only local connections"

    .line 391
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :goto_0
    const/16 v1, 0x29

    .line 393
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_1

    :cond_2
    const-string v1, "The "

    .line 395
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lorg/h2/tools/Server;->service:Lorg/h2/server/Service;

    invoke-interface {v1}, Lorg/h2/server/Service;->getType()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " server could not be started. Possible cause: another server is already running at "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lorg/h2/tools/Server;->service:Lorg/h2/server/Service;

    invoke-interface {v1}, Lorg/h2/server/Service;->getURL()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 401
    :goto_1
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getURL()Ljava/lang/String;
    .locals 1

    .line 560
    iget-object v0, p0, Lorg/h2/tools/Server;->service:Lorg/h2/server/Service;

    invoke-interface {v0}, Lorg/h2/server/Service;->getURL()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public isRunning(Z)Z
    .locals 1

    .line 541
    iget-object v0, p0, Lorg/h2/tools/Server;->service:Lorg/h2/server/Service;

    invoke-interface {v0, p1}, Lorg/h2/server/Service;->isRunning(Z)Z

    move-result p1

    return p1
.end method

.method public run()V
    .locals 1

    .line 578
    :try_start_0
    iget-object v0, p0, Lorg/h2/tools/Server;->service:Lorg/h2/server/Service;

    invoke-interface {v0}, Lorg/h2/server/Service;->listen()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 580
    invoke-static {v0}, Lorg/h2/message/DbException;->traceThrowable(Ljava/lang/Throwable;)V

    :goto_0
    return-void
.end method

.method public varargs runTool([Ljava/lang/String;)V
    .locals 14
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    const-string v0, ""

    const-string v1, ""

    const/4 v2, 0x0

    const/4 v3, 0x1

    move-object v6, v0

    move-object v5, v1

    const/4 v0, 0x0

    const/4 v1, 0x1

    const/4 v4, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    :goto_0
    if-eqz p1, :cond_1d

    .line 218
    array-length v12, p1

    if-ge v0, v12, :cond_1d

    .line 219
    aget-object v12, p1, v0

    if-nez v12, :cond_0

    goto/16 :goto_1

    :cond_0
    const-string v13, "-?"

    .line 222
    invoke-virtual {v13, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-nez v13, :cond_1c

    const-string v13, "-help"

    invoke-virtual {v13, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_1

    goto/16 :goto_2

    :cond_1
    const-string v13, "-web"

    .line 225
    invoke-virtual {v12, v13}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v13

    if-eqz v13, :cond_7

    const-string v13, "-web"

    .line 226
    invoke-virtual {v13, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_2

    const/4 v1, 0x0

    const/4 v10, 0x1

    goto/16 :goto_1

    :cond_2
    const-string v13, "-webAllowOthers"

    .line 229
    invoke-virtual {v13, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_3

    goto/16 :goto_1

    :cond_3
    const-string v13, "-webDaemon"

    .line 231
    invoke-virtual {v13, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_4

    goto/16 :goto_1

    :cond_4
    const-string v13, "-webSSL"

    .line 233
    invoke-virtual {v13, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_5

    goto/16 :goto_1

    :cond_5
    const-string v13, "-webPort"

    .line 235
    invoke-virtual {v13, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_6

    add-int/lit8 v0, v0, 0x1

    goto/16 :goto_1

    .line 238
    :cond_6
    invoke-virtual {p0, v12}, Lorg/h2/tools/Server;->showUsageAndThrowUnsupportedOption(Ljava/lang/String;)Ljava/sql/SQLException;

    goto/16 :goto_1

    :cond_7
    const-string v13, "-browser"

    .line 240
    invoke-virtual {v13, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_8

    const/4 v1, 0x0

    const/4 v11, 0x1

    goto/16 :goto_1

    :cond_8
    const-string v13, "-tcp"

    .line 243
    invoke-virtual {v12, v13}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v13

    if-eqz v13, :cond_11

    const-string v13, "-tcp"

    .line 244
    invoke-virtual {v13, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_9

    const/4 v1, 0x0

    const/4 v8, 0x1

    goto/16 :goto_1

    :cond_9
    const-string v13, "-tcpAllowOthers"

    .line 247
    invoke-virtual {v13, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_a

    goto/16 :goto_1

    :cond_a
    const-string v13, "-tcpDaemon"

    .line 249
    invoke-virtual {v13, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_b

    goto/16 :goto_1

    :cond_b
    const-string v13, "-tcpSSL"

    .line 251
    invoke-virtual {v13, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_c

    goto/16 :goto_1

    :cond_c
    const-string v13, "-tcpPort"

    .line 253
    invoke-virtual {v13, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_d

    add-int/lit8 v0, v0, 0x1

    goto/16 :goto_1

    :cond_d
    const-string v13, "-tcpPassword"

    .line 255
    invoke-virtual {v13, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_e

    add-int/lit8 v0, v0, 0x1

    .line 256
    aget-object v6, p1, v0

    goto/16 :goto_1

    :cond_e
    const-string v13, "-tcpShutdown"

    .line 257
    invoke-virtual {v13, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_f

    add-int/lit8 v0, v0, 0x1

    .line 260
    aget-object v1, p1, v0

    move-object v5, v1

    const/4 v1, 0x0

    const/4 v4, 0x1

    goto/16 :goto_1

    :cond_f
    const-string v13, "-tcpShutdownForce"

    .line 261
    invoke-virtual {v13, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_10

    const/4 v7, 0x1

    goto/16 :goto_1

    .line 264
    :cond_10
    invoke-virtual {p0, v12}, Lorg/h2/tools/Server;->showUsageAndThrowUnsupportedOption(Ljava/lang/String;)Ljava/sql/SQLException;

    goto/16 :goto_1

    :cond_11
    const-string v13, "-pg"

    .line 266
    invoke-virtual {v12, v13}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v13

    if-eqz v13, :cond_16

    const-string v13, "-pg"

    .line 267
    invoke-virtual {v13, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_12

    const/4 v1, 0x0

    const/4 v9, 0x1

    goto :goto_1

    :cond_12
    const-string v13, "-pgAllowOthers"

    .line 270
    invoke-virtual {v13, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_13

    goto :goto_1

    :cond_13
    const-string v13, "-pgDaemon"

    .line 272
    invoke-virtual {v13, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_14

    goto :goto_1

    :cond_14
    const-string v13, "-pgPort"

    .line 274
    invoke-virtual {v13, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_15

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 277
    :cond_15
    invoke-virtual {p0, v12}, Lorg/h2/tools/Server;->showUsageAndThrowUnsupportedOption(Ljava/lang/String;)Ljava/sql/SQLException;

    goto :goto_1

    :cond_16
    const-string v13, "-properties"

    .line 279
    invoke-virtual {v13, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_17

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_17
    const-string v13, "-trace"

    .line 281
    invoke-virtual {v13, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_18

    goto :goto_1

    :cond_18
    const-string v13, "-ifExists"

    .line 283
    invoke-virtual {v13, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_19

    goto :goto_1

    :cond_19
    const-string v13, "-baseDir"

    .line 285
    invoke-virtual {v13, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_1a

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_1a
    const-string v13, "-key"

    .line 287
    invoke-virtual {v13, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_1b

    add-int/lit8 v0, v0, 0x2

    goto :goto_1

    .line 290
    :cond_1b
    invoke-virtual {p0, v12}, Lorg/h2/tools/Server;->showUsageAndThrowUnsupportedOption(Ljava/lang/String;)Ljava/sql/SQLException;

    :goto_1
    add-int/2addr v0, v3

    goto/16 :goto_0

    .line 223
    :cond_1c
    :goto_2
    invoke-virtual {p0}, Lorg/h2/tools/Server;->showUsage()V

    return-void

    .line 293
    :cond_1d
    invoke-direct {p0, p1}, Lorg/h2/tools/Server;->verifyArgs([Ljava/lang/String;)V

    if-eqz v1, :cond_1e

    const/4 v9, 0x1

    const/4 v10, 0x1

    const/4 v11, 0x1

    goto :goto_3

    :cond_1e
    move v3, v8

    :goto_3
    if-eqz v4, :cond_1f

    .line 302
    iget-object v0, p0, Lorg/h2/tools/Server;->out:Ljava/io/PrintStream;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Shutting down TCP Server at "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 303
    invoke-static {v5, v6, v7, v2}, Lorg/h2/tools/Server;->shutdownTcpServer(Ljava/lang/String;Ljava/lang/String;ZZ)V

    :cond_1f
    if-eqz v3, :cond_20

    .line 308
    :try_start_0
    invoke-static {p1}, Lorg/h2/tools/Server;->createTcpServer([Ljava/lang/String;)Lorg/h2/tools/Server;

    move-result-object v0

    iput-object v0, p0, Lorg/h2/tools/Server;->tcp:Lorg/h2/tools/Server;

    .line 309
    iget-object v0, p0, Lorg/h2/tools/Server;->tcp:Lorg/h2/tools/Server;

    invoke-virtual {v0}, Lorg/h2/tools/Server;->start()Lorg/h2/tools/Server;

    .line 310
    iget-object v0, p0, Lorg/h2/tools/Server;->out:Ljava/io/PrintStream;

    iget-object v1, p0, Lorg/h2/tools/Server;->tcp:Lorg/h2/tools/Server;

    invoke-virtual {v1}, Lorg/h2/tools/Server;->getStatus()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 311
    iget-object v0, p0, Lorg/h2/tools/Server;->tcp:Lorg/h2/tools/Server;

    invoke-virtual {v0, p0}, Lorg/h2/tools/Server;->setShutdownHandler(Lorg/h2/server/ShutdownHandler;)V

    goto :goto_4

    :catch_0
    move-exception p1

    goto :goto_7

    :cond_20
    :goto_4
    if-eqz v9, :cond_21

    .line 314
    invoke-static {p1}, Lorg/h2/tools/Server;->createPgServer([Ljava/lang/String;)Lorg/h2/tools/Server;

    move-result-object v0

    iput-object v0, p0, Lorg/h2/tools/Server;->pg:Lorg/h2/tools/Server;

    .line 315
    iget-object v0, p0, Lorg/h2/tools/Server;->pg:Lorg/h2/tools/Server;

    invoke-virtual {v0}, Lorg/h2/tools/Server;->start()Lorg/h2/tools/Server;

    .line 316
    iget-object v0, p0, Lorg/h2/tools/Server;->out:Ljava/io/PrintStream;

    iget-object v1, p0, Lorg/h2/tools/Server;->pg:Lorg/h2/tools/Server;

    invoke-virtual {v1}, Lorg/h2/tools/Server;->getStatus()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    :cond_21
    if-eqz v10, :cond_24

    .line 319
    invoke-static {p1}, Lorg/h2/tools/Server;->createWebServer([Ljava/lang/String;)Lorg/h2/tools/Server;

    move-result-object p1

    iput-object p1, p0, Lorg/h2/tools/Server;->web:Lorg/h2/tools/Server;

    .line 320
    iget-object p1, p0, Lorg/h2/tools/Server;->web:Lorg/h2/tools/Server;

    invoke-virtual {p1, p0}, Lorg/h2/tools/Server;->setShutdownHandler(Lorg/h2/server/ShutdownHandler;)V
    :try_end_0
    .catch Ljava/sql/SQLException; {:try_start_0 .. :try_end_0} :catch_0

    const/4 p1, 0x0

    .line 323
    :try_start_1
    iget-object v0, p0, Lorg/h2/tools/Server;->web:Lorg/h2/tools/Server;

    invoke-virtual {v0}, Lorg/h2/tools/Server;->start()Lorg/h2/tools/Server;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/sql/SQLException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_5

    :catch_1
    move-exception p1

    .line 325
    :try_start_2
    invoke-static {p1}, Lorg/h2/message/DbException;->toSQLException(Ljava/lang/Exception;)Ljava/sql/SQLException;

    move-result-object p1

    .line 327
    :goto_5
    iget-object v0, p0, Lorg/h2/tools/Server;->out:Ljava/io/PrintStream;

    iget-object v1, p0, Lorg/h2/tools/Server;->web:Lorg/h2/tools/Server;

    invoke-virtual {v1}, Lorg/h2/tools/Server;->getStatus()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V
    :try_end_2
    .catch Ljava/sql/SQLException; {:try_start_2 .. :try_end_2} :catch_0

    if-eqz v11, :cond_22

    .line 333
    :try_start_3
    iget-object v0, p0, Lorg/h2/tools/Server;->web:Lorg/h2/tools/Server;

    invoke-virtual {v0}, Lorg/h2/tools/Server;->getURL()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lorg/h2/tools/Server;->openBrowser(Ljava/lang/String;)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_2
    .catch Ljava/sql/SQLException; {:try_start_3 .. :try_end_3} :catch_0

    goto :goto_6

    :catch_2
    move-exception v0

    .line 335
    :try_start_4
    iget-object v1, p0, Lorg/h2/tools/Server;->out:Ljava/io/PrintStream;

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    :cond_22
    :goto_6
    if-nez p1, :cond_23

    goto :goto_8

    .line 339
    :cond_23
    throw p1

    :cond_24
    if-eqz v11, :cond_25

    .line 342
    iget-object p1, p0, Lorg/h2/tools/Server;->out:Ljava/io/PrintStream;

    const-string v0, "The browser can only start if a web server is started (-web)"

    invoke-virtual {p1, v0}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V
    :try_end_4
    .catch Ljava/sql/SQLException; {:try_start_4 .. :try_end_4} :catch_0

    goto :goto_8

    .line 345
    :goto_7
    invoke-direct {p0}, Lorg/h2/tools/Server;->stopAll()V

    .line 346
    throw p1

    :cond_25
    :goto_8
    return-void
.end method

.method public setShutdownHandler(Lorg/h2/server/ShutdownHandler;)V
    .locals 0

    .line 588
    iput-object p1, p0, Lorg/h2/tools/Server;->shutdownHandler:Lorg/h2/server/ShutdownHandler;

    return-void
.end method

.method public shutdown()V
    .locals 1

    .line 596
    iget-object v0, p0, Lorg/h2/tools/Server;->shutdownHandler:Lorg/h2/server/ShutdownHandler;

    if-eqz v0, :cond_0

    .line 597
    iget-object v0, p0, Lorg/h2/tools/Server;->shutdownHandler:Lorg/h2/server/ShutdownHandler;

    invoke-interface {v0}, Lorg/h2/server/ShutdownHandler;->shutdown()V

    goto :goto_0

    .line 599
    :cond_0
    invoke-direct {p0}, Lorg/h2/tools/Server;->stopAll()V

    :goto_0
    return-void
.end method

.method public start()Lorg/h2/tools/Server;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    const/4 v0, 0x1

    .line 483
    :try_start_0
    iput-boolean v0, p0, Lorg/h2/tools/Server;->started:Z

    .line 484
    iget-object v1, p0, Lorg/h2/tools/Server;->service:Lorg/h2/server/Service;

    invoke-interface {v1}, Lorg/h2/server/Service;->start()V

    .line 485
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lorg/h2/tools/Server;->service:Lorg/h2/server/Service;

    invoke-interface {v2}, Lorg/h2/server/Service;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " ("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lorg/h2/tools/Server;->service:Lorg/h2/server/Service;

    invoke-interface {v2}, Lorg/h2/server/Service;->getURL()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 486
    new-instance v2, Ljava/lang/Thread;

    invoke-direct {v2, p0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;Ljava/lang/String;)V

    .line 487
    iget-object v3, p0, Lorg/h2/tools/Server;->service:Lorg/h2/server/Service;

    invoke-interface {v3}, Lorg/h2/server/Service;->isDaemon()Z

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/Thread;->setDaemon(Z)V

    .line 488
    invoke-virtual {v2}, Ljava/lang/Thread;->start()V

    const/4 v2, 0x1

    :goto_0
    const/16 v3, 0x40

    const/4 v4, 0x0

    if-ge v2, v3, :cond_1

    .line 490
    invoke-static {v2}, Lorg/h2/tools/Server;->wait(I)V

    .line 491
    invoke-virtual {p0, v4}, Lorg/h2/tools/Server;->isRunning(Z)Z

    move-result v3

    if-eqz v3, :cond_0

    return-object p0

    :cond_0
    add-int/2addr v2, v2

    goto :goto_0

    .line 495
    :cond_1
    invoke-virtual {p0, v0}, Lorg/h2/tools/Server;->isRunning(Z)Z

    move-result v2

    if-eqz v2, :cond_2

    return-object p0

    :cond_2
    const v2, 0x15fcd

    const/4 v3, 0x2

    .line 498
    new-array v3, v3, [Ljava/lang/String;

    aput-object v1, v3, v4

    const-string v1, "timeout; please check your network configuration, specially the file /etc/hosts"

    aput-object v1, v3, v0

    invoke-static {v2, v3}, Lorg/h2/message/DbException;->get(I[Ljava/lang/String;)Lorg/h2/message/DbException;

    move-result-object v0

    throw v0
    :try_end_0
    .catch Lorg/h2/message/DbException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    move-exception v0

    .line 502
    invoke-static {v0}, Lorg/h2/message/DbException;->toSQLException(Ljava/lang/Exception;)Ljava/sql/SQLException;

    move-result-object v0

    throw v0
.end method

.method public stop()V
    .locals 1

    const/4 v0, 0x0

    .line 548
    iput-boolean v0, p0, Lorg/h2/tools/Server;->started:Z

    .line 549
    iget-object v0, p0, Lorg/h2/tools/Server;->service:Lorg/h2/server/Service;

    if-eqz v0, :cond_0

    .line 550
    iget-object v0, p0, Lorg/h2/tools/Server;->service:Lorg/h2/server/Service;

    invoke-interface {v0}, Lorg/h2/server/Service;->stop()V

    :cond_0
    return-void
.end method
