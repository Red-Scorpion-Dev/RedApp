.class Lorg/briarproject/bramble/db/Migration39_40;
.super Ljava/lang/Object;
.source "Migration39_40.java"

# interfaces
.implements Lorg/briarproject/bramble/db/Migration;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lorg/briarproject/bramble/db/Migration<",
        "Ljava/sql/Connection;",
        ">;"
    }
.end annotation


# static fields
.field private static final LOG:Ljava/util/logging/Logger;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 17
    const-class v0, Lorg/briarproject/bramble/db/Migration39_40;

    .line 18
    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/logging/Logger;->getLogger(Ljava/lang/String;)Ljava/util/logging/Logger;

    move-result-object v0

    sput-object v0, Lorg/briarproject/bramble/db/Migration39_40;->LOG:Ljava/util/logging/Logger;

    return-void
.end method

.method constructor <init>()V
    .locals 0

    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private tryToClose(Ljava/sql/Statement;)V
    .locals 2

    if-eqz p1, :cond_0

    .line 49
    :try_start_0
    invoke-interface {p1}, Ljava/sql/Statement;->close()V
    :try_end_0
    .catch Ljava/sql/SQLException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 51
    sget-object v0, Lorg/briarproject/bramble/db/Migration39_40;->LOG:Ljava/util/logging/Logger;

    sget-object v1, Ljava/util/logging/Level;->WARNING:Ljava/util/logging/Level;

    invoke-static {v0, v1, p1}, Lorg/briarproject/bramble/util/LogUtils;->logException(Ljava/util/logging/Logger;Ljava/util/logging/Level;Ljava/lang/Throwable;)V

    :cond_0
    :goto_0
    return-void
.end method


# virtual methods
.method public getEndVersion()I
    .locals 1

    const/16 v0, 0x28

    return v0
.end method

.method public getStartVersion()I
    .locals 1

    const/16 v0, 0x27

    return v0
.end method

.method public bridge synthetic migrate(Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/briarproject/bramble/api/db/DbException;
        }
    .end annotation

    .line 15
    check-cast p1, Ljava/sql/Connection;

    invoke-virtual {p0, p1}, Lorg/briarproject/bramble/db/Migration39_40;->migrate(Ljava/sql/Connection;)V

    return-void
.end method

.method public migrate(Ljava/sql/Connection;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/briarproject/bramble/api/db/DbException;
        }
    .end annotation

    .line 34
    :try_start_0
    invoke-interface {p1}, Ljava/sql/Connection;->createStatement()Ljava/sql/Statement;

    move-result-object p1
    :try_end_0
    .catch Ljava/sql/SQLException; {:try_start_0 .. :try_end_0} :catch_1

    :try_start_1
    const-string v0, "ALTER TABLE statuses ADD eta BIGINT"

    .line 35
    invoke-interface {p1, v0}, Ljava/sql/Statement;->execute(Ljava/lang/String;)Z

    const-string v0, "UPDATE statuses SET eta = 0"

    .line 37
    invoke-interface {p1, v0}, Ljava/sql/Statement;->execute(Ljava/lang/String;)Z

    const-string v0, "ALTER TABLE statuses ALTER COLUMN eta SET NOT NULL"

    .line 38
    invoke-interface {p1, v0}, Ljava/sql/Statement;->execute(Ljava/lang/String;)Z
    :try_end_1
    .catch Ljava/sql/SQLException; {:try_start_1 .. :try_end_1} :catch_0

    return-void

    :catch_0
    move-exception v0

    goto :goto_0

    :catch_1
    move-exception v0

    const/4 p1, 0x0

    .line 42
    :goto_0
    invoke-direct {p0, p1}, Lorg/briarproject/bramble/db/Migration39_40;->tryToClose(Ljava/sql/Statement;)V

    .line 43
    new-instance p1, Lorg/briarproject/bramble/api/db/DbException;

    invoke-direct {p1, v0}, Lorg/briarproject/bramble/api/db/DbException;-><init>(Ljava/lang/Throwable;)V

    throw p1
.end method
