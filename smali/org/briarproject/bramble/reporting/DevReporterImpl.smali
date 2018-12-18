.class Lorg/briarproject/bramble/reporting/DevReporterImpl;
.super Ljava/lang/Object;
.source "DevReporterImpl.java"

# interfaces
.implements Lorg/briarproject/bramble/api/event/EventListener;
.implements Lorg/briarproject/bramble/api/reporting/DevReporter;


# annotations
.annotation runtime Lorg/briarproject/bramble/api/nullsafety/NotNullByDefault;
.end annotation


# static fields
.field private static final LINE_LENGTH:I = 0x46

.field private static final LOG:Ljava/util/logging/Logger;

.field private static final SOCKET_TIMEOUT:I = 0x7530


# instance fields
.field private final crypto:Lorg/briarproject/bramble/api/crypto/CryptoComponent;

.field private final devConfig:Lorg/briarproject/bramble/api/reporting/DevConfig;

.field private final ioExecutor:Ljava/util/concurrent/Executor;

.field private final torSocketFactory:Ljavax/net/SocketFactory;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 41
    const-class v0, Lorg/briarproject/bramble/reporting/DevReporterImpl;

    .line 42
    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/logging/Logger;->getLogger(Ljava/lang/String;)Ljava/util/logging/Logger;

    move-result-object v0

    sput-object v0, Lorg/briarproject/bramble/reporting/DevReporterImpl;->LOG:Ljava/util/logging/Logger;

    return-void
.end method

.method constructor <init>(Ljava/util/concurrent/Executor;Lorg/briarproject/bramble/api/crypto/CryptoComponent;Lorg/briarproject/bramble/api/reporting/DevConfig;Ljavax/net/SocketFactory;)V
    .locals 0
    .param p1    # Ljava/util/concurrent/Executor;
        .annotation runtime Lorg/briarproject/bramble/api/lifecycle/IoExecutor;
        .end annotation
    .end param

    .line 54
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 55
    iput-object p1, p0, Lorg/briarproject/bramble/reporting/DevReporterImpl;->ioExecutor:Ljava/util/concurrent/Executor;

    .line 56
    iput-object p2, p0, Lorg/briarproject/bramble/reporting/DevReporterImpl;->crypto:Lorg/briarproject/bramble/api/crypto/CryptoComponent;

    .line 57
    iput-object p3, p0, Lorg/briarproject/bramble/reporting/DevReporterImpl;->devConfig:Lorg/briarproject/bramble/api/reporting/DevConfig;

    .line 58
    iput-object p4, p0, Lorg/briarproject/bramble/reporting/DevReporterImpl;->torSocketFactory:Ljavax/net/SocketFactory;

    return-void
.end method

.method private connectToDevelopers()Ljava/net/Socket;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 62
    iget-object v0, p0, Lorg/briarproject/bramble/reporting/DevReporterImpl;->devConfig:Lorg/briarproject/bramble/api/reporting/DevConfig;

    invoke-interface {v0}, Lorg/briarproject/bramble/api/reporting/DevConfig;->getDevOnionAddress()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    .line 65
    :try_start_0
    iget-object v2, p0, Lorg/briarproject/bramble/reporting/DevReporterImpl;->torSocketFactory:Ljavax/net/SocketFactory;

    const/16 v3, 0x50

    invoke-virtual {v2, v0, v3}, Ljavax/net/SocketFactory;->createSocket(Ljava/lang/String;I)Ljava/net/Socket;

    move-result-object v0
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    const/16 v1, 0x7530

    .line 66
    :try_start_1
    invoke-virtual {v0, v1}, Ljava/net/Socket;->setSoTimeout(I)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    return-object v0

    :catch_0
    move-exception v1

    move-object v4, v1

    move-object v1, v0

    move-object v0, v4

    goto :goto_0

    :catch_1
    move-exception v0

    .line 69
    :goto_0
    invoke-direct {p0, v1}, Lorg/briarproject/bramble/reporting/DevReporterImpl;->tryToClose(Ljava/net/Socket;)V

    .line 70
    throw v0
.end method

.method private tryToClose(Ljava/io/Closeable;)V
    .locals 2

    if-eqz p1, :cond_0

    .line 134
    :try_start_0
    invoke-interface {p1}, Ljava/io/Closeable;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 136
    sget-object v0, Lorg/briarproject/bramble/reporting/DevReporterImpl;->LOG:Ljava/util/logging/Logger;

    sget-object v1, Ljava/util/logging/Level;->WARNING:Ljava/util/logging/Level;

    invoke-static {v0, v1, p1}, Lorg/briarproject/bramble/util/LogUtils;->logException(Ljava/util/logging/Logger;Ljava/util/logging/Level;Ljava/lang/Throwable;)V

    :cond_0
    :goto_0
    return-void
