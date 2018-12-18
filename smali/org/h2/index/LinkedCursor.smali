.class public Lorg/h2/index/LinkedCursor;
.super Ljava/lang/Object;
.source "LinkedCursor.java"

# interfaces
.implements Lorg/h2/index/Cursor;


# instance fields
.field private current:Lorg/h2/result/Row;

.field private final prep:Ljava/sql/PreparedStatement;

.field private final rs:Ljava/sql/ResultSet;

.field private final session:Lorg/h2/engine/Session;

.field private final sql:Ljava/lang/String;

.field private final tableLink:Lorg/h2/table/TableLink;


# direct methods
.method constructor <init>(Lorg/h2/table/TableLink;Ljava/sql/ResultSet;Lorg/h2/engine/Session;Ljava/lang/String;Ljava/sql/PreparedStatement;)V
    .locals 0

    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 35
    iput-object p3, p0, Lorg/h2/index/LinkedCursor;->session:Lorg/h2/engine/Session;

    .line 36
    iput-object p1, p0, Lorg/h2/index/LinkedCursor;->tableLink:Lorg/h2/table/TableLink;

    .line 37
    iput-object p2, p0, Lorg/h2/index/LinkedCursor;->rs:Ljava/sql/ResultSet;

    .line 38
    iput-object p4, p0, Lorg/h2/index/LinkedCursor;->sql:Ljava/lang/String;

    .line 39
    iput-object p5, p0, Lorg/h2/index/LinkedCursor;->prep:Ljava/sql/PreparedStatement;

    return-void
.end method


# virtual methods
.method public get()Lorg/h2/result/Row;
    .locals 1

    .line 44
    iget-object v0, p0, Lorg/h2/index/LinkedCursor;->current:Lorg/h2/result/Row;

    return-object v0
.end method

.method public getSearchRow()Lorg/h2/result/SearchRow;
    .locals 1

    .line 49
    iget-object v0, p0, Lorg/h2/index/LinkedCursor;->current:Lorg/h2/result/Row;

    return-object v0
.end method

.method public next()Z
    .locals 5

    .line 55
    :try_start_0
    iget-object v0, p0, Lorg/h2/index/LinkedCursor;->rs:Ljava/sql/ResultSet;

    invoke-interface {v0}, Ljava/sql/ResultSet;->next()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 57
    iget-object v0, p0, Lorg/h2/index/LinkedCursor;->rs:Ljava/sql/ResultSet;

    invoke-interface {v0}, Ljava/sql/ResultSet;->close()V

    .line 58
    iget-object v0, p0, Lorg/h2/index/LinkedCursor;->tableLink:Lorg/h2/table/TableLink;

    iget-object v2, p0, Lorg/h2/index/LinkedCursor;->prep:Ljava/sql/PreparedStatement;

    iget-object v3, p0, Lorg/h2/index/LinkedCursor;->sql:Ljava/lang/String;

    invoke-virtual {v0, v2, v3}, Lorg/h2/table/TableLink;->reusePreparedStatement(Ljava/sql/PreparedStatement;Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 59
    iput-object v0, p0, Lorg/h2/index/LinkedCursor;->current:Lorg/h2/result/Row;
    :try_end_0
    .catch Ljava/sql/SQLException; {:try_start_0 .. :try_end_0} :catch_0

    return v1

    .line 65
    :cond_0
    iget-object v0, p0, Lorg/h2/index/LinkedCursor;->tableLink:Lorg/h2/table/TableLink;

    invoke-virtual {v0}, Lorg/h2/table/TableLink;->getTemplateRow()Lorg/h2/result/Row;

    move-result-object v0

    iput-object v0, p0, Lorg/h2/index/LinkedCursor;->current:Lorg/h2/result/Row;

    .line 66
    :goto_0
    iget-object v0, p0, Lorg/h2/index/LinkedCursor;->current:Lorg/h2/result/Row;

    invoke-virtual {v0}, Lorg/h2/result/Row;->getColumnCount()I

    move-result v0

    if-ge v1, v0, :cond_1

    .line 67
    iget-object v0, p0, Lorg/h2/index/LinkedCursor;->tableLink:Lorg/h2/table/TableLink;

    invoke-virtual {v0, v1}, Lorg/h2/table/TableLink;->getColumn(I)Lorg/h2/table/Column;

    move-result-object v0

    .line 68
    iget-object v2, p0, Lorg/h2/index/LinkedCursor;->session:Lorg/h2/engine/Session;

    iget-object v3, p0, Lorg/h2/index/LinkedCursor;->rs:Ljava/sql/ResultSet;

    add-int/lit8 v4, v1, 0x1

    invoke-virtual {v0}, Lorg/h2/table/Column;->getType()I

    move-result v0

    invoke-static {v2, v3, v4, v0}, Lorg/h2/value/DataType;->readValue(Lorg/h2/engine/SessionInterface;Ljava/sql/ResultSet;II)Lorg/h2/value/Value;

    move-result-object v0

    .line 69
    iget-object v2, p0, Lorg/h2/index/LinkedCursor;->current:Lorg/h2/result/Row;

    invoke-virtual {v2, v1, v0}, Lorg/h2/result/Row;->setValue(ILorg/h2/value/Value;)V

    move v1, v4

    goto :goto_0

    :cond_1
    const/4 v0, 0x1

    return v0

    :catch_0
    move-exception v0

    .line 63
    invoke-static {v0}, Lorg/h2/message/DbException;->convert(Ljava/lang/Throwable;)Lorg/h2/message/DbException;

    move-result-object v0

    throw v0
.end method

.method public previous()Z
    .locals 1

    .line 76
    invoke-static {}, Lorg/h2/message/DbException;->throwInternalError()Ljava/lang/RuntimeException;

    move-result-object v0

    throw v0
.end method
