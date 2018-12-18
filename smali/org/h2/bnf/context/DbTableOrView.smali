.class public Lorg/h2/bnf/context/DbTableOrView;
.super Ljava/lang/Object;
.source "DbTableOrView.java"


# instance fields
.field private columns:[Lorg/h2/bnf/context/DbColumn;

.field private final isView:Z

.field private final name:Ljava/lang/String;

.field private final quotedName:Ljava/lang/String;

.field private final schema:Lorg/h2/bnf/context/DbSchema;


# direct methods
.method public constructor <init>(Lorg/h2/bnf/context/DbSchema;Ljava/sql/ResultSet;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 45
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 46
    iput-object p1, p0, Lorg/h2/bnf/context/DbTableOrView;->schema:Lorg/h2/bnf/context/DbSchema;

    const-string v0, "TABLE_NAME"

    .line 47
    invoke-interface {p2, v0}, Ljava/sql/ResultSet;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/h2/bnf/context/DbTableOrView;->name:Ljava/lang/String;

    const-string v0, "TABLE_TYPE"

    .line 48
    invoke-interface {p2, v0}, Ljava/sql/ResultSet;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    const-string v0, "VIEW"

    .line 49
    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    iput-boolean p2, p0, Lorg/h2/bnf/context/DbTableOrView;->isView:Z

    .line 50
    invoke-virtual {p1}, Lorg/h2/bnf/context/DbSchema;->getContents()Lorg/h2/bnf/context/DbContents;

    move-result-object p1

    iget-object p2, p0, Lorg/h2/bnf/context/DbTableOrView;->name:Ljava/lang/String;

    invoke-virtual {p1, p2}, Lorg/h2/bnf/context/DbContents;->quoteIdentifier(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lorg/h2/bnf/context/DbTableOrView;->quotedName:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public getColumns()[Lorg/h2/bnf/context/DbColumn;
    .locals 1

    .line 64
    iget-object v0, p0, Lorg/h2/bnf/context/DbTableOrView;->columns:[Lorg/h2/bnf/context/DbColumn;

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .line 71
    iget-object v0, p0, Lorg/h2/bnf/context/DbTableOrView;->name:Ljava/lang/String;

    return-object v0
.end method

.method public getQuotedName()Ljava/lang/String;
    .locals 1

    .line 85
    iget-object v0, p0, Lorg/h2/bnf/context/DbTableOrView;->quotedName:Ljava/lang/String;

    return-object v0
.end method

.method public getSchema()Lorg/h2/bnf/context/DbSchema;
    .locals 1

    .line 57
    iget-object v0, p0, Lorg/h2/bnf/context/DbTableOrView;->schema:Lorg/h2/bnf/context/DbSchema;

    return-object v0
.end method

.method public isView()Z
    .locals 1

    .line 78
    iget-boolean v0, p0, Lorg/h2/bnf/context/DbTableOrView;->isView:Z

    return v0
.end method

.method public readColumns(Ljava/sql/DatabaseMetaData;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 94
    iget-object v0, p0, Lorg/h2/bnf/context/DbTableOrView;->schema:Lorg/h2/bnf/context/DbSchema;

    iget-object v0, v0, Lorg/h2/bnf/context/DbSchema;->name:Ljava/lang/String;

    iget-object v1, p0, Lorg/h2/bnf/context/DbTableOrView;->name:Ljava/lang/String;

    const/4 v2, 0x0

    invoke-interface {p1, v2, v0, v1, v2}, Ljava/sql/DatabaseMetaData;->getColumns(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/sql/ResultSet;

    move-result-object p1

    .line 95
    invoke-static {}, Lorg/h2/util/New;->arrayList()Ljava/util/ArrayList;

    move-result-object v0

    .line 96
    :goto_0
    invoke-interface {p1}, Ljava/sql/ResultSet;->next()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 97
    iget-object v1, p0, Lorg/h2/bnf/context/DbTableOrView;->schema:Lorg/h2/bnf/context/DbSchema;

    invoke-virtual {v1}, Lorg/h2/bnf/context/DbSchema;->getContents()Lorg/h2/bnf/context/DbContents;

    move-result-object v1

    invoke-static {v1, p1}, Lorg/h2/bnf/context/DbColumn;->getColumn(Lorg/h2/bnf/context/DbContents;Ljava/sql/ResultSet;)Lorg/h2/bnf/context/DbColumn;

    move-result-object v1

    .line 98
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 100
    :cond_0
    invoke-interface {p1}, Ljava/sql/ResultSet;->close()V

    .line 101
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result p1

    new-array p1, p1, [Lorg/h2/bnf/context/DbColumn;

    iput-object p1, p0, Lorg/h2/bnf/context/DbTableOrView;->columns:[Lorg/h2/bnf/context/DbColumn;

    .line 102
    iget-object p1, p0, Lorg/h2/bnf/context/DbTableOrView;->columns:[Lorg/h2/bnf/context/DbColumn;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    return-void
.end method
