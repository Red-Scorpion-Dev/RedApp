.class Lorg/briarproject/bramble/plugin/file/FileTransportReader;
.super Ljava/lang/Object;
.source "FileTransportReader.java"

# interfaces
.implements Lorg/briarproject/bramble/api/plugin/TransportConnectionReader;


# annotations
.annotation runtime Lorg/briarproject/bramble/api/nullsafety/NotNullByDefault;
.end annotation


# static fields
.field private static final LOG:Ljava/util/logging/Logger;


# instance fields
.field private final file:Ljava/io/File;

.field private final in:Ljava/io/InputStream;

.field private final plugin:Lorg/briarproject/bramble/plugin/file/FilePlugin;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 17
    const-class v0, Lorg/briarproject/bramble/plugin/file/FileTransportReader;

    .line 18
    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/logging/Logger;->getLogger(Ljava/lang/String;)Ljava/util/logging/Logger;

    move-result-object v0

    sput-object v0, Lorg/briarproject/bramble/plugin/file/FileTransportReader;->LOG:Ljava/util/logging/Logger;

    return-void
.end method

.method constructor <init>(Ljava/io/File;Ljava/io/InputStream;Lorg/briarproject/bramble/plugin/file/FilePlugin;)V
    .locals 0

    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 25
    iput-object p1, p0, Lorg/briarproject/bramble/plugin/file/FileTransportReader;->file:Ljava/io/File;

    .line 26
    iput-object p2, p0, Lorg/briarproject/bramble/plugin/file/FileTransportReader;->in:Ljava/io/InputStream;

    .line 27
    iput-object p3, p0, Lorg/briarproject/bramble/plugin/file/FileTransportReader;->plugin:Lorg/briarproject/bramble/plugin/file/FilePlugin;

    return-void
.end method


# virtual methods
.method public dispose(ZZ)V
    .locals 3

    .line 38
    :try_start_0
    iget-object v0, p0, Lorg/briarproject/bramble/plugin/file/FileTransportReader;->in:Ljava/io/InputStream;

    invoke-virtual {v0}, Ljava/io/InputStream;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 40
    sget-object v1, Lorg/briarproject/bramble/plugin/file/FileTransportReader;->LOG:Ljava/util/logging/Logger;

    sget-object v2, Ljava/util/logging/Level;->WARNING:Ljava/util/logging/Level;

    invoke-static {v1, v2, v0}, Lorg/briarproject/bramble/util/LogUtils;->logException(Ljava/util/logging/Logger;Ljava/util/logging/Level;Ljava/lang/Throwable;)V

    .line 42
    :goto_0
    iget-object v0, p0, Lorg/briarproject/bramble/plugin/file/FileTransportReader;->plugin:Lorg/briarproject/bramble/plugin/file/FilePlugin;

    iget-object v1, p0, Lorg/briarproject/bramble/plugin/file/FileTransportReader;->file:Ljava/io/File;

    invoke-virtual {v0, v1, p1, p2}, Lorg/briarproject/bramble/plugin/file/FilePlugin;->readerFinished(Ljava/io/File;ZZ)V

    return-void
.end method

.method public getInputStream()Ljava/io/InputStream;
    .locals 1

    .line 32
    iget-object v0, p0, Lorg/briarproject/bramble/plugin/file/FileTransportReader;->in:Ljava/io/InputStream;

    return-object v0
.end method
