.class Lorg/briarproject/bramble/account/AccountManagerImpl;
.super Ljava/lang/Object;
.source "AccountManagerImpl.java"

# interfaces
.implements Lorg/briarproject/bramble/api/account/AccountManager;


# annotations
.annotation runtime Lorg/briarproject/bramble/api/nullsafety/MethodsNotNullByDefault;
.end annotation

.annotation runtime Lorg/briarproject/bramble/api/nullsafety/ParametersNotNullByDefault;
.end annotation


# static fields
.field private static final DB_KEY_BACKUP_FILENAME:Ljava/lang/String; = "db.key.bak"

.field private static final DB_KEY_FILENAME:Ljava/lang/String; = "db.key"

.field private static final LOG:Ljava/util/logging/Logger;


# instance fields
.field private final crypto:Lorg/briarproject/bramble/api/crypto/CryptoComponent;

.field private final databaseConfig:Lorg/briarproject/bramble/api/db/DatabaseConfig;

.field private volatile databaseKey:Lorg/briarproject/bramble/api/crypto/SecretKey;

.field private final dbKeyBackupFile:Ljava/io/File;

.field private final dbKeyFile:Ljava/io/File;

.field private final identityManager:Lorg/briarproject/bramble/api/identity/IdentityManager;

.field final stateChangeLock:Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 33
    const-class v0, Lorg/briarproject/bramble/account/AccountManagerImpl;

    .line 34
    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/logging/Logger;->getLogger(Ljava/lang/String;)Ljava/util/logging/Logger;

    move-result-object v0

    sput-object v0, Lorg/briarproject/bramble/account/AccountManagerImpl;->LOG:Ljava/util/logging/Logger;

    return-void
.end method

