.class Lorg/briarproject/bramble/reporting/DevReportServer$ReportSaver;
.super Ljava/lang/Thread;
.source "DevReportServer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/briarproject/bramble/reporting/DevReportServer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ReportSaver"
.end annotation


# instance fields
.field private final socket:Ljava/net/Socket;

.field final synthetic this$0:Lorg/briarproject/bramble/reporting/DevReportServer;


# direct methods
.method private constructor <init>(Lorg/briarproject/bramble/reporting/DevReportServer;Ljava/net/Socket;)V
    .locals 0

    .line 122
    iput-object p1, p0, Lorg/briarproject/bramble/reporting/DevReportServer$ReportSaver;->this$0:Lorg/briarproject/bramble/reporting/DevReportServer;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    .line 123
    iput-object p2, p0, Lorg/briarproject/bramble/reporting/DevReportServer$ReportSaver;->socket:Ljava/net/Socket;

    const/4 p1, 0x1

    .line 124
    invoke-virtual {p0, p1}, Lorg/briarproject/bramble/reporting/DevReportServer$ReportSaver;->setDaemon(Z)V

    return-void
.end method

.method synthetic constructor <init>(Lorg/briarproject/bramble/reporting/DevReportServer;Ljava/net/Socket;Lorg/briarproject/bramble/reporting/DevReportServer$1;)V
    .locals 0

    .line 118
    invoke-direct {p0, p1, p2}, Lorg/briarproject/bramble/reporting/DevReportServer$ReportSaver;-><init>(Lorg/briarproject/bramble/reporting/DevReportServer;Ljava/net/Socket;)V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 9

    const/4 v0, 0x0

    .line 133
    :try_start_0
    iget-object v1, p0, Lorg/briarproject/bramble/reporting/DevReportServer$ReportSaver;->socket:Ljava/net/Socket;

    const v2, 0xea60

    invoke-virtual {v1, v2}, Ljava/net/Socket;->setSoTimeout(I)V

    .line 134
    iget-object v1, p0, Lorg/briarproject/bramble/reporting/DevReportServer$ReportSaver;->socket:Ljava/net/Socket;

    invoke-static {v1}, Lorg/briarproject/bramble/util/IoUtils;->getInputStream(Ljava/net/Socket;)Ljava/io/InputStream;

    move-result-object v1
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_3
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 135
    :try_start_1
    iget-object v2, p0, Lorg/briarproject/bramble/reporting/DevReportServer$ReportSaver;->this$0:Lorg/briarproject/bramble/reporting/DevReportServer;

    invoke-static {v2}, Lorg/briarproject/bramble/reporting/DevReportServer;->access$300(Lorg/briarproject/bramble/reporting/DevReportServer;)Ljava/io/File;

    move-result-object v2

    invoke-virtual {v2}, Ljava/io/File;->mkdirs()Z

    const-string v2, "report-"

    const-string v3, ".enc"

    .line 136
    iget-object v4, p0, Lorg/briarproject/bramble/reporting/DevReportServer$ReportSaver;->this$0:Lorg/briarproject/bramble/reporting/DevReportServer;

    .line 137
    invoke-static {v4}, Lorg/briarproject/bramble/reporting/DevReportServer;->access$300(Lorg/briarproject/bramble/reporting/DevReportServer;)Ljava/io/File;

    move-result-object v4

    .line 136
    invoke-static {v2, v3, v4}, Ljava/io/File;->createTempFile(Ljava/lang/String;Ljava/lang/String;Ljava/io/File;)Ljava/io/File;

    move-result-object v2
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_2
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 138
    :try_start_2
    new-instance v3, Ljava/io/FileOutputStream;

    invoke-direct {v3, v2}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 139
    :try_start_3
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Saving report to "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    const/16 v0, 0x1000

    .line 140
    new-array v0, v0, [B

    const/4 v4, 0x0

    const/4 v5, 0x0

    .line 143
    :goto_0
    invoke-virtual {v1, v0}, Ljava/io/InputStream;->read([B)I

    move-result v6

    const/4 v7, -0x1

    if-ne v6, v7, :cond_0

    .line 150
    invoke-virtual {v3}, Ljava/io/OutputStream;->flush()V

    .line 151
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Saved "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, " bytes"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    goto :goto_2

    :cond_0
    add-int/2addr v5, v6

    const/high16 v7, 0x100000

    if-gt v5, v7, :cond_1

    .line 147
    invoke-virtual {v3, v0, v4, v6}, Ljava/io/OutputStream;->write([BII)V

    goto :goto_0

    .line 146
    :cond_1
    new-instance v0, Ljava/io/IOException;

    const-string v4, "Report is too long"

    invoke-direct {v0, v4}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    :catch_0
    move-exception v0

    goto :goto_1

    :catch_1
    move-exception v3

    move-object v8, v3

    move-object v3, v0

    move-object v0, v8

    goto :goto_1

    :catchall_0
    move-exception v2

    move-object v3, v0

    move-object v0, v2

    goto :goto_3

    :catch_2
    move-exception v2

    move-object v3, v0

    move-object v0, v2

    move-object v2, v3

    goto :goto_1

    :catchall_1
    move-exception v1

    move-object v3, v0

    move-object v0, v1

    move-object v1, v3

    goto :goto_3

    :catch_3
    move-exception v1

    move-object v2, v0

    move-object v3, v2

    move-object v0, v1

    move-object v1, v3

    .line 153
    :goto_1
    :try_start_4
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    if-eqz v2, :cond_2

    .line 154
    invoke-virtual {v2}, Ljava/io/File;->delete()Z
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    .line 156
    :cond_2
    :goto_2
    iget-object v0, p0, Lorg/briarproject/bramble/reporting/DevReportServer$ReportSaver;->this$0:Lorg/briarproject/bramble/reporting/DevReportServer;

    invoke-static {v0, v1}, Lorg/briarproject/bramble/reporting/DevReportServer;->access$400(Lorg/briarproject/bramble/reporting/DevReportServer;Ljava/io/Closeable;)V

    .line 157
    iget-object v0, p0, Lorg/briarproject/bramble/reporting/DevReportServer$ReportSaver;->this$0:Lorg/briarproject/bramble/reporting/DevReportServer;

    invoke-static {v0, v3}, Lorg/briarproject/bramble/reporting/DevReportServer;->access$400(Lorg/briarproject/bramble/reporting/DevReportServer;Ljava/io/Closeable;)V

    return-void

    :catchall_2
    move-exception v0

    .line 156
    :goto_3
    iget-object v2, p0, Lorg/briarproject/bramble/reporting/DevReportServer$ReportSaver;->this$0:Lorg/briarproject/bramble/reporting/DevReportServer;

    invoke-static {v2, v1}, Lorg/briarproject/bramble/reporting/DevReportServer;->access$400(Lorg/briarproject/bramble/reporting/DevReportServer;Ljava/io/Closeable;)V

    .line 157
    iget-object v1, p0, Lorg/briarproject/bramble/reporting/DevReportServer$ReportSaver;->this$0:Lorg/briarproject/bramble/reporting/DevReportServer;

    invoke-static {v1, v3}, Lorg/briarproject/bramble/reporting/DevReportServer;->access$400(Lorg/briarproject/bramble/reporting/DevReportServer;Ljava/io/Closeable;)V

    .line 158
    throw v0
.end method
