.class abstract Lorg/briarproject/bramble/plugin/file/FilePlugin;
.super Ljava/lang/Object;
.source "FilePlugin.java"

# interfaces
.implements Lorg/briarproject/bramble/api/plugin/simplex/SimplexPlugin;


# annotations
.annotation runtime Lorg/briarproject/bramble/api/nullsafety/NotNullByDefault;
.end annotation


# static fields
.field private static final LOG:Ljava/util/logging/Logger;


# instance fields
.field protected final callback:Lorg/briarproject/bramble/api/plugin/simplex/SimplexPluginCallback;

.field protected final maxLatency:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 24
    const-class v0, Lorg/briarproject/bramble/plugin/file/FilePlugin;

    .line 25
    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/logging/Logger;->getLogger(Ljava/lang/String;)Ljava/util/logging/Logger;

    move-result-object v0

    sput-object v0, Lorg/briarproject/bramble/plugin/file/FilePlugin;->LOG:Ljava/util/logging/Logger;

    return-void
.end method

.method constructor <init>(Lorg/briarproject/bramble/api/plugin/simplex/SimplexPluginCallback;I)V
    .locals 0

    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 36
    iput-object p1, p0, Lorg/briarproject/bramble/plugin/file/FilePlugin;->callback:Lorg/briarproject/bramble/api/plugin/simplex/SimplexPluginCallback;

    .line 37
    iput p2, p0, Lorg/briarproject/bramble/plugin/file/FilePlugin;->maxLatency:I

    return-void
.end method


# virtual methods
.method public createReader(Lorg/briarproject/bramble/api/properties/TransportProperties;)Lorg/briarproject/bramble/api/plugin/TransportConnectionReader;
    .locals 3

    .line 47
    invoke-virtual {p0}, Lorg/briarproject/bramble/plugin/file/FilePlugin;->isRunning()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return-object v1

    :cond_0
    const-string v0, "path"

    .line 48
    invoke-virtual {p1, v0}, Lorg/briarproject/bramble/api/properties/TransportProperties;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    .line 49
    invoke-static {p1}, Lorg/briarproject/bramble/util/StringUtils;->isNullOrEmpty(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    return-object v1

    .line 51
    :cond_1
    :try_start_0
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 52
    new-instance p1, Ljava/io/FileInputStream;

    invoke-direct {p1, v0}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    .line 53
    new-instance v2, Lorg/briarproject/bramble/plugin/file/FileTransportReader;

    invoke-direct {v2, v0, p1, p0}, Lorg/briarproject/bramble/plugin/file/FileTransportReader;-><init>(Ljava/io/File;Ljava/io/InputStream;Lorg/briarproject/bramble/plugin/file/FilePlugin;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v2

    :catch_0
    move-exception p1

    .line 55
    sget-object v0, Lorg/briarproject/bramble/plugin/file/FilePlugin;->LOG:Ljava/util/logging/Logger;

    sget-object v2, Ljava/util/logging/Level;->WARNING:Ljava/util/logging/Level;

    invoke-static {v0, v2, p1}, Lorg/briarproject/bramble/util/LogUtils;->logException(Ljava/util/logging/Logger;Ljava/util/logging/Level;Ljava/lang/Throwable;)V

    return-object v1
.end method

.method public createWriter(Lorg/briarproject/bramble/api/properties/TransportProperties;)Lorg/briarproject/bramble/api/plugin/TransportConnectionWriter;
    .locals 3

    .line 62
    invoke-virtual {p0}, Lorg/briarproject/bramble/plugin/file/FilePlugin;->isRunning()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return-object v1

    :cond_0
    const-string v0, "path"

    .line 63
    invoke-virtual {p1, v0}, Lorg/briarproject/bramble/api/properties/TransportProperties;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    .line 64
    invoke-static {p1}, Lorg/briarproject/bramble/util/StringUtils;->isNullOrEmpty(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    return-object v1

    .line 66
    :cond_1
    :try_start_0
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 67
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result p1

    if-nez p1, :cond_2

    invoke-virtual {v0}, Ljava/io/File;->createNewFile()Z

    move-result p1

    if-nez p1, :cond_2

    .line 68
    sget-object p1, Lorg/briarproject/bramble/plugin/file/FilePlugin;->LOG:Ljava/util/logging/Logger;

    const-string v0, "Failed to create file"

    invoke-virtual {p1, v0}, Ljava/util/logging/Logger;->info(Ljava/lang/String;)V

    return-object v1

    .line 71
    :cond_2
    new-instance p1, Ljava/io/FileOutputStream;

    invoke-direct {p1, v0}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    .line 72
    new-instance v2, Lorg/briarproject/bramble/plugin/file/FileTransportWriter;

    invoke-direct {v2, v0, p1, p0}, Lorg/briarproject/bramble/plugin/file/FileTransportWriter;-><init>(Ljava/io/File;Ljava/io/OutputStream;Lorg/briarproject/bramble/plugin/file/FilePlugin;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v2

    :catch_0
    move-exception p1

    .line 74
    sget-object v0, Lorg/briarproject/bramble/plugin/file/FilePlugin;->LOG:Ljava/util/logging/Logger;

    sget-object v2, Ljava/util/logging/Level;->WARNING:Ljava/util/logging/Level;

    invoke-static {v0, v2, p1}, Lorg/briarproject/bramble/util/LogUtils;->logException(Ljava/util/logging/Logger;Ljava/util/logging/Level;Ljava/lang/Throwable;)V

    return-object v1
.end method

.method public getMaxLatency()I
    .locals 1

    .line 42
    iget v0, p0, Lorg/briarproject/bramble/plugin/file/FilePlugin;->maxLatency:I

    return v0
.end method

.method protected abstract readerFinished(Ljava/io/File;ZZ)V
.end method

.method protected abstract writerFinished(Ljava/io/File;Z)V
.end method
