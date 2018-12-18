.class public Lorg/h2/command/dml/RunScriptCommand;
.super Lorg/h2/command/dml/ScriptBase;
.source "RunScriptCommand.java"


# static fields
.field private static final UTF8_BOM:C = '\ufeff'


# instance fields
.field private charset:Ljava/nio/charset/Charset;


# direct methods
.method public constructor <init>(Lorg/h2/engine/Session;)V
    .locals 0

    .line 36
    invoke-direct {p0, p1}, Lorg/h2/command/dml/ScriptBase;-><init>(Lorg/h2/engine/Session;)V

    .line 33
    sget-object p1, Lorg/h2/engine/Constants;->UTF8:Ljava/nio/charset/Charset;

    iput-object p1, p0, Lorg/h2/command/dml/RunScriptCommand;->charset:Ljava/nio/charset/Charset;

    return-void
.end method

.method private execute(Ljava/lang/String;)V
    .locals 3

    .line 74
    :try_start_0
    iget-object v0, p0, Lorg/h2/command/dml/RunScriptCommand;->session:Lorg/h2/engine/Session;

    invoke-virtual {v0, p1}, Lorg/h2/engine/Session;->prepare(Ljava/lang/String;)Lorg/h2/command/Prepared;

    move-result-object v0

    .line 75
    invoke-virtual {v0}, Lorg/h2/command/Prepared;->isQuery()Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    .line 76
    invoke-virtual {v0, v2}, Lorg/h2/command/Prepared;->query(I)Lorg/h2/result/ResultInterface;

    goto :goto_0

    .line 78
    :cond_0
    invoke-virtual {v0}, Lorg/h2/command/Prepared;->update()I

    .line 80
    :goto_0
    iget-object v0, p0, Lorg/h2/command/dml/RunScriptCommand;->session:Lorg/h2/engine/Session;

    invoke-virtual {v0}, Lorg/h2/engine/Session;->getAutoCommit()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 81
    iget-object v0, p0, Lorg/h2/command/dml/RunScriptCommand;->session:Lorg/h2/engine/Session;

    invoke-virtual {v0, v2}, Lorg/h2/engine/Session;->commit(Z)V
    :try_end_0
    .catch Lorg/h2/message/DbException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_1
    return-void

    :catch_0
    move-exception v0

    .line 84
    invoke-virtual {v0, p1}, Lorg/h2/message/DbException;->addSQL(Ljava/lang/String;)Lorg/h2/message/DbException;

    move-result-object p1

    throw p1
.end method


# virtual methods
.method public bridge synthetic checkPowerOff()V
    .locals 0

    .line 24
    invoke-super {p0}, Lorg/h2/command/dml/ScriptBase;->checkPowerOff()V

    return-void
.end method

.method public bridge synthetic checkWritingAllowed()V
    .locals 0

    .line 24
    invoke-super {p0}, Lorg/h2/command/dml/ScriptBase;->checkWritingAllowed()V

    return-void
.end method

.method public bridge synthetic getCompareMode()Lorg/h2/value/CompareMode;
    .locals 1

    .line 24
    invoke-super {p0}, Lorg/h2/command/dml/ScriptBase;->getCompareMode()Lorg/h2/value/CompareMode;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDatabasePath()Ljava/lang/String;
    .locals 1

    .line 24
    invoke-super {p0}, Lorg/h2/command/dml/ScriptBase;->getDatabasePath()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getJavaObjectSerializer()Lorg/h2/api/JavaObjectSerializer;
    .locals 1

    .line 24
    invoke-super {p0}, Lorg/h2/command/dml/ScriptBase;->getJavaObjectSerializer()Lorg/h2/api/JavaObjectSerializer;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getLobCompressionAlgorithm(I)Ljava/lang/String;
    .locals 0

    .line 24
    invoke-super {p0, p1}, Lorg/h2/command/dml/ScriptBase;->getLobCompressionAlgorithm(I)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic getLobFileListCache()Lorg/h2/util/SmallLRUCache;
    .locals 1

    .line 24
    invoke-super {p0}, Lorg/h2/command/dml/ScriptBase;->getLobFileListCache()Lorg/h2/util/SmallLRUCache;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getLobStorage()Lorg/h2/store/LobStorageBackend;
    .locals 1

    .line 24
    invoke-super {p0}, Lorg/h2/command/dml/ScriptBase;->getLobStorage()Lorg/h2/store/LobStorageBackend;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getLobSyncObject()Ljava/lang/Object;
    .locals 1

    .line 24
    invoke-super {p0}, Lorg/h2/command/dml/ScriptBase;->getLobSyncObject()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getMaxLengthInplaceLob()I
    .locals 1

    .line 24
    invoke-super {p0}, Lorg/h2/command/dml/ScriptBase;->getMaxLengthInplaceLob()I

    move-result v0

    return v0
.end method

.method public bridge synthetic getTempFileDeleter()Lorg/h2/util/TempFileDeleter;
    .locals 1

    .line 24
    invoke-super {p0}, Lorg/h2/command/dml/ScriptBase;->getTempFileDeleter()Lorg/h2/util/TempFileDeleter;

    move-result-object v0

    return-object v0
.end method

.method public getType()I
    .locals 1

    const/16 v0, 0x40

    return v0
.end method

.method public bridge synthetic isTransactional()Z
    .locals 1

    .line 24
    invoke-super {p0}, Lorg/h2/command/dml/ScriptBase;->isTransactional()Z

    move-result v0

    return v0
.end method

