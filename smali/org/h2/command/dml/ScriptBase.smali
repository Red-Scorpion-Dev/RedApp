.class abstract Lorg/h2/command/dml/ScriptBase;
.super Lorg/h2/command/Prepared;
.source "ScriptBase.java"

# interfaces
.implements Lorg/h2/store/DataHandler;


# static fields
.field private static final SCRIPT_SQL:Ljava/lang/String; = "script.sql"


# instance fields
.field private cipher:Ljava/lang/String;

.field private compressionAlgorithm:Ljava/lang/String;

.field private fileName:Ljava/lang/String;

.field private fileNameExpr:Lorg/h2/expression/Expression;

.field protected in:Ljava/io/InputStream;

.field protected out:Ljava/io/OutputStream;

.field private password:Lorg/h2/expression/Expression;

.field private store:Lorg/h2/store/FileStore;


# direct methods
.method constructor <init>(Lorg/h2/engine/Session;)V
    .locals 0

    .line 69
    invoke-direct {p0, p1}, Lorg/h2/command/Prepared;-><init>(Lorg/h2/engine/Session;)V

    return-void
.end method

.method private initStore()V
    .locals 5

    .line 115
    iget-object v0, p0, Lorg/h2/command/dml/ScriptBase;->session:Lorg/h2/engine/Session;

    invoke-virtual {v0}, Lorg/h2/engine/Session;->getDatabase()Lorg/h2/engine/Database;

    move-result-object v0

    .line 117
    iget-object v1, p0, Lorg/h2/command/dml/ScriptBase;->cipher:Ljava/lang/String;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lorg/h2/command/dml/ScriptBase;->password:Lorg/h2/expression/Expression;

    if-eqz v1, :cond_0

    .line 118
    iget-object v1, p0, Lorg/h2/command/dml/ScriptBase;->password:Lorg/h2/expression/Expression;

    iget-object v2, p0, Lorg/h2/command/dml/ScriptBase;->session:Lorg/h2/engine/Session;

    invoke-virtual {v1, v2}, Lorg/h2/expression/Expression;->optimize(Lorg/h2/engine/Session;)Lorg/h2/expression/Expression;

    move-result-object v1

    iget-object v2, p0, Lorg/h2/command/dml/ScriptBase;->session:Lorg/h2/engine/Session;

    invoke-virtual {v1, v2}, Lorg/h2/expression/Expression;->getValue(Lorg/h2/engine/Session;)Lorg/h2/value/Value;

    move-result-object v1

    invoke-virtual {v1}, Lorg/h2/value/Value;->getString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->toCharArray()[C

    move-result-object v1

    const-string v2, "script"

    .line 120
    invoke-static {v2, v1}, Lorg/h2/security/SHA256;->getKeyPasswordHash(Ljava/lang/String;[C)[B

    move-result-object v1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    .line 122
    :goto_0
    invoke-virtual {p0}, Lorg/h2/command/dml/ScriptBase;->getFileName()Ljava/lang/String;

    move-result-object v2

    const-string v3, "rw"

    .line 123
    iget-object v4, p0, Lorg/h2/command/dml/ScriptBase;->cipher:Ljava/lang/String;

    invoke-static {v0, v2, v3, v4, v1}, Lorg/h2/store/FileStore;->open(Lorg/h2/store/DataHandler;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[B)Lorg/h2/store/FileStore;

    move-result-object v0

    iput-object v0, p0, Lorg/h2/command/dml/ScriptBase;->store:Lorg/h2/store/FileStore;

    .line 124
    iget-object v0, p0, Lorg/h2/command/dml/ScriptBase;->store:Lorg/h2/store/FileStore;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lorg/h2/store/FileStore;->setCheckedWriting(Z)V

    .line 125
    iget-object v0, p0, Lorg/h2/command/dml/ScriptBase;->store:Lorg/h2/store/FileStore;

    invoke-virtual {v0}, Lorg/h2/store/FileStore;->init()V

    return-void
.end method

.method private isEncrypted()Z
    .locals 1

    .line 77
    iget-object v0, p0, Lorg/h2/command/dml/ScriptBase;->cipher:Ljava/lang/String;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method


# virtual methods
.method public checkPowerOff()V
    .locals 1

    .line 210
    iget-object v0, p0, Lorg/h2/command/dml/ScriptBase;->session:Lorg/h2/engine/Session;

    invoke-virtual {v0}, Lorg/h2/engine/Session;->getDatabase()Lorg/h2/engine/Database;

    move-result-object v0

    invoke-virtual {v0}, Lorg/h2/engine/Database;->checkPowerOff()V

    return-void
.end method

.method public checkWritingAllowed()V
    .locals 1

    .line 215
    iget-object v0, p0, Lorg/h2/command/dml/ScriptBase;->session:Lorg/h2/engine/Session;

    invoke-virtual {v0}, Lorg/h2/engine/Session;->getDatabase()Lorg/h2/engine/Database;

    move-result-object v0

    invoke-virtual {v0}, Lorg/h2/engine/Database;->checkWritingAllowed()V

    return-void
.end method

.method closeIO()V
    .locals 2

    .line 183
    iget-object v0, p0, Lorg/h2/command/dml/ScriptBase;->out:Ljava/io/OutputStream;

    invoke-static {v0}, Lorg/h2/util/IOUtils;->closeSilently(Ljava/io/Closeable;)V

    const/4 v0, 0x0

    .line 184
    iput-object v0, p0, Lorg/h2/command/dml/ScriptBase;->out:Ljava/io/OutputStream;

    .line 185
    iget-object v1, p0, Lorg/h2/command/dml/ScriptBase;->in:Ljava/io/InputStream;

    invoke-static {v1}, Lorg/h2/util/IOUtils;->closeSilently(Ljava/io/InputStream;)V

    .line 186
    iput-object v0, p0, Lorg/h2/command/dml/ScriptBase;->in:Ljava/io/InputStream;

    .line 187
    iget-object v1, p0, Lorg/h2/command/dml/ScriptBase;->store:Lorg/h2/store/FileStore;

    if-eqz v1, :cond_0

    .line 188
    iget-object v1, p0, Lorg/h2/command/dml/ScriptBase;->store:Lorg/h2/store/FileStore;

    invoke-virtual {v1}, Lorg/h2/store/FileStore;->closeSilently()V

    .line 189
    iput-object v0, p0, Lorg/h2/command/dml/ScriptBase;->store:Lorg/h2/store/FileStore;

    :cond_0
    return-void
.end method

.method deleteStore()V
    .locals 1

    .line 108
    invoke-virtual {p0}, Lorg/h2/command/dml/ScriptBase;->getFileName()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 110
    invoke-static {v0}, Lorg/h2/store/fs/FileUtils;->delete(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public getCompareMode()Lorg/h2/value/CompareMode;
    .locals 1

    .line 265
    iget-object v0, p0, Lorg/h2/command/dml/ScriptBase;->session:Lorg/h2/engine/Session;

    invoke-virtual {v0}, Lorg/h2/engine/Session;->getDataHandler()Lorg/h2/store/DataHandler;

    move-result-object v0

    invoke-interface {v0}, Lorg/h2/store/DataHandler;->getCompareMode()Lorg/h2/value/CompareMode;

    move-result-object v0

    return-object v0
.end method

.method public getDatabasePath()Ljava/lang/String;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method protected getFileName()Ljava/lang/String;
    .locals 2

    .line 89
    iget-object v0, p0, Lorg/h2/command/dml/ScriptBase;->fileNameExpr:Lorg/h2/expression/Expression;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lorg/h2/command/dml/ScriptBase;->fileName:Ljava/lang/String;

    if-nez v0, :cond_2

    .line 90
    iget-object v0, p0, Lorg/h2/command/dml/ScriptBase;->fileNameExpr:Lorg/h2/expression/Expression;

    iget-object v1, p0, Lorg/h2/command/dml/ScriptBase;->session:Lorg/h2/engine/Session;

    invoke-virtual {v0, v1}, Lorg/h2/expression/Expression;->optimize(Lorg/h2/engine/Session;)Lorg/h2/expression/Expression;

    move-result-object v0

    iget-object v1, p0, Lorg/h2/command/dml/ScriptBase;->session:Lorg/h2/engine/Session;

    invoke-virtual {v0, v1}, Lorg/h2/expression/Expression;->getValue(Lorg/h2/engine/Session;)Lorg/h2/value/Value;

    move-result-object v0

    invoke-virtual {v0}, Lorg/h2/value/Value;->getString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/h2/command/dml/ScriptBase;->fileName:Ljava/lang/String;

    .line 91
    iget-object v0, p0, Lorg/h2/command/dml/ScriptBase;->fileName:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/h2/command/dml/ScriptBase;->fileName:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    const-string v0, "script.sql"

    .line 92
    iput-object v0, p0, Lorg/h2/command/dml/ScriptBase;->fileName:Ljava/lang/String;

    .line 94
    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lorg/h2/engine/SysProperties;->getScriptDirectory()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lorg/h2/command/dml/ScriptBase;->fileName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/h2/command/dml/ScriptBase;->fileName:Ljava/lang/String;

    .line 96
    :cond_2
    iget-object v0, p0, Lorg/h2/command/dml/ScriptBase;->fileName:Ljava/lang/String;

    return-object v0
.end method

.method public getJavaObjectSerializer()Lorg/h2/api/JavaObjectSerializer;
    .locals 1

    .line 260
    iget-object v0, p0, Lorg/h2/command/dml/ScriptBase;->session:Lorg/h2/engine/Session;

    invoke-virtual {v0}, Lorg/h2/engine/Session;->getDataHandler()Lorg/h2/store/DataHandler;

    move-result-object v0

    invoke-interface {v0}, Lorg/h2/store/DataHandler;->getJavaObjectSerializer()Lorg/h2/api/JavaObjectSerializer;

    move-result-object v0

    return-object v0
.end method

.method public getLobCompressionAlgorithm(I)Ljava/lang/String;
    .locals 1

    .line 230
    iget-object v0, p0, Lorg/h2/command/dml/ScriptBase;->session:Lorg/h2/engine/Session;

    invoke-virtual {v0}, Lorg/h2/engine/Session;->getDatabase()Lorg/h2/engine/Database;

    move-result-object v0

    invoke-virtual {v0, p1}, Lorg/h2/engine/Database;->getLobCompressionAlgorithm(I)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public getLobFileListCache()Lorg/h2/util/SmallLRUCache;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lorg/h2/util/SmallLRUCache<",
            "Ljava/lang/String;",
            "[",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    const/4 v0, 0x0

    return-object v0
.end method

.method public getLobStorage()Lorg/h2/store/LobStorageBackend;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public bridge synthetic getLobStorage()Lorg/h2/store/LobStorageInterface;
    .locals 1

    .line 38
    invoke-virtual {p0}, Lorg/h2/command/dml/ScriptBase;->getLobStorage()Lorg/h2/store/LobStorageBackend;

    move-result-object v0

    return-object v0
.end method

.method public getLobSyncObject()Ljava/lang/Object;
    .locals 0

    return-object p0
.end method

.method public getMaxLengthInplaceLob()I
    .locals 1

    .line 220
    iget-object v0, p0, Lorg/h2/command/dml/ScriptBase;->session:Lorg/h2/engine/Session;

    invoke-virtual {v0}, Lorg/h2/engine/Session;->getDatabase()Lorg/h2/engine/Database;

    move-result-object v0

    invoke-virtual {v0}, Lorg/h2/engine/Database;->getMaxLengthInplaceLob()I

    move-result v0

    return v0
.end method

.method public getTempFileDeleter()Lorg/h2/util/TempFileDeleter;
    .locals 1

    .line 225
    iget-object v0, p0, Lorg/h2/command/dml/ScriptBase;->session:Lorg/h2/engine/Session;

    invoke-virtual {v0}, Lorg/h2/engine/Session;->getDatabase()Lorg/h2/engine/Database;

    move-result-object v0

    invoke-virtual {v0}, Lorg/h2/engine/Database;->getTempFileDeleter()Lorg/h2/util/TempFileDeleter;

    move-result-object v0

    return-object v0
.end method

.method public isTransactional()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public needRecompile()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public openFile(Ljava/lang/String;Ljava/lang/String;Z)Lorg/h2/store/FileStore;
    .locals 0

    const/4 p1, 0x0

    return-object p1
.end method

.method openInput()V
    .locals 4

    .line 157
    invoke-virtual {p0}, Lorg/h2/command/dml/ScriptBase;->getFileName()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    .line 161
    :cond_0
    invoke-direct {p0}, Lorg/h2/command/dml/ScriptBase;->isEncrypted()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 162
    invoke-direct {p0}, Lorg/h2/command/dml/ScriptBase;->initStore()V

    .line 163
    new-instance v0, Lorg/h2/store/FileStoreInputStream;

    iget-object v1, p0, Lorg/h2/command/dml/ScriptBase;->store:Lorg/h2/store/FileStore;

    iget-object v2, p0, Lorg/h2/command/dml/ScriptBase;->compressionAlgorithm:Ljava/lang/String;

    const/4 v3, 0x0

    if-eqz v2, :cond_1

    const/4 v2, 0x1

    goto :goto_0

    :cond_1
    const/4 v2, 0x0

    :goto_0
    invoke-direct {v0, v1, p0, v2, v3}, Lorg/h2/store/FileStoreInputStream;-><init>(Lorg/h2/store/FileStore;Lorg/h2/store/DataHandler;ZZ)V

    iput-object v0, p0, Lorg/h2/command/dml/ScriptBase;->in:Ljava/io/InputStream;

    goto :goto_1

    .line 167
    :cond_2
    :try_start_0
    invoke-static {v0}, Lorg/h2/store/fs/FileUtils;->newInputStream(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v1
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 171
    new-instance v2, Ljava/io/BufferedInputStream;

    const/16 v3, 0x1000

    invoke-direct {v2, v1, v3}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;I)V

    iput-object v2, p0, Lorg/h2/command/dml/ScriptBase;->in:Ljava/io/InputStream;

    .line 172
    iget-object v1, p0, Lorg/h2/command/dml/ScriptBase;->in:Ljava/io/InputStream;

    iget-object v2, p0, Lorg/h2/command/dml/ScriptBase;->compressionAlgorithm:Ljava/lang/String;

    const-string v3, "script.sql"

    invoke-static {v1, v2, v3}, Lorg/h2/tools/CompressTool;->wrapInputStream(Ljava/io/InputStream;Ljava/lang/String;Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v1

    iput-object v1, p0, Lorg/h2/command/dml/ScriptBase;->in:Ljava/io/InputStream;

    .line 173
    iget-object v1, p0, Lorg/h2/command/dml/ScriptBase;->in:Ljava/io/InputStream;

    if-eqz v1, :cond_3

    :goto_1
    return-void

    :cond_3
    const v1, 0x1600c

    .line 174
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "script.sql in "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lorg/h2/message/DbException;->get(ILjava/lang/String;)Lorg/h2/message/DbException;

    move-result-object v0

    throw v0

    :catch_0
    move-exception v1

    .line 169
    invoke-static {v1, v0}, Lorg/h2/message/DbException;->convertIOException(Ljava/io/IOException;Ljava/lang/String;)Lorg/h2/message/DbException;

    move-result-object v0

    throw v0
.end method

.method openOutput()V
    .locals 3

    .line 132
    invoke-virtual {p0}, Lorg/h2/command/dml/ScriptBase;->getFileName()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    .line 136
    :cond_0
    invoke-direct {p0}, Lorg/h2/command/dml/ScriptBase;->isEncrypted()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 137
    invoke-direct {p0}, Lorg/h2/command/dml/ScriptBase;->initStore()V

    .line 138
    new-instance v0, Lorg/h2/store/FileStoreOutputStream;

    iget-object v1, p0, Lorg/h2/command/dml/ScriptBase;->store:Lorg/h2/store/FileStore;

    iget-object v2, p0, Lorg/h2/command/dml/ScriptBase;->compressionAlgorithm:Ljava/lang/String;

    invoke-direct {v0, v1, p0, v2}, Lorg/h2/store/FileStoreOutputStream;-><init>(Lorg/h2/store/FileStore;Lorg/h2/store/DataHandler;Ljava/lang/String;)V

    iput-object v0, p0, Lorg/h2/command/dml/ScriptBase;->out:Ljava/io/OutputStream;

    .line 140
    new-instance v0, Ljava/io/BufferedOutputStream;

    iget-object v1, p0, Lorg/h2/command/dml/ScriptBase;->out:Ljava/io/OutputStream;

    const/high16 v2, 0x20000

    invoke-direct {v0, v1, v2}, Ljava/io/BufferedOutputStream;-><init>(Ljava/io/OutputStream;I)V

    iput-object v0, p0, Lorg/h2/command/dml/ScriptBase;->out:Ljava/io/OutputStream;

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    .line 144
    :try_start_0
    invoke-static {v0, v1}, Lorg/h2/store/fs/FileUtils;->newOutputStream(Ljava/lang/String;Z)Ljava/io/OutputStream;

    move-result-object v0
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 148
    new-instance v1, Ljava/io/BufferedOutputStream;

    const/16 v2, 0x1000

    invoke-direct {v1, v0, v2}, Ljava/io/BufferedOutputStream;-><init>(Ljava/io/OutputStream;I)V

    iput-object v1, p0, Lorg/h2/command/dml/ScriptBase;->out:Ljava/io/OutputStream;

    .line 149
    iget-object v0, p0, Lorg/h2/command/dml/ScriptBase;->out:Ljava/io/OutputStream;

    iget-object v1, p0, Lorg/h2/command/dml/ScriptBase;->compressionAlgorithm:Ljava/lang/String;

    const-string v2, "script.sql"

    invoke-static {v0, v1, v2}, Lorg/h2/tools/CompressTool;->wrapOutputStream(Ljava/io/OutputStream;Ljava/lang/String;Ljava/lang/String;)Ljava/io/OutputStream;

    move-result-object v0

    iput-object v0, p0, Lorg/h2/command/dml/ScriptBase;->out:Ljava/io/OutputStream;

    :goto_0
    return-void

    :catch_0
    move-exception v0

    const/4 v1, 0x0

    .line 146
    invoke-static {v0, v1}, Lorg/h2/message/DbException;->convertIOException(Ljava/io/IOException;Ljava/lang/String;)Lorg/h2/message/DbException;

    move-result-object v0

    throw v0
.end method

.method public readLob(J[BJ[BII)I
    .locals 0

    .line 255
    invoke-static {}, Lorg/h2/message/DbException;->throwInternalError()Ljava/lang/RuntimeException;

    move-result-object p1

    throw p1
.end method

.method public setCipher(Ljava/lang/String;)V
    .locals 0

    .line 73
    iput-object p1, p0, Lorg/h2/command/dml/ScriptBase;->cipher:Ljava/lang/String;

    return-void
.end method

.method public setCompressionAlgorithm(Ljava/lang/String;)V
    .locals 0

    .line 234
    iput-object p1, p0, Lorg/h2/command/dml/ScriptBase;->compressionAlgorithm:Ljava/lang/String;

    return-void
.end method

.method public setFileNameExpr(Lorg/h2/expression/Expression;)V
    .locals 0

    .line 85
    iput-object p1, p0, Lorg/h2/command/dml/ScriptBase;->fileNameExpr:Lorg/h2/expression/Expression;

    return-void
.end method

.method public setPassword(Lorg/h2/expression/Expression;)V
    .locals 0

    .line 81
    iput-object p1, p0, Lorg/h2/command/dml/ScriptBase;->password:Lorg/h2/expression/Expression;

    return-void
.end method