.end method

.method private tryToClose(Ljava/net/Socket;)V
    .locals 2

    if-eqz p1, :cond_0

    .line 142
    :try_start_0
    invoke-virtual {p1}, Ljava/net/Socket;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 144
    sget-object v0, Lorg/briarproject/bramble/reporting/DevReporterImpl;->LOG:Ljava/util/logging/Logger;

    sget-object v1, Ljava/util/logging/Level;->WARNING:Ljava/util/logging/Level;

    invoke-static {v0, v1, p1}, Lorg/briarproject/bramble/util/LogUtils;->logException(Ljava/util/logging/Logger;Ljava/util/logging/Level;Ljava/lang/Throwable;)V

    :cond_0
    :goto_0
    return-void
.end method


# virtual methods
.method public encryptReportToFile(Ljava/io/File;Ljava/lang/String;Ljava/lang/String;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/FileNotFoundException;
        }
    .end annotation

    .line 77
    sget-object v0, Lorg/briarproject/bramble/reporting/DevReporterImpl;->LOG:Ljava/util/logging/Logger;

    const-string v1, "Encrypting report to file"

    invoke-virtual {v0, v1}, Ljava/util/logging/Logger;->info(Ljava/lang/String;)V

    .line 78
    invoke-static {p3}, Lorg/briarproject/bramble/util/StringUtils;->toUtf8(Ljava/lang/String;)[B

    move-result-object p3

    .line 79
    iget-object v0, p0, Lorg/briarproject/bramble/reporting/DevReporterImpl;->crypto:Lorg/briarproject/bramble/api/crypto/CryptoComponent;

    iget-object v1, p0, Lorg/briarproject/bramble/reporting/DevReporterImpl;->devConfig:Lorg/briarproject/bramble/api/reporting/DevConfig;

    invoke-interface {v1}, Lorg/briarproject/bramble/api/reporting/DevConfig;->getDevPublicKey()Lorg/briarproject/bramble/api/crypto/PublicKey;

    move-result-object v1

    invoke-interface {v0, v1, p3}, Lorg/briarproject/bramble/api/crypto/CryptoComponent;->encryptToKey(Lorg/briarproject/bramble/api/crypto/PublicKey;[B)[B

    move-result-object p3

    .line 81
    iget-object v0, p0, Lorg/briarproject/bramble/reporting/DevReporterImpl;->crypto:Lorg/briarproject/bramble/api/crypto/CryptoComponent;

    const/16 v1, 0x46

    invoke-interface {v0, p3, v1}, Lorg/briarproject/bramble/api/crypto/CryptoComponent;->asciiArmour([BI)Ljava/lang/String;

    move-result-object p3

    .line 83
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p1, p2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    const/4 p1, 0x0

    .line 86
    :try_start_0
    new-instance p2, Ljava/io/PrintWriter;

    new-instance v1, Ljava/io/OutputStreamWriter;

    new-instance v2, Ljava/io/FileOutputStream;

    invoke-direct {v2, v0}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    invoke-direct {v1, v2}, Ljava/io/OutputStreamWriter;-><init>(Ljava/io/OutputStream;)V

    invoke-direct {p2, v1}, Ljava/io/PrintWriter;-><init>(Ljava/io/Writer;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 88
    :try_start_1
    invoke-virtual {p2, p3}, Ljava/io/PrintWriter;->append(Ljava/lang/CharSequence;)Ljava/io/PrintWriter;

    .line 89
    invoke-virtual {p2}, Ljava/io/PrintWriter;->flush()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 92
    invoke-virtual {p2}, Ljava/io/PrintWriter;->close()V

    return-void

    :catchall_0
    move-exception p1

    move-object v3, p2

    move-object p2, p1

    move-object p1, v3

    goto :goto_0

    :catchall_1
    move-exception p2

    :goto_0
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/io/PrintWriter;->close()V

    .line 93
    :cond_0
    throw p2
.end method

.method public eventOccurred(Lorg/briarproject/bramble/api/event/Event;)V
    .locals 1

    .line 98
    instance-of v0, p1, Lorg/briarproject/bramble/api/plugin/event/TransportEnabledEvent;

    if-eqz v0, :cond_0

    .line 99
    check-cast p1, Lorg/briarproject/bramble/api/plugin/event/TransportEnabledEvent;

    .line 100
    invoke-virtual {p1}, Lorg/briarproject/bramble/api/plugin/event/TransportEnabledEvent;->getTransportId()Lorg/briarproject/bramble/api/plugin/TransportId;

    move-result-object p1

    sget-object v0, Lorg/briarproject/bramble/api/plugin/TorConstants;->ID:Lorg/briarproject/bramble/api/plugin/TransportId;

    invoke-virtual {p1, v0}, Lorg/briarproject/bramble/api/plugin/TransportId;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 101
    iget-object p1, p0, Lorg/briarproject/bramble/reporting/DevReporterImpl;->ioExecutor:Ljava/util/concurrent/Executor;

    new-instance v0, Lorg/briarproject/bramble/reporting/-$$Lambda$sTMXZAzFDbZ_3kEbhdj-8Ow3pM8;

    invoke-direct {v0, p0}, Lorg/briarproject/bramble/reporting/-$$Lambda$sTMXZAzFDbZ_3kEbhdj-8Ow3pM8;-><init>(Lorg/briarproject/bramble/reporting/DevReporterImpl;)V

    invoke-interface {p1, v0}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    :cond_0
    return-void
.end method

.method public sendReports()V
    .locals 7

    .line 107
    iget-object v0, p0, Lorg/briarproject/bramble/reporting/DevReporterImpl;->devConfig:Lorg/briarproject/bramble/api/reporting/DevConfig;

    invoke-interface {v0}, Lorg/briarproject/bramble/api/reporting/DevConfig;->getReportDir()Ljava/io/File;

    move-result-object v0

    .line 108
    invoke-virtual {v0}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 109
    array-length v1, v0

    if-nez v1, :cond_0

    goto :goto_2

    .line 112
    :cond_0
    sget-object v1, Lorg/briarproject/bramble/reporting/DevReporterImpl;->LOG:Ljava/util/logging/Logger;

    const-string v2, "Sending reports to developers"

    invoke-virtual {v1, v2}, Ljava/util/logging/Logger;->info(Ljava/lang/String;)V

    .line 113
    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    aget-object v3, v0, v2

    const/4 v4, 0x0

    .line 117
    :try_start_0
    invoke-direct {p0}, Lorg/briarproject/bramble/reporting/DevReporterImpl;->connectToDevelopers()Ljava/net/Socket;

    move-result-object v5

    .line 118
    invoke-static {v5}, Lorg/briarproject/bramble/util/IoUtils;->getOutputStream(Ljava/net/Socket;)Ljava/io/OutputStream;

    move-result-object v5
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_2

    .line 119
    :try_start_1
    new-instance v6, Ljava/io/FileInputStream;

    invoke-direct {v6, v3}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    .line 120
    :try_start_2
    invoke-static {v6, v5}, Lorg/briarproject/bramble/util/IoUtils;->copyAndClose(Ljava/io/InputStream;Ljava/io/OutputStream;)V

    .line 121
    invoke-virtual {v3}, Ljava/io/File;->delete()Z
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :catch_0
    move-exception v0

    move-object v4, v6

    goto :goto_1

    :catch_1
    move-exception v0

    goto :goto_1

    :catch_2
    move-exception v0

    move-object v5, v4

    .line 123
    :goto_1
    sget-object v1, Lorg/briarproject/bramble/reporting/DevReporterImpl;->LOG:Ljava/util/logging/Logger;

    sget-object v2, Ljava/util/logging/Level;->WARNING:Ljava/util/logging/Level;

    const-string v3, "Failed to send reports"

    invoke-virtual {v1, v2, v3, v0}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 124
    invoke-direct {p0, v5}, Lorg/briarproject/bramble/reporting/DevReporterImpl;->tryToClose(Ljava/io/Closeable;)V

    .line 125
    invoke-direct {p0, v4}, Lorg/briarproject/bramble/reporting/DevReporterImpl;->tryToClose(Ljava/io/Closeable;)V

    return-void

    .line 129
    :cond_1
    sget-object v0, Lorg/briarproject/bramble/reporting/DevReporterImpl;->LOG:Ljava/util/logging/Logger;

    const-string v1, "Reports sent"

    invoke-virtual {v0, v1}, Ljava/util/logging/Logger;->info(Ljava/lang/String;)V

    return-void

    :cond_2
    :goto_2
    return-void
.end method
