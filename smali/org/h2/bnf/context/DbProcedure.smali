.class public Lorg/h2/bnf/context/DbProcedure;
.super Ljava/lang/Object;
.source "DbProcedure.java"


# instance fields
.field private final name:Ljava/lang/String;

.field private parameters:[Lorg/h2/bnf/context/DbColumn;

.field private final quotedName:Ljava/lang/String;

.field private returnsResult:Z

.field private final schema:Lorg/h2/bnf/context/DbSchema;


# direct methods
.method public constructor <init>(Lorg/h2/bnf/context/DbSchema;Ljava/sql/ResultSet;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 28
    iput-object p1, p0, Lorg/h2/bnf/context/DbProcedure;->schema:Lorg/h2/bnf/context/DbSchema;

    const-string v0, "PROCEDURE_NAME"

    .line 29
    invoke-interface {p2, v0}, Ljava/sql/ResultSet;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/h2/bnf/context/DbProcedure;->name:Ljava/lang/String;

    const-string v0, "PROCEDURE_TYPE"

    .line 30
    invoke-interface {p2, v0}, Ljava/sql/ResultSet;->getShort(Ljava/lang/String;)S

    move-result p2

    const/4 v0, 0x2

    if-ne p2, v0, :cond_0

    const/4 p2, 0x1

    goto :goto_0

    :cond_0
    const/4 p2, 0x0

    :goto_0
    iput-boolean p2, p0, Lorg/h2/bnf/context/DbProcedure;->returnsResult:Z

    .line 32
    invoke-virtual {p1}, Lorg/h2/bnf/context/DbSchema;->getContents()Lorg/h2/bnf/context/DbContents;

    move-result-object p1

    iget-object p2, p0, Lorg/h2/bnf/context/DbProcedure;->name:Ljava/lang/String;

    invoke-virtual {p1, p2}, Lorg/h2/bnf/context/DbContents;->quoteIdentifier(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lorg/h2/bnf/context/DbProcedure;->quotedName:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public getName()Ljava/lang/String;
    .locals 1

    .line 53
    iget-object v0, p0, Lorg/h2/bnf/context/DbProcedure;->name:Ljava/lang/String;

    return-object v0
.end method

.method public getParameters()[Lorg/h2/bnf/context/DbColumn;
    .locals 1

    .line 46
    iget-object v0, p0, Lorg/h2/bnf/context/DbProcedure;->parameters:[Lorg/h2/bnf/context/DbColumn;

    return-object v0
.end method

.method public getQuotedName()Ljava/lang/String;
    .locals 1

    .line 60
    iget-object v0, p0, Lorg/h2/bnf/context/DbProcedure;->quotedName:Ljava/lang/String;

    return-object v0
.end method

.method public getSchema()Lorg/h2/bnf/context/DbSchema;
    .locals 1

    .line 39
    iget-object v0, p0, Lorg/h2/bnf/context/DbProcedure;->schema:Lorg/h2/bnf/context/DbSchema;

    return-object v0
.end method

.method public isReturnsResult()Z
    .locals 1

    .line 67
    iget-boolean v0, p0, Lorg/h2/bnf/context/DbProcedure;->returnsResult:Z

    return v0
.end method

.method readParameters(Ljava/sql/DatabaseMetaData;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 76
    iget-object v0, p0, Lorg/h2/bnf/context/DbProcedure;->schema:Lorg/h2/bnf/context/DbSchema;

    iget-object v0, v0, Lorg/h2/bnf/context/DbSchema;->name:Ljava/lang/String;

    iget-object v1, p0, Lorg/h2/bnf/context/DbProcedure;->name:Ljava/lang/String;

    const/4 v2, 0x0

    invoke-interface {p1, v2, v0, v1, v2}, Ljava/sql/DatabaseMetaData;->getProcedureColumns(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/sql/ResultSet;

    move-result-object p1

    .line 77
    invoke-static {}, Lorg/h2/util/New;->arrayList()Ljava/util/ArrayList;

    move-result-object v0

    .line 78
    :cond_0
    :goto_0
    invoke-interface {p1}, Ljava/sql/ResultSet;->next()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 79
    iget-object v1, p0, Lorg/h2/bnf/context/DbProcedure;->schema:Lorg/h2/bnf/context/DbSchema;

    invoke-virtual {v1}, Lorg/h2/bnf/context/DbSchema;->getContents()Lorg/h2/bnf/context/DbContents;

    move-result-object v1

    invoke-static {v1, p1}, Lorg/h2/bnf/context/DbColumn;->getProcedureColumn(Lorg/h2/bnf/context/DbContents;Ljava/sql/ResultSet;)Lorg/h2/bnf/context/DbColumn;

    move-result-object v1

    .line 80
    invoke-virtual {v1}, Lorg/h2/bnf/context/DbColumn;->getPosition()I

    move-result v2

    if-lez v2, :cond_0

    .line 82
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 85
    :cond_1
    invoke-interface {p1}, Ljava/sql/ResultSet;->close()V

    .line 86
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result p1

    new-array p1, p1, [Lorg/h2/bnf/context/DbColumn;

    iput-object p1, p0, Lorg/h2/bnf/context/DbProcedure;->parameters:[Lorg/h2/bnf/context/DbColumn;

    const/4 p1, 0x0

    .line 88
    :goto_1
    iget-object v1, p0, Lorg/h2/bnf/context/DbProcedure;->parameters:[Lorg/h2/bnf/context/DbColumn;

    array-length v1, v1

    if-ge p1, v1, :cond_3

    .line 89
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/h2/bnf/context/DbColumn;

    .line 90
    invoke-virtual {v1}, Lorg/h2/bnf/context/DbColumn;->getPosition()I

    move-result v2

    if-lez v2, :cond_2

    invoke-virtual {v1}, Lorg/h2/bnf/context/DbColumn;->getPosition()I

    move-result v2

    iget-object v3, p0, Lorg/h2/bnf/context/DbProcedure;->parameters:[Lorg/h2/bnf/context/DbColumn;

    array-length v3, v3

    if-gt v2, v3, :cond_2

    .line 92
    iget-object v2, p0, Lorg/h2/bnf/context/DbProcedure;->parameters:[Lorg/h2/bnf/context/DbColumn;

    invoke-virtual {v1}, Lorg/h2/bnf/context/DbColumn;->getPosition()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    aput-object v1, v2, v3

    :cond_2
    add-int/lit8 p1, p1, 0x1

    goto :goto_1

    :cond_3
    return-void
.end method
