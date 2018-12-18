.class public Lorg/h2/jdbc/JdbcSavepoint;
.super Lorg/h2/message/TraceObject;
.source "JdbcSavepoint.java"

# interfaces
.implements Ljava/sql/Savepoint;


# static fields
.field private static final SYSTEM_SAVEPOINT_PREFIX:Ljava/lang/String; = "SYSTEM_SAVEPOINT_"


# instance fields
.field private conn:Lorg/h2/jdbc/JdbcConnection;

.field private final name:Ljava/lang/String;

.field private final savepointId:I


# direct methods
.method constructor <init>(Lorg/h2/jdbc/JdbcConnection;ILjava/lang/String;Lorg/h2/message/Trace;I)V
    .locals 1

    .line 31
    invoke-direct {p0}, Lorg/h2/message/TraceObject;-><init>()V

    const/4 v0, 0x6

    .line 32
    invoke-virtual {p0, p4, v0, p5}, Lorg/h2/jdbc/JdbcSavepoint;->setTrace(Lorg/h2/message/Trace;II)V

    .line 33
    iput-object p1, p0, Lorg/h2/jdbc/JdbcSavepoint;->conn:Lorg/h2/jdbc/JdbcConnection;

    .line 34
    iput p2, p0, Lorg/h2/jdbc/JdbcSavepoint;->savepointId:I

    .line 35
    iput-object p3, p0, Lorg/h2/jdbc/JdbcSavepoint;->name:Ljava/lang/String;

    return-void
.end method

.method private checkValid()V
    .locals 3

    .line 72
    iget-object v0, p0, Lorg/h2/jdbc/JdbcSavepoint;->conn:Lorg/h2/jdbc/JdbcConnection;

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const v0, 0x15fcf

    .line 73
    iget-object v1, p0, Lorg/h2/jdbc/JdbcSavepoint;->name:Ljava/lang/String;

    iget v2, p0, Lorg/h2/jdbc/JdbcSavepoint;->savepointId:I

    invoke-static {v1, v2}, Lorg/h2/jdbc/JdbcSavepoint;->getName(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lorg/h2/message/DbException;->get(ILjava/lang/String;)Lorg/h2/message/DbException;

    move-result-object v0

    throw v0
.end method

.method static getName(Ljava/lang/String;I)Ljava/lang/String;
    .locals 1

    if-eqz p0, :cond_0

    .line 56
    invoke-static {p0}, Lorg/h2/util/StringUtils;->quoteJavaString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 58
    :cond_0
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "SYSTEM_SAVEPOINT_"

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public getSavepointId()I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    :try_start_0
    const-string v0, "getSavepointId"

    .line 85
    invoke-virtual {p0, v0}, Lorg/h2/jdbc/JdbcSavepoint;->debugCodeCall(Ljava/lang/String;)V

    .line 86
    invoke-direct {p0}, Lorg/h2/jdbc/JdbcSavepoint;->checkValid()V

    .line 87
    iget-object v0, p0, Lorg/h2/jdbc/JdbcSavepoint;->name:Ljava/lang/String;

    if-nez v0, :cond_0

    .line 90
    iget v0, p0, Lorg/h2/jdbc/JdbcSavepoint;->savepointId:I

    return v0

    :cond_0
    const v0, 0x15fd1

    .line 88
    invoke-static {v0}, Lorg/h2/message/DbException;->get(I)Lorg/h2/message/DbException;

    move-result-object v0

    throw v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    move-exception v0

    .line 92
    invoke-virtual {p0, v0}, Lorg/h2/jdbc/JdbcSavepoint;->logAndConvert(Ljava/lang/Exception;)Ljava/sql/SQLException;

    move-result-object v0

    throw v0
.end method

.method public getSavepointName()Ljava/lang/String;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    :try_start_0
    const-string v0, "getSavepointName"

    .line 103
    invoke-virtual {p0, v0}, Lorg/h2/jdbc/JdbcSavepoint;->debugCodeCall(Ljava/lang/String;)V

    .line 104
    invoke-direct {p0}, Lorg/h2/jdbc/JdbcSavepoint;->checkValid()V

    .line 105
    iget-object v0, p0, Lorg/h2/jdbc/JdbcSavepoint;->name:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 108
    iget-object v0, p0, Lorg/h2/jdbc/JdbcSavepoint;->name:Ljava/lang/String;

    return-object v0

    :cond_0
    const v0, 0x15fd0

    .line 106
    invoke-static {v0}, Lorg/h2/message/DbException;->get(I)Lorg/h2/message/DbException;

    move-result-object v0

    throw v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    move-exception v0

    .line 110
    invoke-virtual {p0, v0}, Lorg/h2/jdbc/JdbcSavepoint;->logAndConvert(Ljava/lang/Exception;)Ljava/sql/SQLException;

    move-result-object v0

    throw v0
.end method

.method release()V
    .locals 1

    const/4 v0, 0x0

    .line 43
    iput-object v0, p0, Lorg/h2/jdbc/JdbcSavepoint;->conn:Lorg/h2/jdbc/JdbcConnection;

    return-void
.end method

.method rollback()V
    .locals 4

    .line 65
    invoke-direct {p0}, Lorg/h2/jdbc/JdbcSavepoint;->checkValid()V

    .line 66
    iget-object v0, p0, Lorg/h2/jdbc/JdbcSavepoint;->conn:Lorg/h2/jdbc/JdbcConnection;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "ROLLBACK TO SAVEPOINT "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lorg/h2/jdbc/JdbcSavepoint;->name:Ljava/lang/String;

    iget v3, p0, Lorg/h2/jdbc/JdbcSavepoint;->savepointId:I

    invoke-static {v2, v3}, Lorg/h2/jdbc/JdbcSavepoint;->getName(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const v2, 0x7fffffff

    invoke-virtual {v0, v1, v2}, Lorg/h2/jdbc/JdbcConnection;->prepareCommand(Ljava/lang/String;I)Lorg/h2/command/CommandInterface;

    move-result-object v0

    invoke-interface {v0}, Lorg/h2/command/CommandInterface;->executeUpdate()I

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 119
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lorg/h2/jdbc/JdbcSavepoint;->getTraceObjectName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ": id="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lorg/h2/jdbc/JdbcSavepoint;->savepointId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " name="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lorg/h2/jdbc/JdbcSavepoint;->name:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
