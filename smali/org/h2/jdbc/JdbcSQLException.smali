.class public Lorg/h2/jdbc/JdbcSQLException;
.super Ljava/sql/SQLException;
.source "JdbcSQLException.java"


# static fields
.field public static final HIDE_SQL:Ljava/lang/String; = "--hide--"

.field private static final serialVersionUID:J = 0x1L


# instance fields
.field private final cause:Ljava/lang/Throwable;

.field private message:Ljava/lang/String;

.field private final originalMessage:Ljava/lang/String;

.field private sql:Ljava/lang/String;

.field private final stackTrace:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/Throwable;Ljava/lang/String;)V
    .locals 0

    .line 45
    invoke-direct {p0, p1, p3, p4}, Ljava/sql/SQLException;-><init>(Ljava/lang/String;Ljava/lang/String;I)V

    .line 46
    iput-object p1, p0, Lorg/h2/jdbc/JdbcSQLException;->originalMessage:Ljava/lang/String;

    .line 47
    invoke-virtual {p0, p2}, Lorg/h2/jdbc/JdbcSQLException;->setSQL(Ljava/lang/String;)V

    .line 48
    iput-object p5, p0, Lorg/h2/jdbc/JdbcSQLException;->cause:Ljava/lang/Throwable;

    .line 49
    iput-object p6, p0, Lorg/h2/jdbc/JdbcSQLException;->stackTrace:Ljava/lang/String;

    .line 50
    invoke-direct {p0}, Lorg/h2/jdbc/JdbcSQLException;->buildMessage()V

    .line 51
    invoke-virtual {p0, p5}, Lorg/h2/jdbc/JdbcSQLException;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    return-void
.end method

.method private buildMessage()V
    .locals 2

    .line 156
    new-instance v0, Ljava/lang/StringBuilder;

    iget-object v1, p0, Lorg/h2/jdbc/JdbcSQLException;->originalMessage:Ljava/lang/String;

    if-nez v1, :cond_0

    const-string v1, "- "

    goto :goto_0

    :cond_0
    iget-object v1, p0, Lorg/h2/jdbc/JdbcSQLException;->originalMessage:Ljava/lang/String;

    :goto_0
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 158
    iget-object v1, p0, Lorg/h2/jdbc/JdbcSQLException;->sql:Ljava/lang/String;

    if-eqz v1, :cond_1

    const-string v1, "; SQL statement:\n"

    .line 159
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lorg/h2/jdbc/JdbcSQLException;->sql:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_1
    const-string v1, " ["

    .line 161
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lorg/h2/jdbc/JdbcSQLException;->getErrorCode()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const/16 v1, 0x2d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const/16 v1, 0xc0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const/16 v1, 0x5d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 163
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/h2/jdbc/JdbcSQLException;->message:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public getMessage()Ljava/lang/String;
    .locals 1

    .line 61
    iget-object v0, p0, Lorg/h2/jdbc/JdbcSQLException;->message:Ljava/lang/String;

    return-object v0
.end method

.method public getOriginalCause()Ljava/lang/Throwable;
    .locals 1

    .line 131
    iget-object v0, p0, Lorg/h2/jdbc/JdbcSQLException;->cause:Ljava/lang/Throwable;

    return-object v0
.end method

.method public getOriginalMessage()Ljava/lang/String;
    .locals 1

    .line 68
    iget-object v0, p0, Lorg/h2/jdbc/JdbcSQLException;->originalMessage:Ljava/lang/String;

    return-object v0
.end method

.method public getSQL()Ljava/lang/String;
    .locals 1

    .line 141
    iget-object v0, p0, Lorg/h2/jdbc/JdbcSQLException;->sql:Ljava/lang/String;

    return-object v0
.end method

.method public printStackTrace()V
    .locals 1

    .line 80
    sget-object v0, Ljava/lang/System;->err:Ljava/io/PrintStream;

    invoke-virtual {p0, v0}, Lorg/h2/jdbc/JdbcSQLException;->printStackTrace(Ljava/io/PrintStream;)V

    return-void
.end method

.method public printStackTrace(Ljava/io/PrintStream;)V
    .locals 3

    if-eqz p1, :cond_1

    .line 113
    invoke-super {p0, p1}, Ljava/sql/SQLException;->printStackTrace(Ljava/io/PrintStream;)V

    .line 116
    invoke-virtual {p0}, Lorg/h2/jdbc/JdbcSQLException;->getNextException()Ljava/sql/SQLException;

    move-result-object v0

    const/4 v1, 0x0

    :goto_0
    const/16 v2, 0x64

    if-ge v1, v2, :cond_0

    if-eqz v0, :cond_0

    .line 118
    invoke-virtual {v0}, Ljava/sql/SQLException;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 119
    invoke-virtual {v0}, Ljava/sql/SQLException;->getNextException()Ljava/sql/SQLException;

    move-result-object v0

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    if-eqz v0, :cond_1

    const-string v0, "(truncated)"

    .line 122
    invoke-virtual {p1, v0}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    :cond_1
    return-void
.end method

.method public printStackTrace(Ljava/io/PrintWriter;)V
    .locals 3

    if-eqz p1, :cond_1

    .line 91
    invoke-super {p0, p1}, Ljava/sql/SQLException;->printStackTrace(Ljava/io/PrintWriter;)V

    .line 94
    invoke-virtual {p0}, Lorg/h2/jdbc/JdbcSQLException;->getNextException()Ljava/sql/SQLException;

    move-result-object v0

    const/4 v1, 0x0

    :goto_0
    const/16 v2, 0x64

    if-ge v1, v2, :cond_0

    if-eqz v0, :cond_0

    .line 96
    invoke-virtual {v0}, Ljava/sql/SQLException;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 97
    invoke-virtual {v0}, Ljava/sql/SQLException;->getNextException()Ljava/sql/SQLException;

    move-result-object v0

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    if-eqz v0, :cond_1

    const-string v0, "(truncated)"

    .line 100
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    :cond_1
    return-void
.end method

.method public setSQL(Ljava/lang/String;)V
    .locals 1

    if-eqz p1, :cond_0

    const-string v0, "--hide--"

    .line 148
    invoke-virtual {p1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string p1, "-"

    .line 151
    :cond_0
    iput-object p1, p0, Lorg/h2/jdbc/JdbcSQLException;->sql:Ljava/lang/String;

    .line 152
    invoke-direct {p0}, Lorg/h2/jdbc/JdbcSQLException;->buildMessage()V

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .line 174
    iget-object v0, p0, Lorg/h2/jdbc/JdbcSQLException;->stackTrace:Ljava/lang/String;

    if-nez v0, :cond_0

    .line 175
    invoke-super {p0}, Ljava/sql/SQLException;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 177
    :cond_0
    iget-object v0, p0, Lorg/h2/jdbc/JdbcSQLException;->stackTrace:Ljava/lang/String;

    return-object v0
.end method