.method public bridge synthetic needRecompile()Z
    .locals 1

    .line 24
    invoke-super {p0}, Lorg/h2/command/dml/ScriptBase;->needRecompile()Z

    move-result v0

    return v0
.end method

.method public bridge synthetic openFile(Ljava/lang/String;Ljava/lang/String;Z)Lorg/h2/store/FileStore;
    .locals 0

    .line 24
    invoke-super {p0, p1, p2, p3}, Lorg/h2/command/dml/ScriptBase;->openFile(Ljava/lang/String;Ljava/lang/String;Z)Lorg/h2/store/FileStore;

    move-result-object p1

    return-object p1
.end method

.method public queryMeta()Lorg/h2/result/ResultInterface;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public bridge synthetic readLob(J[BJ[BII)I
    .locals 0

    .line 24
    invoke-super/range {p0 .. p8}, Lorg/h2/command/dml/ScriptBase;->readLob(J[BJ[BII)I

    move-result p1

    return p1
.end method

.method public setCharset(Ljava/nio/charset/Charset;)V
    .locals 0

    .line 89
    iput-object p1, p0, Lorg/h2/command/dml/RunScriptCommand;->charset:Ljava/nio/charset/Charset;

    return-void
.end method

.method public bridge synthetic setCipher(Ljava/lang/String;)V
    .locals 0

    .line 24
    invoke-super {p0, p1}, Lorg/h2/command/dml/ScriptBase;->setCipher(Ljava/lang/String;)V

    return-void
.end method

.method public bridge synthetic setCompressionAlgorithm(Ljava/lang/String;)V
    .locals 0

    .line 24
    invoke-super {p0, p1}, Lorg/h2/command/dml/ScriptBase;->setCompressionAlgorithm(Ljava/lang/String;)V

    return-void
.end method

.method public bridge synthetic setFileNameExpr(Lorg/h2/expression/Expression;)V
    .locals 0

    .line 24
    invoke-super {p0, p1}, Lorg/h2/command/dml/ScriptBase;->setFileNameExpr(Lorg/h2/expression/Expression;)V

    return-void
.end method

.method public bridge synthetic setPassword(Lorg/h2/expression/Expression;)V
    .locals 0

    .line 24
    invoke-super {p0, p1}, Lorg/h2/command/dml/ScriptBase;->setPassword(Lorg/h2/expression/Expression;)V

    return-void
.end method

.method public update()I
    .locals 4

    .line 41
    iget-object v0, p0, Lorg/h2/command/dml/RunScriptCommand;->session:Lorg/h2/engine/Session;

    invoke-virtual {v0}, Lorg/h2/engine/Session;->getUser()Lorg/h2/engine/User;

    move-result-object v0

    invoke-virtual {v0}, Lorg/h2/engine/User;->checkAdmin()V

    .line 44
    :try_start_0
    invoke-virtual {p0}, Lorg/h2/command/dml/RunScriptCommand;->openInput()V

    .line 45
    new-instance v0, Ljava/io/BufferedReader;

    new-instance v1, Ljava/io/InputStreamReader;

    iget-object v2, p0, Lorg/h2/command/dml/RunScriptCommand;->in:Ljava/io/InputStream;

    iget-object v3, p0, Lorg/h2/command/dml/RunScriptCommand;->charset:Ljava/nio/charset/Charset;

    invoke-direct {v1, v2, v3}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;Ljava/nio/charset/Charset;)V

    invoke-direct {v0, v1}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    const/4 v1, 0x1

    .line 47
    invoke-virtual {v0, v1}, Ljava/io/BufferedReader;->mark(I)V

    .line 48
    invoke-virtual {v0}, Ljava/io/BufferedReader;->read()I

    move-result v1

    const v2, 0xfeff

    if-eq v1, v2, :cond_0

    .line 49
    invoke-virtual {v0}, Ljava/io/BufferedReader;->reset()V

    .line 51
    :cond_0
    new-instance v1, Lorg/h2/util/ScriptReader;

    invoke-direct {v1, v0}, Lorg/h2/util/ScriptReader;-><init>(Ljava/io/Reader;)V

    const/4 v2, 0x0

    .line 53
    :cond_1
    :goto_0
    invoke-virtual {v1}, Lorg/h2/util/ScriptReader;->readStatement()Ljava/lang/String;

    move-result-object v3

    if-nez v3, :cond_2

    .line 63
    invoke-virtual {v0}, Ljava/io/BufferedReader;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 67
    invoke-virtual {p0}, Lorg/h2/command/dml/RunScriptCommand;->closeIO()V

    return v2

    .line 57
    :cond_2
    :try_start_1
    invoke-direct {p0, v3}, Lorg/h2/command/dml/RunScriptCommand;->execute(Ljava/lang/String;)V

    add-int/lit8 v2, v2, 0x1

    and-int/lit8 v3, v2, 0x7f

    if-nez v3, :cond_1

    .line 60
    invoke-virtual {p0}, Lorg/h2/command/dml/RunScriptCommand;->checkCanceled()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    goto :goto_1

    :catch_0
    move-exception v0

    const/4 v1, 0x0

    .line 65
    :try_start_2
    invoke-static {v0, v1}, Lorg/h2/message/DbException;->convertIOException(Ljava/io/IOException;Ljava/lang/String;)Lorg/h2/message/DbException;

    move-result-object v0

    throw v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 67
    :goto_1
    invoke-virtual {p0}, Lorg/h2/command/dml/RunScriptCommand;->closeIO()V

    throw v0
.end method
