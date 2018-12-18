.class public Lorg/h2/engine/ConnectionInfo;
.super Ljava/lang/Object;
.source "ConnectionInfo.java"

# interfaces
.implements Ljava/lang/Cloneable;


# static fields
.field private static final KNOWN_SETTINGS:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private fileEncryptionKey:[B

.field private filePasswordHash:[B

.field private name:Ljava/lang/String;

.field private nameNormalized:Ljava/lang/String;

.field private originalURL:Ljava/lang/String;

.field private persistent:Z

.field private prop:Ljava/util/Properties;

.field private remote:Z

.field private ssl:Z

.field private unnamed:Z

.field private url:Ljava/lang/String;

.field private user:Ljava/lang/String;

.field private userPasswordHash:[B


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .line 31
    invoke-static {}, Lorg/h2/util/New;->hashSet()Ljava/util/HashSet;

    move-result-object v0

    sput-object v0, Lorg/h2/engine/ConnectionInfo;->KNOWN_SETTINGS:Ljava/util/HashSet;

    .line 95
    invoke-static {}, Lorg/h2/command/dml/SetTypes;->getTypes()Ljava/util/ArrayList;

    move-result-object v0

    .line 96
    sget-object v1, Lorg/h2/engine/ConnectionInfo;->KNOWN_SETTINGS:Ljava/util/HashSet;

    .line 97
    invoke-virtual {v1, v0}, Ljava/util/HashSet;->addAll(Ljava/util/Collection;)Z

    const/16 v0, 0x15

    .line 98
    new-array v0, v0, [Ljava/lang/String;

    const-string v2, "ACCESS_MODE_DATA"

    const/4 v3, 0x0

    aput-object v2, v0, v3

    const-string v2, "AUTOCOMMIT"

    const/4 v4, 0x1

    aput-object v2, v0, v4

    const-string v2, "CIPHER"

    const/4 v4, 0x2

    aput-object v2, v0, v4

    const-string v2, "CREATE"

    const/4 v4, 0x3

    aput-object v2, v0, v4

    const-string v2, "CACHE_TYPE"

    const/4 v4, 0x4

    aput-object v2, v0, v4

    const-string v2, "FILE_LOCK"

    const/4 v4, 0x5

    aput-object v2, v0, v4

    const-string v2, "IGNORE_UNKNOWN_SETTINGS"

    const/4 v4, 0x6

    aput-object v2, v0, v4

    const-string v2, "IFEXISTS"

    const/4 v4, 0x7

    aput-object v2, v0, v4

    const-string v2, "INIT"

    const/16 v4, 0x8

    aput-object v2, v0, v4

    const-string v2, "PASSWORD"

    const/16 v4, 0x9

    aput-object v2, v0, v4

    const-string v2, "RECOVER"

    const/16 v4, 0xa

    aput-object v2, v0, v4

    const-string v2, "RECOVER_TEST"

    const/16 v4, 0xb

    aput-object v2, v0, v4

    const-string v2, "USER"

    const/16 v4, 0xc

    aput-object v2, v0, v4

    const-string v2, "AUTO_SERVER"

    const/16 v4, 0xd

    aput-object v2, v0, v4

    const-string v2, "AUTO_SERVER_PORT"

    const/16 v4, 0xe

    aput-object v2, v0, v4

    const-string v2, "NO_UPGRADE"

    const/16 v4, 0xf

    aput-object v2, v0, v4

    const-string v2, "AUTO_RECONNECT"

    const/16 v4, 0x10

    aput-object v2, v0, v4

    const-string v2, "OPEN_NEW"

    const/16 v4, 0x11

    aput-object v2, v0, v4

    const-string v2, "PAGE_SIZE"

    const/16 v4, 0x12

    aput-object v2, v0, v4

    const-string v2, "PASSWORD_HASH"

    const/16 v4, 0x13

    aput-object v2, v0, v4

    const-string v2, "JMX"

    const/16 v4, 0x14

    aput-object v2, v0, v4

    .line 103
    array-length v2, v0

    :goto_0
    if-ge v3, v2, :cond_1

    aget-object v4, v0, v3

    .line 104
    sget-boolean v5, Lorg/h2/engine/SysProperties;->CHECK:Z

    if-eqz v5, :cond_0

    invoke-virtual {v1, v4}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 105
    invoke-static {v4}, Lorg/h2/message/DbException;->throwInternalError(Ljava/lang/String;)Ljava/lang/RuntimeException;

    .line 107
    :cond_0
    invoke-virtual {v1, v4}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 2

    .line 57
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 33
    new-instance v0, Ljava/util/Properties;

    invoke-direct {v0}, Ljava/util/Properties;-><init>()V

    iput-object v0, p0, Lorg/h2/engine/ConnectionInfo;->prop:Ljava/util/Properties;

    .line 58
    iput-object p1, p0, Lorg/h2/engine/ConnectionInfo;->name:Ljava/lang/String;

    .line 59
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "jdbc:h2:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lorg/h2/engine/ConnectionInfo;->url:Ljava/lang/String;

    .line 60
    invoke-direct {p0}, Lorg/h2/engine/ConnectionInfo;->parseName()V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/util/Properties;)V
    .locals 2

    .line 69
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 33
    new-instance v0, Ljava/util/Properties;

    invoke-direct {v0}, Ljava/util/Properties;-><init>()V

    iput-object v0, p0, Lorg/h2/engine/ConnectionInfo;->prop:Ljava/util/Properties;

    .line 70
    invoke-static {p1}, Lorg/h2/engine/ConnectionInfo;->remapURL(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 71
    iput-object p1, p0, Lorg/h2/engine/ConnectionInfo;->originalURL:Ljava/lang/String;

    const-string v0, "jdbc:h2:"

    .line 72
    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 75
    iput-object p1, p0, Lorg/h2/engine/ConnectionInfo;->url:Ljava/lang/String;

    .line 76
    invoke-direct {p0, p2}, Lorg/h2/engine/ConnectionInfo;->readProperties(Ljava/util/Properties;)V

    .line 77
    invoke-direct {p0}, Lorg/h2/engine/ConnectionInfo;->readSettingsFromURL()V

    const-string p1, "USER"

    const-string p2, ""

    .line 78
    invoke-virtual {p0, p1, p2}, Lorg/h2/engine/ConnectionInfo;->removeProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lorg/h2/engine/ConnectionInfo;->setUserName(Ljava/lang/String;)V

    .line 79
    invoke-direct {p0}, Lorg/h2/engine/ConnectionInfo;->convertPasswords()V

    .line 80
    iget-object p1, p0, Lorg/h2/engine/ConnectionInfo;->url:Ljava/lang/String;

    const-string p2, "jdbc:h2:"

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result p2

    invoke-virtual {p1, p2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lorg/h2/engine/ConnectionInfo;->name:Ljava/lang/String;

    .line 81
    invoke-direct {p0}, Lorg/h2/engine/ConnectionInfo;->parseName()V

    const-string p1, "RECOVER_TEST"

    const/4 p2, 0x0

    .line 82
    invoke-virtual {p0, p1, p2}, Lorg/h2/engine/ConnectionInfo;->removeProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 84
    invoke-static {}, Lorg/h2/store/fs/FilePathRec;->register()V

    :try_start_0
    const-string p2, "org.h2.store.RecoverTester.init"

    const/4 v0, 0x1

    .line 86
    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    invoke-static {p2, v0}, Lorg/h2/util/Utils;->callStaticMethod(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 90
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "rec:"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p2, p0, Lorg/h2/engine/ConnectionInfo;->name:Ljava/lang/String;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lorg/h2/engine/ConnectionInfo;->name:Ljava/lang/String;

    goto :goto_0

    :catch_0
    move-exception p1

    .line 88
    invoke-static {p1}, Lorg/h2/message/DbException;->convert(Ljava/lang/Throwable;)Lorg/h2/message/DbException;

    move-result-object p1

    throw p1

    :cond_0
    :goto_0
    return-void

    :cond_1
    const-string p2, "url"

    .line 73
    invoke-static {p2, p1}, Lorg/h2/message/DbException;->getInvalidValueException(Ljava/lang/String;Ljava/lang/Object;)Lorg/h2/message/DbException;

    move-result-object p1

    throw p1
.end method

.method private convertPasswords()V
    .locals 8

    .line 296
    invoke-direct {p0}, Lorg/h2/engine/ConnectionInfo;->removePassword()[C

    move-result-object v0

    const-string v1, "PASSWORD_HASH"

    const/4 v2, 0x0

    .line 297
    invoke-virtual {p0, v1, v2}, Lorg/h2/engine/ConnectionInfo;->removeProperty(Ljava/lang/String;Z)Z

    move-result v1

    const-string v3, "CIPHER"

    const/4 v4, 0x0

    .line 298
    invoke-virtual {p0, v3, v4}, Lorg/h2/engine/ConnectionInfo;->getProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_3

    const/4 v3, -0x1

    .line 301
    array-length v4, v0

    const/4 v5, 0x0

    :goto_0
    if-ge v5, v4, :cond_1

    .line 302
    aget-char v6, v0, v5

    const/16 v7, 0x20

    if-ne v6, v7, :cond_0

    move v3, v5

    goto :goto_1

    :cond_0
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    :cond_1
    :goto_1
    if-ltz v3, :cond_2

    .line 310
    array-length v4, v0

    sub-int/2addr v4, v3

    add-int/lit8 v4, v4, -0x1

    new-array v4, v4, [C

    .line 311
    new-array v5, v3, [C

    add-int/lit8 v6, v3, 0x1

    .line 312
    array-length v7, v4

    invoke-static {v0, v6, v4, v2, v7}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 313
    invoke-static {v0, v2, v5, v2, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 314
    invoke-static {v0, v2}, Ljava/util/Arrays;->fill([CC)V

    .line 316
    invoke-static {v5}, Lorg/h2/store/fs/FilePathEncrypt;->getPasswordBytes([C)[B

    move-result-object v0

    iput-object v0, p0, Lorg/h2/engine/ConnectionInfo;->fileEncryptionKey:[B

    const-string v0, "file"

    .line 317
    invoke-static {v1, v0, v5}, Lorg/h2/engine/ConnectionInfo;->hashPassword(ZLjava/lang/String;[C)[B

    move-result-object v0

    iput-object v0, p0, Lorg/h2/engine/ConnectionInfo;->filePasswordHash:[B

    move-object v0, v4

    goto :goto_2

    :cond_2
    const v0, 0x15fc2

    .line 308
    invoke-static {v0}, Lorg/h2/message/DbException;->get(I)Lorg/h2/message/DbException;

    move-result-object v0

    throw v0

    .line 319
    :cond_3
    :goto_2
    iget-object v2, p0, Lorg/h2/engine/ConnectionInfo;->user:Ljava/lang/String;

    invoke-static {v1, v2, v0}, Lorg/h2/engine/ConnectionInfo;->hashPassword(ZLjava/lang/String;[C)[B

    move-result-object v0

    iput-object v0, p0, Lorg/h2/engine/ConnectionInfo;->userPasswordHash:[B

    return-void
.end method

.method private static hashPassword(ZLjava/lang/String;[C)[B
    .locals 0

    if-eqz p0, :cond_0

    .line 325
    new-instance p0, Ljava/lang/String;

    invoke-direct {p0, p2}, Ljava/lang/String;-><init>([C)V

    invoke-static {p0}, Lorg/h2/util/StringUtils;->convertHexToBytes(Ljava/lang/String;)[B

    move-result-object p0

    return-object p0

    .line 327
    :cond_0
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p0

    if-nez p0, :cond_1

    array-length p0, p2

    if-nez p0, :cond_1

    const/4 p0, 0x0

    .line 328
    new-array p0, p0, [B

    return-object p0

    .line 330
    :cond_1
    invoke-static {p1, p2}, Lorg/h2/security/SHA256;->getKeyPasswordHash(Ljava/lang/String;[C)[B

    move-result-object p0

    return-object p0
.end method

.method private static isKnownSetting(Ljava/lang/String;)Z
    .locals 1

    .line 112
    sget-object v0, Lorg/h2/engine/ConnectionInfo;->KNOWN_SETTINGS:Ljava/util/HashSet;

    invoke-virtual {v0, p0}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method private parseName()V
    .locals 3

    const-string v0, "."

    .line 126
    iget-object v1, p0, Lorg/h2/engine/ConnectionInfo;->name:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "mem:"

    .line 127
    iput-object v0, p0, Lorg/h2/engine/ConnectionInfo;->name:Ljava/lang/String;

    .line 129
    :cond_0
    iget-object v0, p0, Lorg/h2/engine/ConnectionInfo;->name:Ljava/lang/String;

    const-string v1, "tcp:"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_1

    .line 130
    iput-boolean v1, p0, Lorg/h2/engine/ConnectionInfo;->remote:Z

    .line 131
    iget-object v0, p0, Lorg/h2/engine/ConnectionInfo;->name:Ljava/lang/String;

    const-string v1, "tcp:"

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/h2/engine/ConnectionInfo;->name:Ljava/lang/String;

    goto :goto_0

    .line 132
    :cond_1
    iget-object v0, p0, Lorg/h2/engine/ConnectionInfo;->name:Ljava/lang/String;

    const-string v2, "ssl:"

    invoke-virtual {v0, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 133
    iput-boolean v1, p0, Lorg/h2/engine/ConnectionInfo;->remote:Z

    .line 134
    iput-boolean v1, p0, Lorg/h2/engine/ConnectionInfo;->ssl:Z

    .line 135
    iget-object v0, p0, Lorg/h2/engine/ConnectionInfo;->name:Ljava/lang/String;

    const-string v1, "ssl:"

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/h2/engine/ConnectionInfo;->name:Ljava/lang/String;

    goto :goto_0

    .line 136
    :cond_2
    iget-object v0, p0, Lorg/h2/engine/ConnectionInfo;->name:Ljava/lang/String;

    const-string v2, "mem:"

    invoke-virtual {v0, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    const/4 v0, 0x0

    .line 137
    iput-boolean v0, p0, Lorg/h2/engine/ConnectionInfo;->persistent:Z

    const-string v0, "mem:"

    .line 138
    iget-object v2, p0, Lorg/h2/engine/ConnectionInfo;->name:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 139
    iput-boolean v1, p0, Lorg/h2/engine/ConnectionInfo;->unnamed:Z

    goto :goto_0

    .line 141
    :cond_3
    iget-object v0, p0, Lorg/h2/engine/ConnectionInfo;->name:Ljava/lang/String;

    const-string v2, "file:"

    invoke-virtual {v0, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 142
    iget-object v0, p0, Lorg/h2/engine/ConnectionInfo;->name:Ljava/lang/String;

    const-string v2, "file:"

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/h2/engine/ConnectionInfo;->name:Ljava/lang/String;

    .line 143
    iput-boolean v1, p0, Lorg/h2/engine/ConnectionInfo;->persistent:Z

    goto :goto_0

    .line 145
    :cond_4
    iput-boolean v1, p0, Lorg/h2/engine/ConnectionInfo;->persistent:Z

    .line 147
    :cond_5
    :goto_0
    iget-boolean v0, p0, Lorg/h2/engine/ConnectionInfo;->persistent:Z

    if-eqz v0, :cond_7

    iget-boolean v0, p0, Lorg/h2/engine/ConnectionInfo;->remote:Z

    if-nez v0, :cond_7

    const-string v0, "/"

    .line 148
    sget-object v1, Lorg/h2/engine/SysProperties;->FILE_SEPARATOR:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/16 v1, 0x2f

    const/16 v2, 0x5c

    if-eqz v0, :cond_6

    .line 149
    iget-object v0, p0, Lorg/h2/engine/ConnectionInfo;->name:Ljava/lang/String;

    invoke-virtual {v0, v2, v1}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/h2/engine/ConnectionInfo;->name:Ljava/lang/String;

    goto :goto_1

    .line 151
    :cond_6
    iget-object v0, p0, Lorg/h2/engine/ConnectionInfo;->name:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/h2/engine/ConnectionInfo;->name:Ljava/lang/String;

    :cond_7
    :goto_1
    return-void
.end method

.method private readProperties(Ljava/util/Properties;)V
    .locals 7

    .line 228
    invoke-virtual {p1}, Ljava/util/Properties;->size()I

    move-result v0

    new-array v0, v0, [Ljava/lang/Object;

    .line 229
    invoke-virtual {p1}, Ljava/util/Properties;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1, v0}, Ljava/util/Set;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    .line 231
    array-length v1, v0

    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v1, :cond_4

    aget-object v4, v0, v3

    .line 232
    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lorg/h2/util/StringUtils;->toUpperEnglish(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 233
    iget-object v6, p0, Lorg/h2/engine/ConnectionInfo;->prop:Ljava/util/Properties;

    invoke-virtual {v6, v5}, Ljava/util/Properties;->containsKey(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_3

    .line 236
    invoke-virtual {p1, v4}, Ljava/util/Properties;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    .line 237
    invoke-static {v5}, Lorg/h2/engine/ConnectionInfo;->isKnownSetting(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 238
    iget-object v6, p0, Lorg/h2/engine/ConnectionInfo;->prop:Ljava/util/Properties;

    invoke-virtual {v6, v5, v4}, Ljava/util/Properties;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    :cond_0
    if-nez v2, :cond_1

    .line 241
    invoke-virtual {p0}, Lorg/h2/engine/ConnectionInfo;->getDbSettings()Lorg/h2/engine/DbSettings;

    move-result-object v2

    .line 243
    :cond_1
    invoke-virtual {v2, v5}, Lorg/h2/engine/DbSettings;->containsKey(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 244
    iget-object v6, p0, Lorg/h2/engine/ConnectionInfo;->prop:Ljava/util/Properties;

    invoke-virtual {v6, v5, v4}, Ljava/util/Properties;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_2
    :goto_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_3
    const p1, 0x15fd2

    .line 234
    invoke-static {p1, v5}, Lorg/h2/message/DbException;->get(ILjava/lang/String;)Lorg/h2/message/DbException;

    move-result-object p1

    throw p1

    :cond_4
    return-void
.end method

.method private readSettingsFromURL()V
    .locals 8

    .line 251
    invoke-static {}, Lorg/h2/engine/DbSettings;->getDefaultSettings()Lorg/h2/engine/DbSettings;

    move-result-object v0

    .line 252
    iget-object v1, p0, Lorg/h2/engine/ConnectionInfo;->url:Ljava/lang/String;

    const/16 v2, 0x3b

    invoke-virtual {v1, v2}, Ljava/lang/String;->indexOf(I)I

    move-result v1

    if-ltz v1, :cond_6

    .line 254
    iget-object v3, p0, Lorg/h2/engine/ConnectionInfo;->url:Ljava/lang/String;

    add-int/lit8 v4, v1, 0x1

    invoke-virtual {v3, v4}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v3

    .line 255
    iget-object v4, p0, Lorg/h2/engine/ConnectionInfo;->url:Ljava/lang/String;

    const/4 v5, 0x0

    invoke-virtual {v4, v5, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lorg/h2/engine/ConnectionInfo;->url:Ljava/lang/String;

    .line 256
    invoke-static {v3, v2, v5}, Lorg/h2/util/StringUtils;->arraySplit(Ljava/lang/String;CZ)[Ljava/lang/String;

    move-result-object v1

    .line 257
    array-length v2, v1

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_6

    aget-object v4, v1, v3

    .line 258
    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v6

    if-nez v6, :cond_0

    goto :goto_3

    :cond_0
    const/16 v6, 0x3d

    .line 261
    invoke-virtual {v4, v6}, Ljava/lang/String;->indexOf(I)I

    move-result v6

    if-ltz v6, :cond_5

    add-int/lit8 v7, v6, 0x1

    .line 265
    invoke-virtual {v4, v7}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v7

    .line 266
    invoke-virtual {v4, v5, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    .line 267
    invoke-static {v4}, Lorg/h2/util/StringUtils;->toUpperEnglish(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 268
    invoke-static {v4}, Lorg/h2/engine/ConnectionInfo;->isKnownSetting(Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_2

    invoke-virtual {v0, v4}, Lorg/h2/engine/DbSettings;->containsKey(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_1

    goto :goto_1

    :cond_1
    const v0, 0x16001

    .line 269
    invoke-static {v0, v4}, Lorg/h2/message/DbException;->get(ILjava/lang/String;)Lorg/h2/message/DbException;

    move-result-object v0

    throw v0

    .line 271
    :cond_2
    :goto_1
    iget-object v6, p0, Lorg/h2/engine/ConnectionInfo;->prop:Ljava/util/Properties;

    invoke-virtual {v6, v4}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    if-eqz v6, :cond_4

    .line 272
    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_3

    goto :goto_2

    :cond_3
    const v0, 0x15fd2

    .line 273
    invoke-static {v0, v4}, Lorg/h2/message/DbException;->get(ILjava/lang/String;)Lorg/h2/message/DbException;

    move-result-object v0

    throw v0

    .line 275
    :cond_4
    :goto_2
    iget-object v6, p0, Lorg/h2/engine/ConnectionInfo;->prop:Ljava/util/Properties;

    invoke-virtual {v6, v4, v7}, Ljava/util/Properties;->setProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    :goto_3
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 263
    :cond_5
    invoke-virtual {p0}, Lorg/h2/engine/ConnectionInfo;->getFormatException()Lorg/h2/message/DbException;

    move-result-object v0

    throw v0

    :cond_6
    return-void
.end method

.method private static remapURL(Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    .line 654
    sget-object v0, Lorg/h2/engine/SysProperties;->URL_MAP:Ljava/lang/String;

    if-eqz v0, :cond_1

    .line 655
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_1

    .line 658
    :try_start_0
    invoke-static {v0}, Lorg/h2/util/SortedProperties;->loadProperties(Ljava/lang/String;)Lorg/h2/util/SortedProperties;

    move-result-object v1

    .line 659
    invoke-virtual {v1, p0}, Lorg/h2/util/SortedProperties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_0

    const-string v2, ""

    .line 661
    invoke-virtual {v1, p0, v2}, Lorg/h2/util/SortedProperties;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 662
    invoke-virtual {v1, v0}, Lorg/h2/util/SortedProperties;->store(Ljava/lang/String;)V

    goto :goto_0

    .line 664
    :cond_0
    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    .line 665
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    if-lez v1, :cond_1

    return-object v0

    :catch_0
    move-exception p0

    .line 670
    invoke-static {p0}, Lorg/h2/message/DbException;->convert(Ljava/lang/Throwable;)Lorg/h2/message/DbException;

    move-result-object p0

    throw p0

    :cond_1
    :goto_0
    return-object p0
.end method

.method private removePassword()[C
    .locals 2

    .line 281
    iget-object v0, p0, Lorg/h2/engine/ConnectionInfo;->prop:Ljava/util/Properties;

    const-string v1, "PASSWORD"

    invoke-virtual {v0, v1}, Ljava/util/Properties;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    .line 283
    new-array v0, v0, [C

    return-object v0

    .line 284
    :cond_0
    instance-of v1, v0, [C

    if-eqz v1, :cond_1

    .line 285
    check-cast v0, [C

    return-object v0

    .line 287
    :cond_1
    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->toCharArray()[C

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public bridge synthetic clone()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    .line 30
    invoke-virtual {p0}, Lorg/h2/engine/ConnectionInfo;->clone()Lorg/h2/engine/ConnectionInfo;

    move-result-object v0

    return-object v0
.end method

.method public clone()Lorg/h2/engine/ConnectionInfo;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    .line 117
    invoke-super {p0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/h2/engine/ConnectionInfo;

    .line 118
    iget-object v1, p0, Lorg/h2/engine/ConnectionInfo;->prop:Ljava/util/Properties;

    invoke-virtual {v1}, Ljava/util/Properties;->clone()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Properties;

    iput-object v1, v0, Lorg/h2/engine/ConnectionInfo;->prop:Ljava/util/Properties;

    .line 119
    iget-object v1, p0, Lorg/h2/engine/ConnectionInfo;->filePasswordHash:[B

    invoke-static {v1}, Lorg/h2/util/Utils;->cloneByteArray([B)[B

    move-result-object v1

    iput-object v1, v0, Lorg/h2/engine/ConnectionInfo;->filePasswordHash:[B

    .line 120
    iget-object v1, p0, Lorg/h2/engine/ConnectionInfo;->fileEncryptionKey:[B

    invoke-static {v1}, Lorg/h2/util/Utils;->cloneByteArray([B)[B

    move-result-object v1

    iput-object v1, v0, Lorg/h2/engine/ConnectionInfo;->fileEncryptionKey:[B

    .line 121
    iget-object v1, p0, Lorg/h2/engine/ConnectionInfo;->userPasswordHash:[B

    invoke-static {v1}, Lorg/h2/util/Utils;->cloneByteArray([B)[B

    move-result-object v1

    iput-object v1, v0, Lorg/h2/engine/ConnectionInfo;->userPasswordHash:[B

    return-object v0
.end method

.method public getDbSettings()Lorg/h2/engine/DbSettings;
    .locals 5

    .line 642
    invoke-static {}, Lorg/h2/engine/DbSettings;->getDefaultSettings()Lorg/h2/engine/DbSettings;

    move-result-object v0

    .line 643
    invoke-static {}, Lorg/h2/util/New;->hashMap()Ljava/util/HashMap;

    move-result-object v1

    .line 644
    iget-object v2, p0, Lorg/h2/engine/ConnectionInfo;->prop:Ljava/util/Properties;

    invoke-virtual {v2}, Ljava/util/Properties;->keySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    .line 645
    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    .line 646
    invoke-static {v3}, Lorg/h2/engine/ConnectionInfo;->isKnownSetting(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_0

    invoke-virtual {v0, v3}, Lorg/h2/engine/DbSettings;->containsKey(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 647
    iget-object v4, p0, Lorg/h2/engine/ConnectionInfo;->prop:Ljava/util/Properties;

    invoke-virtual {v4, v3}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 650
    :cond_1
    invoke-static {v1}, Lorg/h2/engine/DbSettings;->getInstance(Ljava/util/HashMap;)Lorg/h2/engine/DbSettings;

    move-result-object v0

    return-object v0
.end method

.method getFileEncryptionKey()[B
    .locals 1

    .line 433
    iget-object v0, p0, Lorg/h2/engine/ConnectionInfo;->fileEncryptionKey:[B

    return-object v0
.end method

.method public getFilePasswordHash()[B
    .locals 1

    .line 429
    iget-object v0, p0, Lorg/h2/engine/ConnectionInfo;->filePasswordHash:[B

    return-object v0
.end method

.method getFormatException()Lorg/h2/message/DbException;
    .locals 3

    const-string v0, "jdbc:h2:{ {.|mem:}[name] | [file:]fileName | {tcp|ssl}:[//]server[:port][,server2[:port]]/name }[;key=value...]"

    const/4 v1, 0x2

    .line 627
    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    aput-object v0, v1, v2

    iget-object v0, p0, Lorg/h2/engine/ConnectionInfo;->url:Ljava/lang/String;

    const/4 v2, 0x1

    aput-object v0, v1, v2

    const v0, 0x15fbe

    invoke-static {v0, v1}, Lorg/h2/message/DbException;->get(I[Ljava/lang/String;)Lorg/h2/message/DbException;

    move-result-object v0

    return-object v0
.end method

.method getIntProperty(II)I
    .locals 1

    .line 530
    invoke-static {p1}, Lorg/h2/command/dml/SetTypes;->getTypeName(I)Ljava/lang/String;

    move-result-object p1

    const/4 v0, 0x0

    .line 531
    invoke-virtual {p0, p1, v0}, Lorg/h2/engine/ConnectionInfo;->getProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    if-nez p1, :cond_0

    move p1, p2

    goto :goto_0

    .line 533
    :cond_0
    :try_start_0
    invoke-static {p1}, Ljava/lang/Integer;->decode(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return p1

    :catch_0
    return p2
.end method

.method getKeys()[Ljava/lang/String;
    .locals 2

    .line 460
    iget-object v0, p0, Lorg/h2/engine/ConnectionInfo;->prop:Ljava/util/Properties;

    invoke-virtual {v0}, Ljava/util/Properties;->size()I

    move-result v0

    new-array v0, v0, [Ljava/lang/String;

    .line 461
    iget-object v1, p0, Lorg/h2/engine/ConnectionInfo;->prop:Ljava/util/Properties;

    invoke-virtual {v1}, Ljava/util/Properties;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1, v0}, Ljava/util/Set;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 4

    .line 385
    iget-boolean v0, p0, Lorg/h2/engine/ConnectionInfo;->persistent:Z

    if-nez v0, :cond_0

    .line 386
    iget-object v0, p0, Lorg/h2/engine/ConnectionInfo;->name:Ljava/lang/String;

    return-object v0

    .line 388
    :cond_0
    iget-object v0, p0, Lorg/h2/engine/ConnectionInfo;->nameNormalized:Ljava/lang/String;

    if-nez v0, :cond_5

    .line 389
    sget-boolean v0, Lorg/h2/engine/SysProperties;->IMPLICIT_RELATIVE_PATH:Z

    if-nez v0, :cond_2

    .line 390
    iget-object v0, p0, Lorg/h2/engine/ConnectionInfo;->name:Ljava/lang/String;

    invoke-static {v0}, Lorg/h2/store/fs/FileUtils;->isAbsolute(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 391
    iget-object v0, p0, Lorg/h2/engine/ConnectionInfo;->name:Ljava/lang/String;

    const-string v1, "./"

    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    if-gez v0, :cond_2

    iget-object v0, p0, Lorg/h2/engine/ConnectionInfo;->name:Ljava/lang/String;

    const-string v1, ".\\"

    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    if-gez v0, :cond_2

    iget-object v0, p0, Lorg/h2/engine/ConnectionInfo;->name:Ljava/lang/String;

    const-string v1, ":/"

    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    if-gez v0, :cond_2

    iget-object v0, p0, Lorg/h2/engine/ConnectionInfo;->name:Ljava/lang/String;

    const-string v1, ":\\"

    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    if-ltz v0, :cond_1

    goto :goto_0

    :cond_1
    const v0, 0x15f9b

    .line 400
    iget-object v1, p0, Lorg/h2/engine/ConnectionInfo;->originalURL:Ljava/lang/String;

    invoke-static {v0, v1}, Lorg/h2/message/DbException;->get(ILjava/lang/String;)Lorg/h2/message/DbException;

    move-result-object v0

    throw v0

    :cond_2
    :goto_0
    const-string v0, ".h2.db"

    .line 408
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lorg/h2/engine/ConnectionInfo;->name:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lorg/h2/store/fs/FileUtils;->exists(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 409
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lorg/h2/engine/ConnectionInfo;->name:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lorg/h2/store/fs/FileUtils;->toRealPath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    goto :goto_1

    :cond_3
    const-string v0, ".mv.db"

    .line 412
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lorg/h2/engine/ConnectionInfo;->name:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lorg/h2/store/fs/FileUtils;->toRealPath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 414
    :goto_1
    invoke-static {v1}, Lorg/h2/store/fs/FileUtils;->getName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 415
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v3

    add-int/lit8 v3, v3, 0x1

    if-lt v2, v3, :cond_4

    const/4 v2, 0x0

    .line 418
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v3

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    sub-int/2addr v3, v0

    invoke-virtual {v1, v2, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/h2/engine/ConnectionInfo;->nameNormalized:Ljava/lang/String;

    goto :goto_2

    :cond_4
    const v0, 0x1601a

    .line 416
    iget-object v1, p0, Lorg/h2/engine/ConnectionInfo;->name:Ljava/lang/String;

    invoke-static {v0, v1}, Lorg/h2/message/DbException;->get(ILjava/lang/String;)Lorg/h2/message/DbException;

    move-result-object v0

    throw v0

    .line 420
    :cond_5
    :goto_2
    iget-object v0, p0, Lorg/h2/engine/ConnectionInfo;->nameNormalized:Ljava/lang/String;

    return-object v0
.end method

.method public getOriginalURL()Ljava/lang/String;
    .locals 1

    .line 608
    iget-object v0, p0, Lorg/h2/engine/ConnectionInfo;->originalURL:Ljava/lang/String;

    return-object v0
.end method

.method getProperty(Ljava/lang/String;I)I
    .locals 1

    .line 487
    sget-boolean v0, Lorg/h2/engine/SysProperties;->CHECK:Z

    if-eqz v0, :cond_0

    invoke-static {p1}, Lorg/h2/engine/ConnectionInfo;->isKnownSetting(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 488
    invoke-static {p1}, Lorg/h2/message/DbException;->throwInternalError(Ljava/lang/String;)Ljava/lang/RuntimeException;

    .line 490
    :cond_0
    invoke-virtual {p0, p1}, Lorg/h2/engine/ConnectionInfo;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    if-nez p1, :cond_1

    goto :goto_0

    .line 491
    :cond_1
    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p2

    :goto_0
    return p2
.end method

.method getProperty(ILjava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 517
    invoke-static {p1}, Lorg/h2/command/dml/SetTypes;->getTypeName(I)Ljava/lang/String;

    move-result-object p1

    .line 518
    invoke-virtual {p0, p1}, Lorg/h2/engine/ConnectionInfo;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    if-nez p1, :cond_0

    move-object p1, p2

    :cond_0
    return-object p1
.end method

.method getProperty(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .line 472
    iget-object v0, p0, Lorg/h2/engine/ConnectionInfo;->prop:Ljava/util/Properties;

    invoke-virtual {v0, p1}, Ljava/util/Properties;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 473
    instance-of v0, p1, Ljava/lang/String;

    if-nez v0, :cond_0

    goto :goto_0

    .line 476
    :cond_0
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1

    :cond_1
    :goto_0
    const/4 p1, 0x0

    return-object p1
.end method

.method public getProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .line 502
    sget-boolean v0, Lorg/h2/engine/SysProperties;->CHECK:Z

    if-eqz v0, :cond_0

    invoke-static {p1}, Lorg/h2/engine/ConnectionInfo;->isKnownSetting(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 503
    invoke-static {p1}, Lorg/h2/message/DbException;->throwInternalError(Ljava/lang/String;)Ljava/lang/RuntimeException;

    .line 505
    :cond_0
    invoke-virtual {p0, p1}, Lorg/h2/engine/ConnectionInfo;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    if-nez p1, :cond_1

    move-object p1, p2

    :cond_1
    return-object p1
.end method

.method getProperty(Ljava/lang/String;Z)Z
    .locals 2

    const/4 v0, 0x0

    .line 341
    invoke-virtual {p0, p1, v0}, Lorg/h2/engine/ConnectionInfo;->getProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    if-nez p1, :cond_0

    return p2

    .line 346
    :cond_0
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p2

    const/4 v0, 0x1

    if-ne p2, v0, :cond_2

    const/4 p2, 0x0

    invoke-virtual {p1, p2}, Ljava/lang/String;->charAt(I)C

    move-result v1

    invoke-static {v1}, Ljava/lang/Character;->isDigit(C)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 347
    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p1

    if-eqz p1, :cond_1

    const/4 p2, 0x1

    :cond_1
    return p2

    .line 349
    :cond_2
    invoke-static {p1}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result p1

    return p1
.end method

.method public getURL()Ljava/lang/String;
    .locals 1

    .line 599
    iget-object v0, p0, Lorg/h2/engine/ConnectionInfo;->url:Ljava/lang/String;

    return-object v0
.end method

.method public getUserName()Ljava/lang/String;
    .locals 1

    .line 442
    iget-object v0, p0, Lorg/h2/engine/ConnectionInfo;->user:Ljava/lang/String;

    return-object v0
.end method

.method getUserPasswordHash()[B
    .locals 1

    .line 451
    iget-object v0, p0, Lorg/h2/engine/ConnectionInfo;->userPasswordHash:[B

    return-object v0
.end method

.method public isPersistent()Z
    .locals 1

    .line 215
    iget-boolean v0, p0, Lorg/h2/engine/ConnectionInfo;->persistent:Z

    return v0
.end method

.method public isRemote()Z
    .locals 1

    .line 206
    iget-boolean v0, p0, Lorg/h2/engine/ConnectionInfo;->remote:Z

    return v0
.end method

.method isSSL()Z
    .locals 1

    .line 545
    iget-boolean v0, p0, Lorg/h2/engine/ConnectionInfo;->ssl:Z

    return v0
.end method

.method isUnnamedInMemory()Z
    .locals 1

    .line 224
    iget-boolean v0, p0, Lorg/h2/engine/ConnectionInfo;->unnamed:Z

    return v0
.end method

.method removeProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .line 372
    sget-boolean v0, Lorg/h2/engine/SysProperties;->CHECK:Z

    if-eqz v0, :cond_0

    invoke-static {p1}, Lorg/h2/engine/ConnectionInfo;->isKnownSetting(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 373
    invoke-static {p1}, Lorg/h2/message/DbException;->throwInternalError(Ljava/lang/String;)Ljava/lang/RuntimeException;

    .line 375
    :cond_0
    iget-object v0, p0, Lorg/h2/engine/ConnectionInfo;->prop:Ljava/util/Properties;

    invoke-virtual {v0, p1}, Ljava/util/Properties;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    if-nez p1, :cond_1

    goto :goto_0

    .line 376
    :cond_1
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p2

    :goto_0
    return-object p2
.end method

.method public removeProperty(Ljava/lang/String;Z)Z
    .locals 1

    const/4 v0, 0x0

    .line 360
    invoke-virtual {p0, p1, v0}, Lorg/h2/engine/ConnectionInfo;->removeProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    if-nez p1, :cond_0

    goto :goto_0

    .line 361
    :cond_0
    invoke-static {p1}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result p2

    :goto_0
    return p2
.end method

.method public setBaseDir(Ljava/lang/String;)V
    .locals 8

    .line 163
    iget-boolean v0, p0, Lorg/h2/engine/ConnectionInfo;->persistent:Z

    if-eqz v0, :cond_6

    .line 164
    invoke-static {p1}, Lorg/h2/store/fs/FileUtils;->toRealPath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lorg/h2/store/fs/FileUtils;->unwrap(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 165
    iget-object v1, p0, Lorg/h2/engine/ConnectionInfo;->name:Ljava/lang/String;

    invoke-static {v1}, Lorg/h2/store/fs/FileUtils;->isAbsolute(Ljava/lang/String;)Z

    move-result v1

    const/4 v2, 0x0

    .line 168
    sget-object v3, Lorg/h2/engine/SysProperties;->FILE_SEPARATOR:Ljava/lang/String;

    invoke-virtual {p1, v3}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v3

    const/4 v4, 0x0

    if-eqz v3, :cond_0

    .line 169
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    invoke-virtual {p1, v4, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p1

    :cond_0
    if-eqz v1, :cond_1

    .line 172
    iget-object v3, p0, Lorg/h2/engine/ConnectionInfo;->name:Ljava/lang/String;

    move-object v7, v3

    move-object v3, v2

    move-object v2, v7

    goto :goto_0

    .line 174
    :cond_1
    iget-object v2, p0, Lorg/h2/engine/ConnectionInfo;->name:Ljava/lang/String;

    invoke-static {v2}, Lorg/h2/store/fs/FileUtils;->unwrap(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 175
    iget-object v3, p0, Lorg/h2/engine/ConnectionInfo;->name:Ljava/lang/String;

    iget-object v5, p0, Lorg/h2/engine/ConnectionInfo;->name:Ljava/lang/String;

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v5

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v6

    sub-int/2addr v5, v6

    invoke-virtual {v3, v4, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    .line 176
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v5, Lorg/h2/engine/SysProperties;->FILE_SEPARATOR:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 178
    :goto_0
    invoke-static {v2}, Lorg/h2/store/fs/FileUtils;->toRealPath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lorg/h2/store/fs/FileUtils;->unwrap(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 179
    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    const v5, 0x15fac

    if-nez v4, :cond_5

    invoke-virtual {v2, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_5

    const-string v4, "/"

    .line 185
    invoke-virtual {v0, v4}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_4

    const-string v4, "\\"

    invoke-virtual {v0, v4}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_2

    goto :goto_1

    .line 187
    :cond_2
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v4

    invoke-virtual {v2, v4}, Ljava/lang/String;->charAt(I)C

    move-result v4

    const/16 v6, 0x2f

    if-ne v4, v6, :cond_3

    goto :goto_1

    .line 191
    :cond_3
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " outside "

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v5, p1}, Lorg/h2/message/DbException;->get(ILjava/lang/String;)Lorg/h2/message/DbException;

    move-result-object p1

    throw p1

    :cond_4
    :goto_1
    if-nez v1, :cond_6

    .line 195
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object p1, Lorg/h2/engine/SysProperties;->FILE_SEPARATOR:Ljava/lang/String;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, p0, Lorg/h2/engine/ConnectionInfo;->name:Ljava/lang/String;

    invoke-static {p1}, Lorg/h2/store/fs/FileUtils;->unwrap(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lorg/h2/engine/ConnectionInfo;->name:Ljava/lang/String;

    goto :goto_2

    .line 182
    :cond_5
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " outside "

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v5, p1}, Lorg/h2/message/DbException;->get(ILjava/lang/String;)Lorg/h2/message/DbException;

    move-result-object p1

    throw p1

    :cond_6
    :goto_2
    return-void
.end method

.method public setFileEncryptionKey([B)V
    .locals 0

    .line 577
    iput-object p1, p0, Lorg/h2/engine/ConnectionInfo;->fileEncryptionKey:[B

    return-void
.end method

.method public setFilePasswordHash([B)V
    .locals 0

    .line 573
    iput-object p1, p0, Lorg/h2/engine/ConnectionInfo;->filePasswordHash:[B

    return-void
.end method

.method public setOriginalURL(Ljava/lang/String;)V
    .locals 0

    .line 617
    iput-object p1, p0, Lorg/h2/engine/ConnectionInfo;->originalURL:Ljava/lang/String;

    return-void
.end method

.method public setProperty(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    if-eqz p2, :cond_0

    .line 589
    iget-object v0, p0, Lorg/h2/engine/ConnectionInfo;->prop:Ljava/util/Properties;

    invoke-virtual {v0, p1, p2}, Ljava/util/Properties;->setProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    :cond_0
    return-void
.end method

.method public setServerKey(Ljava/lang/String;)V
    .locals 1

    const/4 v0, 0x1

    .line 636
    iput-boolean v0, p0, Lorg/h2/engine/ConnectionInfo;->remote:Z

    const/4 v0, 0x0

    .line 637
    iput-boolean v0, p0, Lorg/h2/engine/ConnectionInfo;->persistent:Z

    .line 638
    iput-object p1, p0, Lorg/h2/engine/ConnectionInfo;->name:Ljava/lang/String;

    return-void
.end method

.method public setUserName(Ljava/lang/String;)V
    .locals 0

    .line 555
    invoke-static {p1}, Lorg/h2/util/StringUtils;->toUpperEnglish(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lorg/h2/engine/ConnectionInfo;->user:Ljava/lang/String;

    return-void
.end method

.method public setUserPasswordHash([B)V
    .locals 0

    .line 564
    iput-object p1, p0, Lorg/h2/engine/ConnectionInfo;->userPasswordHash:[B

    return-void
.end method