.method constructor <init>(Lorg/briarproject/bramble/api/db/DatabaseConfig;Lorg/briarproject/bramble/api/crypto/CryptoComponent;Lorg/briarproject/bramble/api/identity/IdentityManager;)V
    .locals 1

    .line 51
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 44
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lorg/briarproject/bramble/account/AccountManagerImpl;->stateChangeLock:Ljava/lang/Object;

    const/4 v0, 0x0

    .line 46
    iput-object v0, p0, Lorg/briarproject/bramble/account/AccountManagerImpl;->databaseKey:Lorg/briarproject/bramble/api/crypto/SecretKey;

    .line 52
    iput-object p1, p0, Lorg/briarproject/bramble/account/AccountManagerImpl;->databaseConfig:Lorg/briarproject/bramble/api/db/DatabaseConfig;

    .line 53
    iput-object p2, p0, Lorg/briarproject/bramble/account/AccountManagerImpl;->crypto:Lorg/briarproject/bramble/api/crypto/CryptoComponent;

    .line 54
    iput-object p3, p0, Lorg/briarproject/bramble/account/AccountManagerImpl;->identityManager:Lorg/briarproject/bramble/api/identity/IdentityManager;

    .line 55
    invoke-interface {p1}, Lorg/briarproject/bramble/api/db/DatabaseConfig;->getDatabaseKeyDirectory()Ljava/io/File;

    move-result-object p1

    .line 56
    new-instance p2, Ljava/io/File;

    const-string p3, "db.key"

    invoke-direct {p2, p1, p3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    iput-object p2, p0, Lorg/briarproject/bramble/account/AccountManagerImpl;->dbKeyFile:Ljava/io/File;

    .line 57
    new-instance p2, Ljava/io/File;

    const-string p3, "db.key.bak"

    invoke-direct {p2, p1, p3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    iput-object p2, p0, Lorg/briarproject/bramble/account/AccountManagerImpl;->dbKeyBackupFile:Ljava/io/File;

    return-void
.end method

.method private encryptAndStoreDatabaseKey(Lorg/briarproject/bramble/api/crypto/SecretKey;Ljava/lang/String;)Z
    .locals 1

    .line 175
    invoke-virtual {p1}, Lorg/briarproject/bramble/api/crypto/SecretKey;->getBytes()[B

    move-result-object p1

    .line 176
    iget-object v0, p0, Lorg/briarproject/bramble/account/AccountManagerImpl;->crypto:Lorg/briarproject/bramble/api/crypto/CryptoComponent;

    invoke-interface {v0, p1, p2}, Lorg/briarproject/bramble/api/crypto/CryptoComponent;->encryptWithPassword([BLjava/lang/String;)[B

    move-result-object p1

    .line 177
    invoke-static {p1}, Lorg/briarproject/bramble/util/StringUtils;->toHexString([B)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lorg/briarproject/bramble/account/AccountManagerImpl;->storeEncryptedDatabaseKey(Ljava/lang/String;)Z

    move-result p1

    return p1
.end method

.method private loadAndDecryptDatabaseKey(Ljava/lang/String;)Lorg/briarproject/bramble/api/crypto/SecretKey;
    .locals 3

    .line 203
    invoke-virtual {p0}, Lorg/briarproject/bramble/account/AccountManagerImpl;->loadEncryptedDatabaseKey()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 205
    sget-object p1, Lorg/briarproject/bramble/account/AccountManagerImpl;->LOG:Ljava/util/logging/Logger;

    const-string v0, "Failed to load encrypted database key"

    invoke-virtual {p1, v0}, Ljava/util/logging/Logger;->warning(Ljava/lang/String;)V

    return-object v1

    .line 208
    :cond_0
    invoke-static {v0}, Lorg/briarproject/bramble/util/StringUtils;->fromHexString(Ljava/lang/String;)[B

    move-result-object v0

    .line 209
    iget-object v2, p0, Lorg/briarproject/bramble/account/AccountManagerImpl;->crypto:Lorg/briarproject/bramble/api/crypto/CryptoComponent;

    invoke-interface {v2, v0, p1}, Lorg/briarproject/bramble/api/crypto/CryptoComponent;->decryptWithPassword([BLjava/lang/String;)[B

    move-result-object p1

    if-nez p1, :cond_1

    .line 211
    sget-object p1, Lorg/briarproject/bramble/account/AccountManagerImpl;->LOG:Ljava/util/logging/Logger;

    const-string v0, "Failed to decrypt database key"

    invoke-virtual {p1, v0}, Ljava/util/logging/Logger;->info(Ljava/lang/String;)V

    return-object v1

    .line 214
    :cond_1
    new-instance v0, Lorg/briarproject/bramble/api/crypto/SecretKey;

    invoke-direct {v0, p1}, Lorg/briarproject/bramble/api/crypto/SecretKey;-><init>([B)V

    return-object v0
.end method

.method private readDbKeyFromFile(Ljava/io/File;)Ljava/lang/String;
    .locals 4

    .line 89
    invoke-virtual {p1}, Ljava/io/File;->exists()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 90
    sget-object p1, Lorg/briarproject/bramble/account/AccountManagerImpl;->LOG:Ljava/util/logging/Logger;

    const-string v0, "Key file does not exist"

    invoke-virtual {p1, v0}, Ljava/util/logging/Logger;->info(Ljava/lang/String;)V

    return-object v1

    .line 94
    :cond_0
    :try_start_0
    new-instance v0, Ljava/io/BufferedReader;

    new-instance v2, Ljava/io/InputStreamReader;

    new-instance v3, Ljava/io/FileInputStream;

    invoke-direct {v3, p1}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    const-string p1, "UTF-8"

    invoke-direct {v2, v3, p1}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;Ljava/lang/String;)V

    invoke-direct {v0, v2}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    .line 96
    invoke-virtual {v0}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object p1

    .line 97
    invoke-virtual {v0}, Ljava/io/BufferedReader;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move-exception p1

    .line 100
    sget-object v0, Lorg/briarproject/bramble/account/AccountManagerImpl;->LOG:Ljava/util/logging/Logger;

    sget-object v2, Ljava/util/logging/Level;->WARNING:Ljava/util/logging/Level;

    invoke-static {v0, v2, p1}, Lorg/briarproject/bramble/util/LogUtils;->logException(Ljava/util/logging/Logger;Ljava/util/logging/Level;Ljava/lang/Throwable;)V

    return-object v1
.end method

.method private writeDbKeyToFile(Ljava/lang/String;Ljava/io/File;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 145
    new-instance v0, Ljava/io/FileOutputStream;

    invoke-direct {v0, p2}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    const-string p2, "UTF-8"

    .line 146
    invoke-virtual {p1, p2}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/io/FileOutputStream;->write([B)V

    .line 147
    invoke-virtual {v0}, Ljava/io/FileOutputStream;->flush()V

    .line 148
    invoke-virtual {v0}, Ljava/io/FileOutputStream;->close()V

    return-void
.end method


# virtual methods
.method public accountExists()Z
    .locals 2

    .line 153
    iget-object v0, p0, Lorg/briarproject/bramble/account/AccountManagerImpl;->stateChangeLock:Ljava/lang/Object;

    monitor-enter v0

    .line 154
    :try_start_0
    invoke-virtual {p0}, Lorg/briarproject/bramble/account/AccountManagerImpl;->loadEncryptedDatabaseKey()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lorg/briarproject/bramble/account/AccountManagerImpl;->databaseConfig:Lorg/briarproject/bramble/api/db/DatabaseConfig;

    .line 155
    invoke-interface {v1}, Lorg/briarproject/bramble/api/db/DatabaseConfig;->getDatabaseDirectory()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/File;->isDirectory()Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    monitor-exit v0

    return v1

    :catchall_0
    move-exception v1

    .line 156
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public changePassword(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 1

    .line 219
    iget-object v0, p0, Lorg/briarproject/bramble/account/AccountManagerImpl;->stateChangeLock:Ljava/lang/Object;

    monitor-enter v0

    .line 220
    :try_start_0
    invoke-direct {p0, p1}, Lorg/briarproject/bramble/account/AccountManagerImpl;->loadAndDecryptDatabaseKey(Ljava/lang/String;)Lorg/briarproject/bramble/api/crypto/SecretKey;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 221
    invoke-direct {p0, p1, p2}, Lorg/briarproject/bramble/account/AccountManagerImpl;->encryptAndStoreDatabaseKey(Lorg/briarproject/bramble/api/crypto/SecretKey;Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    monitor-exit v0

    return p1

    :catchall_0
    move-exception p1

    .line 222
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public createAccount(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 2

    .line 161
    iget-object v0, p0, Lorg/briarproject/bramble/account/AccountManagerImpl;->stateChangeLock:Ljava/lang/Object;

    monitor-enter v0

    .line 162
    :try_start_0
    invoke-virtual {p0}, Lorg/briarproject/bramble/account/AccountManagerImpl;->hasDatabaseKey()Z

    move-result v1

    if-nez v1, :cond_1

    .line 164
    iget-object v1, p0, Lorg/briarproject/bramble/account/AccountManagerImpl;->identityManager:Lorg/briarproject/bramble/api/identity/IdentityManager;

    invoke-interface {v1, p1}, Lorg/briarproject/bramble/api/identity/IdentityManager;->createLocalAuthor(Ljava/lang/String;)Lorg/briarproject/bramble/api/identity/LocalAuthor;

    move-result-object p1

    .line 165
    iget-object v1, p0, Lorg/briarproject/bramble/account/AccountManagerImpl;->identityManager:Lorg/briarproject/bramble/api/identity/IdentityManager;

    invoke-interface {v1, p1}, Lorg/briarproject/bramble/api/identity/IdentityManager;->registerLocalAuthor(Lorg/briarproject/bramble/api/identity/LocalAuthor;)V

    .line 166
    iget-object p1, p0, Lorg/briarproject/bramble/account/AccountManagerImpl;->crypto:Lorg/briarproject/bramble/api/crypto/CryptoComponent;

    invoke-interface {p1}, Lorg/briarproject/bramble/api/crypto/CryptoComponent;->generateSecretKey()Lorg/briarproject/bramble/api/crypto/SecretKey;

    move-result-object p1

    .line 167
    invoke-direct {p0, p1, p2}, Lorg/briarproject/bramble/account/AccountManagerImpl;->encryptAndStoreDatabaseKey(Lorg/briarproject/bramble/api/crypto/SecretKey;Ljava/lang/String;)Z

    move-result p2

    if-nez p2, :cond_0

    const/4 p1, 0x0

    monitor-exit v0

    return p1

    .line 168
    :cond_0
    iput-object p1, p0, Lorg/briarproject/bramble/account/AccountManagerImpl;->databaseKey:Lorg/briarproject/bramble/api/crypto/SecretKey;

    const/4 p1, 0x1

    .line 169
    monitor-exit v0

    return p1

    .line 163
    :cond_1
    new-instance p1, Ljava/lang/AssertionError;

    const-string p2, "Already have a database key"

    invoke-direct {p1, p2}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw p1

    :catchall_0
    move-exception p1

    .line 170
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public deleteAccount()V
    .locals 3

    .line 182
    iget-object v0, p0, Lorg/briarproject/bramble/account/AccountManagerImpl;->stateChangeLock:Ljava/lang/Object;

    monitor-enter v0

    .line 183
    :try_start_0
    sget-object v1, Lorg/briarproject/bramble/account/AccountManagerImpl;->LOG:Ljava/util/logging/Logger;

    const-string v2, "Deleting account"

    invoke-virtual {v1, v2}, Ljava/util/logging/Logger;->info(Ljava/lang/String;)V

    .line 184
    iget-object v1, p0, Lorg/briarproject/bramble/account/AccountManagerImpl;->databaseConfig:Lorg/briarproject/bramble/api/db/DatabaseConfig;

    invoke-interface {v1}, Lorg/briarproject/bramble/api/db/DatabaseConfig;->getDatabaseKeyDirectory()Ljava/io/File;

    move-result-object v1

    invoke-static {v1}, Lorg/briarproject/bramble/util/IoUtils;->deleteFileOrDir(Ljava/io/File;)V

    .line 185
    iget-object v1, p0, Lorg/briarproject/bramble/account/AccountManagerImpl;->databaseConfig:Lorg/briarproject/bramble/api/db/DatabaseConfig;

    invoke-interface {v1}, Lorg/briarproject/bramble/api/db/DatabaseConfig;->getDatabaseDirectory()Ljava/io/File;

    move-result-object v1

    invoke-static {v1}, Lorg/briarproject/bramble/util/IoUtils;->deleteFileOrDir(Ljava/io/File;)V

    const/4 v1, 0x0

    .line 186
    iput-object v1, p0, Lorg/briarproject/bramble/account/AccountManagerImpl;->databaseKey:Lorg/briarproject/bramble/api/crypto/SecretKey;

    .line 187
    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public getDatabaseKey()Lorg/briarproject/bramble/api/crypto/SecretKey;
    .locals 1

    .line 68
    iget-object v0, p0, Lorg/briarproject/bramble/account/AccountManagerImpl;->databaseKey:Lorg/briarproject/bramble/api/crypto/SecretKey;

    return-object v0
.end method

.method public hasDatabaseKey()Z
    .locals 1

    .line 62
    iget-object v0, p0, Lorg/briarproject/bramble/account/AccountManagerImpl;->databaseKey:Lorg/briarproject/bramble/api/crypto/SecretKey;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method protected loadEncryptedDatabaseKey()Ljava/lang/String;
    .locals 3

    .line 74
    iget-object v0, p0, Lorg/briarproject/bramble/account/AccountManagerImpl;->dbKeyFile:Ljava/io/File;

    invoke-direct {p0, v0}, Lorg/briarproject/bramble/account/AccountManagerImpl;->readDbKeyFromFile(Ljava/io/File;)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_1

    .line 76
    sget-object v0, Lorg/briarproject/bramble/account/AccountManagerImpl;->LOG:Ljava/util/logging/Logger;

    const-string v1, "No database key in primary file"

    invoke-virtual {v0, v1}, Ljava/util/logging/Logger;->info(Ljava/lang/String;)V

    .line 77
    iget-object v0, p0, Lorg/briarproject/bramble/account/AccountManagerImpl;->dbKeyBackupFile:Ljava/io/File;

    invoke-direct {p0, v0}, Lorg/briarproject/bramble/account/AccountManagerImpl;->readDbKeyFromFile(Ljava/io/File;)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    .line 78
    sget-object v1, Lorg/briarproject/bramble/account/AccountManagerImpl;->LOG:Ljava/util/logging/Logger;

    const-string v2, "No database key in backup file"

    invoke-virtual {v1, v2}, Ljava/util/logging/Logger;->info(Ljava/lang/String;)V

    goto :goto_0

    .line 79
    :cond_0
    sget-object v1, Lorg/briarproject/bramble/account/AccountManagerImpl;->LOG:Ljava/util/logging/Logger;

    const-string v2, "Found database key in backup file"

    invoke-virtual {v1, v2}, Ljava/util/logging/Logger;->warning(Ljava/lang/String;)V

    goto :goto_0

    .line 81
    :cond_1
    sget-object v1, Lorg/briarproject/bramble/account/AccountManagerImpl;->LOG:Ljava/util/logging/Logger;

    const-string v2, "Found database key in primary file"

    invoke-virtual {v1, v2}, Ljava/util/logging/Logger;->info(Ljava/lang/String;)V

    :goto_0
    return-object v0
.end method

.method public signIn(Ljava/lang/String;)Z
    .locals 1

    .line 192
    iget-object v0, p0, Lorg/briarproject/bramble/account/AccountManagerImpl;->stateChangeLock:Ljava/lang/Object;

    monitor-enter v0

    .line 193
    :try_start_0
    invoke-direct {p0, p1}, Lorg/briarproject/bramble/account/AccountManagerImpl;->loadAndDecryptDatabaseKey(Ljava/lang/String;)Lorg/briarproject/bramble/api/crypto/SecretKey;

    move-result-object p1

    if-nez p1, :cond_0

    const/4 p1, 0x0

    .line 194
    monitor-exit v0

    return p1

    .line 195
    :cond_0
    iput-object p1, p0, Lorg/briarproject/bramble/account/AccountManagerImpl;->databaseKey:Lorg/briarproject/bramble/api/crypto/SecretKey;

    const/4 p1, 0x1

    .line 196
    monitor-exit v0

    return p1

    :catchall_0
    move-exception p1

    .line 197
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method protected storeEncryptedDatabaseKey(Ljava/lang/String;)Z
    .locals 3

    .line 107
    sget-object v0, Lorg/briarproject/bramble/account/AccountManagerImpl;->LOG:Ljava/util/logging/Logger;

    const-string v1, "Storing database key in file"

    invoke-virtual {v0, v1}, Ljava/util/logging/Logger;->info(Ljava/lang/String;)V

    .line 109
    iget-object v0, p0, Lorg/briarproject/bramble/account/AccountManagerImpl;->databaseConfig:Lorg/briarproject/bramble/api/db/DatabaseConfig;

    invoke-interface {v0}, Lorg/briarproject/bramble/api/db/DatabaseConfig;->getDatabaseKeyDirectory()Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 110
    sget-object v0, Lorg/briarproject/bramble/account/AccountManagerImpl;->LOG:Ljava/util/logging/Logger;

    const-string v1, "Created database key directory"

    invoke-virtual {v0, v1}, Ljava/util/logging/Logger;->info(Ljava/lang/String;)V

    .line 112
    :cond_0
    iget-object v0, p0, Lorg/briarproject/bramble/account/AccountManagerImpl;->dbKeyBackupFile:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lorg/briarproject/bramble/account/AccountManagerImpl;->dbKeyFile:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    if-nez v0, :cond_2

    .line 113
    iget-object v0, p0, Lorg/briarproject/bramble/account/AccountManagerImpl;->dbKeyBackupFile:Ljava/io/File;

    iget-object v1, p0, Lorg/briarproject/bramble/account/AccountManagerImpl;->dbKeyFile:Ljava/io/File;

    invoke-virtual {v0, v1}, Ljava/io/File;->renameTo(Ljava/io/File;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 114
    sget-object v0, Lorg/briarproject/bramble/account/AccountManagerImpl;->LOG:Ljava/util/logging/Logger;

    const-string v1, "Renamed old backup"

    invoke-virtual {v0, v1}, Ljava/util/logging/Logger;->info(Ljava/lang/String;)V

    goto :goto_0

    .line 115
    :cond_1
    sget-object v0, Lorg/briarproject/bramble/account/AccountManagerImpl;->LOG:Ljava/util/logging/Logger;

    const-string v1, "Failed to rename old backup"

    invoke-virtual {v0, v1}, Ljava/util/logging/Logger;->warning(Ljava/lang/String;)V

    :cond_2
    :goto_0
    const/4 v0, 0x0

    .line 119
    :try_start_0
    iget-object v1, p0, Lorg/briarproject/bramble/account/AccountManagerImpl;->dbKeyBackupFile:Ljava/io/File;

    invoke-direct {p0, p1, v1}, Lorg/briarproject/bramble/account/AccountManagerImpl;->writeDbKeyToFile(Ljava/lang/String;Ljava/io/File;)V

    .line 120
    sget-object v1, Lorg/briarproject/bramble/account/AccountManagerImpl;->LOG:Ljava/util/logging/Logger;

    const-string v2, "Stored database key in backup file"

    invoke-virtual {v1, v2}, Ljava/util/logging/Logger;->info(Ljava/lang/String;)V

    .line 122
    iget-object v1, p0, Lorg/briarproject/bramble/account/AccountManagerImpl;->dbKeyFile:Ljava/io/File;

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_4

    .line 123
    iget-object v1, p0, Lorg/briarproject/bramble/account/AccountManagerImpl;->dbKeyFile:Ljava/io/File;

    invoke-virtual {v1}, Ljava/io/File;->delete()Z

    move-result v1

    if-eqz v1, :cond_3

    sget-object v1, Lorg/briarproject/bramble/account/AccountManagerImpl;->LOG:Ljava/util/logging/Logger;

    const-string v2, "Deleted primary file"

    invoke-virtual {v1, v2}, Ljava/util/logging/Logger;->info(Ljava/lang/String;)V

    goto :goto_1

    .line 124
    :cond_3
    sget-object v1, Lorg/briarproject/bramble/account/AccountManagerImpl;->LOG:Ljava/util/logging/Logger;

    const-string v2, "Failed to delete primary file"

    invoke-virtual {v1, v2}, Ljava/util/logging/Logger;->warning(Ljava/lang/String;)V

    .line 127
    :cond_4
    :goto_1
    iget-object v1, p0, Lorg/briarproject/bramble/account/AccountManagerImpl;->dbKeyBackupFile:Ljava/io/File;

    iget-object v2, p0, Lorg/briarproject/bramble/account/AccountManagerImpl;->dbKeyFile:Ljava/io/File;

    invoke-virtual {v1, v2}, Ljava/io/File;->renameTo(Ljava/io/File;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 128
    sget-object v1, Lorg/briarproject/bramble/account/AccountManagerImpl;->LOG:Ljava/util/logging/Logger;

    const-string v2, "Renamed backup file to primary"

    invoke-virtual {v1, v2}, Ljava/util/logging/Logger;->info(Ljava/lang/String;)V

    .line 134
    iget-object v1, p0, Lorg/briarproject/bramble/account/AccountManagerImpl;->dbKeyBackupFile:Ljava/io/File;

    invoke-direct {p0, p1, v1}, Lorg/briarproject/bramble/account/AccountManagerImpl;->writeDbKeyToFile(Ljava/lang/String;Ljava/io/File;)V

    .line 135
    sget-object p1, Lorg/briarproject/bramble/account/AccountManagerImpl;->LOG:Ljava/util/logging/Logger;

    const-string v1, "Stored second copy of database key in backup file"

    invoke-virtual {p1, v1}, Ljava/util/logging/Logger;->info(Ljava/lang/String;)V

    const/4 p1, 0x1

    return p1

    .line 130
    :cond_5
    sget-object p1, Lorg/briarproject/bramble/account/AccountManagerImpl;->LOG:Ljava/util/logging/Logger;

    const-string v1, "Failed to rename backup file to primary"

    invoke-virtual {p1, v1}, Ljava/util/logging/Logger;->warning(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    :catch_0
    move-exception p1

    .line 138
    sget-object v1, Lorg/briarproject/bramble/account/AccountManagerImpl;->LOG:Ljava/util/logging/Logger;

    sget-object v2, Ljava/util/logging/Level;->WARNING:Ljava/util/logging/Level;

    invoke-static {v1, v2, p1}, Lorg/briarproject/bramble/util/LogUtils;->logException(Ljava/util/logging/Logger;Ljava/util/logging/Level;Ljava/lang/Throwable;)V

    return v0
.end method
