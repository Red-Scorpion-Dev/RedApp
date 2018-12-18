.class Lorg/briarproject/briar/android/AndroidDatabaseConfig;
.super Ljava/lang/Object;
.source "AndroidDatabaseConfig.java"

# interfaces
.implements Lorg/briarproject/bramble/api/db/DatabaseConfig;


# annotations
.annotation runtime Lorg/briarproject/bramble/api/nullsafety/NotNullByDefault;
.end annotation


# instance fields
.field private final dbDir:Ljava/io/File;

.field private final keyDir:Ljava/io/File;


# direct methods
.method constructor <init>(Ljava/io/File;Ljava/io/File;)V
    .locals 0

    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 14
    iput-object p1, p0, Lorg/briarproject/briar/android/AndroidDatabaseConfig;->dbDir:Ljava/io/File;

    .line 15
    iput-object p2, p0, Lorg/briarproject/briar/android/AndroidDatabaseConfig;->keyDir:Ljava/io/File;

    return-void
.end method


# virtual methods
.method public getDatabaseDirectory()Ljava/io/File;
    .locals 1

    .line 20
    iget-object v0, p0, Lorg/briarproject/briar/android/AndroidDatabaseConfig;->dbDir:Ljava/io/File;

    return-object v0
.end method

.method public getDatabaseKeyDirectory()Ljava/io/File;
    .locals 1

    .line 25
    iget-object v0, p0, Lorg/briarproject/briar/android/AndroidDatabaseConfig;->keyDir:Ljava/io/File;

    return-object v0
.end method

.method public getMaxSize()J
    .locals 2

    const-wide v0, 0x7fffffffffffffffL

    return-wide v0
.end method
