.class public Lorg/h2/bnf/context/DbColumn;
.super Ljava/lang/Object;
.source "DbColumn.java"


# instance fields
.field private final dataType:Ljava/lang/String;

.field private final name:Ljava/lang/String;

.field private position:I

.field private final quotedName:Ljava/lang/String;


# direct methods
.method private constructor <init>(Lorg/h2/bnf/context/DbContents;Ljava/sql/ResultSet;Z)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "COLUMN_NAME"

    .line 28
    invoke-interface {p2, v0}, Ljava/sql/ResultSet;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/h2/bnf/context/DbColumn;->name:Ljava/lang/String;

    .line 29
    iget-object v0, p0, Lorg/h2/bnf/context/DbColumn;->name:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lorg/h2/bnf/context/DbContents;->quoteIdentifier(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/h2/bnf/context/DbColumn;->quotedName:Ljava/lang/String;

    const-string v0, "TYPE_NAME"

    .line 30
    invoke-interface {p2, v0}, Ljava/sql/ResultSet;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz p3, :cond_0

    const-string v1, "PRECISION"

    goto :goto_0

    :cond_0
    const-string v1, "COLUMN_SIZE"

    .line 39
    :goto_0
    invoke-interface {p2, v1}, Ljava/sql/ResultSet;->getInt(Ljava/lang/String;)I

    move-result v1

    const-string v2, "ORDINAL_POSITION"

    .line 40
    invoke-interface {p2, v2}, Ljava/sql/ResultSet;->getInt(Ljava/lang/String;)I

    move-result v2

    iput v2, p0, Lorg/h2/bnf/context/DbColumn;->position:I

    .line 41
    invoke-virtual {p1}, Lorg/h2/bnf/context/DbContents;->isSQLite()Z

    move-result p1

    if-lez v1, :cond_3

    if-nez p1, :cond_3

    .line 43
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "("

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    if-eqz p3, :cond_1

    const-string p3, "SCALE"

    goto :goto_1

    :cond_1
    const-string p3, "DECIMAL_DIGITS"

    .line 50
    :goto_1
    invoke-interface {p2, p3}, Ljava/sql/ResultSet;->getInt(Ljava/lang/String;)I

    move-result p3

    if-lez p3, :cond_2

    .line 52
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ", "

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 54
    :cond_2
    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ")"

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :cond_3
    const-string p1, "NULLABLE"

    .line 56
    invoke-interface {p2, p1}, Ljava/sql/ResultSet;->getInt(Ljava/lang/String;)I

    move-result p1

    if-nez p1, :cond_4

    .line 57
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, " NOT NULL"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 59
    :cond_4
    iput-object v0, p0, Lorg/h2/bnf/context/DbColumn;->dataType:Ljava/lang/String;

    return-void
.end method

.method public static getColumn(Lorg/h2/bnf/context/DbContents;Ljava/sql/ResultSet;)Lorg/h2/bnf/context/DbColumn;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 83
    new-instance v0, Lorg/h2/bnf/context/DbColumn;

    const/4 v1, 0x0

    invoke-direct {v0, p0, p1, v1}, Lorg/h2/bnf/context/DbColumn;-><init>(Lorg/h2/bnf/context/DbContents;Ljava/sql/ResultSet;Z)V

    return-object v0
.end method

.method public static getProcedureColumn(Lorg/h2/bnf/context/DbContents;Ljava/sql/ResultSet;)Lorg/h2/bnf/context/DbColumn;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 71
    new-instance v0, Lorg/h2/bnf/context/DbColumn;

    const/4 v1, 0x1

    invoke-direct {v0, p0, p1, v1}, Lorg/h2/bnf/context/DbColumn;-><init>(Lorg/h2/bnf/context/DbContents;Ljava/sql/ResultSet;Z)V

    return-object v0
.end method


# virtual methods
.method public getDataType()Ljava/lang/String;
    .locals 1

    .line 91
    iget-object v0, p0, Lorg/h2/bnf/context/DbColumn;->dataType:Ljava/lang/String;

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .line 98
    iget-object v0, p0, Lorg/h2/bnf/context/DbColumn;->name:Ljava/lang/String;

    return-object v0
.end method

.method public getPosition()I
    .locals 1

    .line 112
    iget v0, p0, Lorg/h2/bnf/context/DbColumn;->position:I

    return v0
.end method

.method public getQuotedName()Ljava/lang/String;
    .locals 1

    .line 105
    iget-object v0, p0, Lorg/h2/bnf/context/DbColumn;->quotedName:Ljava/lang/String;

    return-object v0
.end method
