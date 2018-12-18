.class final Lorg/h2/tools/Recover$1;
.super Ljava/lang/Object;
.source "Recover.java"

# interfaces
.implements Ljava/util/Enumeration;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/h2/tools/Recover;->readBlobMap(Ljava/sql/Connection;JJ)Ljava/io/InputStream;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Enumeration<",
        "Ljava/io/InputStream;",
        ">;"
    }
.end annotation


# instance fields
.field private data:[B

.field private seq:I

.field final synthetic val$prep:Ljava/sql/PreparedStatement;


# direct methods
.method constructor <init>(Ljava/sql/PreparedStatement;)V
    .locals 0

    .line 257
    iput-object p1, p0, Lorg/h2/tools/Recover$1;->val$prep:Ljava/sql/PreparedStatement;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 260
    invoke-direct {p0}, Lorg/h2/tools/Recover$1;->fetch()[B

    move-result-object p1

    iput-object p1, p0, Lorg/h2/tools/Recover$1;->data:[B

    return-void
.end method

.method private fetch()[B
    .locals 4

    .line 264
    :try_start_0
    iget-object v0, p0, Lorg/h2/tools/Recover$1;->val$prep:Ljava/sql/PreparedStatement;

    const/4 v1, 0x2

    iget v2, p0, Lorg/h2/tools/Recover$1;->seq:I

    add-int/lit8 v3, v2, 0x1

    iput v3, p0, Lorg/h2/tools/Recover$1;->seq:I

    invoke-interface {v0, v1, v2}, Ljava/sql/PreparedStatement;->setInt(II)V

    .line 265
    iget-object v0, p0, Lorg/h2/tools/Recover$1;->val$prep:Ljava/sql/PreparedStatement;

    invoke-interface {v0}, Ljava/sql/PreparedStatement;->executeQuery()Ljava/sql/ResultSet;

    move-result-object v0

    .line 266
    invoke-interface {v0}, Ljava/sql/ResultSet;->next()Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    .line 267
    invoke-interface {v0, v1}, Ljava/sql/ResultSet;->getBytes(I)[B

    move-result-object v0
    :try_end_0
    .catch Ljava/sql/SQLException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :cond_0
    const/4 v0, 0x0

    return-object v0

    :catch_0
    move-exception v0

    .line 271
    invoke-static {v0}, Lorg/h2/message/DbException;->convert(Ljava/lang/Throwable;)Lorg/h2/message/DbException;

    move-result-object v0

    throw v0
.end method


# virtual methods
.method public hasMoreElements()Z
    .locals 1

    .line 277
    iget-object v0, p0, Lorg/h2/tools/Recover$1;->data:[B

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public nextElement()Ljava/io/InputStream;
    .locals 2

    .line 282
    new-instance v0, Ljava/io/ByteArrayInputStream;

    iget-object v1, p0, Lorg/h2/tools/Recover$1;->data:[B

    invoke-direct {v0, v1}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    .line 283
    invoke-direct {p0}, Lorg/h2/tools/Recover$1;->fetch()[B

    move-result-object v1

    iput-object v1, p0, Lorg/h2/tools/Recover$1;->data:[B

    return-object v0
.end method

.method public bridge synthetic nextElement()Ljava/lang/Object;
    .locals 1

    .line 257
    invoke-virtual {p0}, Lorg/h2/tools/Recover$1;->nextElement()Ljava/io/InputStream;

    move-result-object v0

    return-object v0
.end method
