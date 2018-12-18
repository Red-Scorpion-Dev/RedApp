.class public Lorg/h2/fulltext/FullText$FullTextTrigger;
.super Ljava/lang/Object;
.source "FullText.java"

# interfaces
.implements Lorg/h2/api/Trigger;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/h2/fulltext/FullText;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "FullTextTrigger"
.end annotation


# instance fields
.field protected columnTypes:[I

.field protected index:Lorg/h2/fulltext/IndexInfo;

.field protected prepDeleteMap:Ljava/sql/PreparedStatement;

.field protected prepDeleteRow:Ljava/sql/PreparedStatement;

.field protected prepInsertMap:Ljava/sql/PreparedStatement;

.field protected prepInsertRow:Ljava/sql/PreparedStatement;

.field protected prepInsertWord:Ljava/sql/PreparedStatement;

.field protected prepSelectRow:Ljava/sql/PreparedStatement;

.field protected setting:Lorg/h2/fulltext/FullTextSettings;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 863
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private getKey([Ljava/lang/Object;)Ljava/lang/String;
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 1084
    new-instance v0, Lorg/h2/util/StatementBuilder;

    invoke-direct {v0}, Lorg/h2/util/StatementBuilder;-><init>()V

    .line 1085
    iget-object v1, p0, Lorg/h2/fulltext/FullText$FullTextTrigger;->index:Lorg/h2/fulltext/IndexInfo;

    iget-object v1, v1, Lorg/h2/fulltext/IndexInfo;->keys:[I

    array-length v2, v1

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_1

    aget v4, v1, v3

    const-string v5, " AND "

    .line 1086
    invoke-virtual {v0, v5}, Lorg/h2/util/StatementBuilder;->appendExceptFirst(Ljava/lang/String;)V

    .line 1087
    iget-object v5, p0, Lorg/h2/fulltext/FullText$FullTextTrigger;->index:Lorg/h2/fulltext/IndexInfo;

    iget-object v5, v5, Lorg/h2/fulltext/IndexInfo;->columns:[Ljava/lang/String;

    aget-object v5, v5, v4

    invoke-static {v5}, Lorg/h2/util/StringUtils;->quoteIdentifier(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Lorg/h2/util/StatementBuilder;->append(Ljava/lang/String;)Lorg/h2/util/StatementBuilder;

    .line 1088
    aget-object v5, p1, v4

    if-nez v5, :cond_0

    const-string v4, " IS NULL"

    .line 1090
    invoke-virtual {v0, v4}, Lorg/h2/util/StatementBuilder;->append(Ljava/lang/String;)Lorg/h2/util/StatementBuilder;

    goto :goto_1

    :cond_0
    const/16 v6, 0x3d

    .line 1092
    invoke-virtual {v0, v6}, Lorg/h2/util/StatementBuilder;->append(C)Lorg/h2/util/StatementBuilder;

    move-result-object v6

    iget-object v7, p0, Lorg/h2/fulltext/FullText$FullTextTrigger;->columnTypes:[I

    aget v4, v7, v4

    invoke-static {v5, v4}, Lorg/h2/fulltext/FullText;->quoteSQL(Ljava/lang/Object;I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v6, v4}, Lorg/h2/util/StatementBuilder;->append(Ljava/lang/String;)Lorg/h2/util/StatementBuilder;

    :goto_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 1095
    :cond_1
    invoke-virtual {v0}, Lorg/h2/util/StatementBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method private getWordIds([Ljava/lang/Object;)[I
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 1043
    invoke-static {}, Lorg/h2/util/New;->hashSet()Ljava/util/HashSet;

    move-result-object v0

    .line 1044
    iget-object v1, p0, Lorg/h2/fulltext/FullText$FullTextTrigger;->index:Lorg/h2/fulltext/IndexInfo;

    iget-object v1, v1, Lorg/h2/fulltext/IndexInfo;->indexColumns:[I

    array-length v2, v1

    const/4 v3, 0x0

    const/4 v4, 0x0

    :goto_0
    if-ge v4, v2, :cond_2

    aget v5, v1, v4

    .line 1045
    iget-object v6, p0, Lorg/h2/fulltext/FullText$FullTextTrigger;->columnTypes:[I

    aget v6, v6, v5

    .line 1046
    aget-object v5, p1, v5

    const/16 v7, 0x7d5

    if-ne v6, v7, :cond_1

    if-eqz v5, :cond_1

    .line 1049
    instance-of v6, v5, Ljava/io/Reader;

    if-eqz v6, :cond_0

    .line 1050
    check-cast v5, Ljava/io/Reader;

    goto :goto_1

    .line 1052
    :cond_0
    check-cast v5, Ljava/sql/Clob;

    invoke-interface {v5}, Ljava/sql/Clob;->getCharacterStream()Ljava/io/Reader;

    move-result-object v5

    .line 1054
    :goto_1
    iget-object v6, p0, Lorg/h2/fulltext/FullText$FullTextTrigger;->setting:Lorg/h2/fulltext/FullTextSettings;

    invoke-static {v6, v0, v5}, Lorg/h2/fulltext/FullText;->addWords(Lorg/h2/fulltext/FullTextSettings;Ljava/util/HashSet;Ljava/io/Reader;)V

    goto :goto_2

    .line 1056
    :cond_1
    invoke-static {v5, v6}, Lorg/h2/fulltext/FullText;->asString(Ljava/lang/Object;I)Ljava/lang/String;

    move-result-object v5

    .line 1057
    iget-object v6, p0, Lorg/h2/fulltext/FullText$FullTextTrigger;->setting:Lorg/h2/fulltext/FullTextSettings;

    invoke-static {v6, v0, v5}, Lorg/h2/fulltext/FullText;->addWords(Lorg/h2/fulltext/FullTextSettings;Ljava/util/HashSet;Ljava/lang/String;)V

    :goto_2
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 1060
    :cond_2
    iget-object p1, p0, Lorg/h2/fulltext/FullText$FullTextTrigger;->setting:Lorg/h2/fulltext/FullTextSettings;

    invoke-virtual {p1}, Lorg/h2/fulltext/FullTextSettings;->getWordList()Ljava/util/HashMap;

    move-result-object p1

    .line 1061
    invoke-virtual {v0}, Ljava/util/HashSet;->size()I

    move-result v1

    new-array v1, v1, [I

    .line 1062
    invoke-virtual {v0}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 1063
    :goto_3
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_4

    .line 1064
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 1065
    invoke-virtual {p1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    const/4 v5, 0x1

    if-nez v4, :cond_3

    .line 1068
    iget-object v4, p0, Lorg/h2/fulltext/FullText$FullTextTrigger;->prepInsertWord:Ljava/sql/PreparedStatement;

    invoke-interface {v4, v5, v2}, Ljava/sql/PreparedStatement;->setString(ILjava/lang/String;)V

    .line 1069
    iget-object v4, p0, Lorg/h2/fulltext/FullText$FullTextTrigger;->prepInsertWord:Ljava/sql/PreparedStatement;

    invoke-interface {v4}, Ljava/sql/PreparedStatement;->execute()Z

    .line 1070
    iget-object v4, p0, Lorg/h2/fulltext/FullText$FullTextTrigger;->prepInsertWord:Ljava/sql/PreparedStatement;

    invoke-interface {v4}, Ljava/sql/PreparedStatement;->getGeneratedKeys()Ljava/sql/ResultSet;

    move-result-object v4

    .line 1071
    invoke-interface {v4}, Ljava/sql/ResultSet;->next()Z

    .line 1072
    invoke-interface {v4, v5}, Ljava/sql/ResultSet;->getInt(I)I

    move-result v4

    .line 1073
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {p1, v2, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_4

    .line 1075
    :cond_3
    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    .line 1077
    :goto_4
    aput v4, v1, v3

    add-int/2addr v3, v5

    goto :goto_3

    .line 1079
    :cond_4
    invoke-static {v1}, Ljava/util/Arrays;->sort([I)V

    return-object v1
.end method


# virtual methods
.method public close()V
    .locals 2

    .line 981
    iget-object v0, p0, Lorg/h2/fulltext/FullText$FullTextTrigger;->setting:Lorg/h2/fulltext/FullTextSettings;

    iget-object v1, p0, Lorg/h2/fulltext/FullText$FullTextTrigger;->index:Lorg/h2/fulltext/IndexInfo;

    invoke-virtual {v0, v1}, Lorg/h2/fulltext/FullTextSettings;->removeIndexInfo(Lorg/h2/fulltext/IndexInfo;)V

    return-void
.end method

.method protected delete([Ljava/lang/Object;)V
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 1021
    invoke-direct {p0, p1}, Lorg/h2/fulltext/FullText$FullTextTrigger;->getKey([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 1022
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v1

    .line 1023
    iget-object v2, p0, Lorg/h2/fulltext/FullText$FullTextTrigger;->prepSelectRow:Ljava/sql/PreparedStatement;

    const/4 v3, 0x1

    invoke-interface {v2, v3, v1}, Ljava/sql/PreparedStatement;->setInt(II)V

    .line 1024
    iget-object v2, p0, Lorg/h2/fulltext/FullText$FullTextTrigger;->prepSelectRow:Ljava/sql/PreparedStatement;

    iget-object v4, p0, Lorg/h2/fulltext/FullText$FullTextTrigger;->index:Lorg/h2/fulltext/IndexInfo;

    iget v4, v4, Lorg/h2/fulltext/IndexInfo;->id:I

    const/4 v5, 0x2

    invoke-interface {v2, v5, v4}, Ljava/sql/PreparedStatement;->setInt(II)V

    .line 1025
    iget-object v2, p0, Lorg/h2/fulltext/FullText$FullTextTrigger;->prepSelectRow:Ljava/sql/PreparedStatement;

    const/4 v4, 0x3

    invoke-interface {v2, v4, v0}, Ljava/sql/PreparedStatement;->setString(ILjava/lang/String;)V

    .line 1026
    iget-object v2, p0, Lorg/h2/fulltext/FullText$FullTextTrigger;->prepSelectRow:Ljava/sql/PreparedStatement;

    invoke-interface {v2}, Ljava/sql/PreparedStatement;->executeQuery()Ljava/sql/ResultSet;

    move-result-object v2

    .line 1027
    invoke-interface {v2}, Ljava/sql/ResultSet;->next()Z

    move-result v6

    if-eqz v6, :cond_1

    .line 1028
    invoke-interface {v2, v3}, Ljava/sql/ResultSet;->getInt(I)I

    move-result v2

    .line 1029
    iget-object v6, p0, Lorg/h2/fulltext/FullText$FullTextTrigger;->prepDeleteMap:Ljava/sql/PreparedStatement;

    invoke-interface {v6, v3, v2}, Ljava/sql/PreparedStatement;->setInt(II)V

    .line 1030
    invoke-direct {p0, p1}, Lorg/h2/fulltext/FullText$FullTextTrigger;->getWordIds([Ljava/lang/Object;)[I

    move-result-object p1

    .line 1031
    array-length v2, p1

    const/4 v6, 0x0

    :goto_0
    if-ge v6, v2, :cond_0

    aget v7, p1, v6

    .line 1032
    iget-object v8, p0, Lorg/h2/fulltext/FullText$FullTextTrigger;->prepDeleteMap:Ljava/sql/PreparedStatement;

    invoke-interface {v8, v5, v7}, Ljava/sql/PreparedStatement;->setInt(II)V

    .line 1033
    iget-object v7, p0, Lorg/h2/fulltext/FullText$FullTextTrigger;->prepDeleteMap:Ljava/sql/PreparedStatement;

    invoke-interface {v7}, Ljava/sql/PreparedStatement;->executeUpdate()I

    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    .line 1035
    :cond_0
    iget-object p1, p0, Lorg/h2/fulltext/FullText$FullTextTrigger;->prepDeleteRow:Ljava/sql/PreparedStatement;

    invoke-interface {p1, v3, v1}, Ljava/sql/PreparedStatement;->setInt(II)V

    .line 1036
    iget-object p1, p0, Lorg/h2/fulltext/FullText$FullTextTrigger;->prepDeleteRow:Ljava/sql/PreparedStatement;

    iget-object v1, p0, Lorg/h2/fulltext/FullText$FullTextTrigger;->index:Lorg/h2/fulltext/IndexInfo;

    iget v1, v1, Lorg/h2/fulltext/IndexInfo;->id:I

    invoke-interface {p1, v5, v1}, Ljava/sql/PreparedStatement;->setInt(II)V

    .line 1037
    iget-object p1, p0, Lorg/h2/fulltext/FullText$FullTextTrigger;->prepDeleteRow:Ljava/sql/PreparedStatement;

    invoke-interface {p1, v4, v0}, Ljava/sql/PreparedStatement;->setString(ILjava/lang/String;)V

    .line 1038
    iget-object p1, p0, Lorg/h2/fulltext/FullText$FullTextTrigger;->prepDeleteRow:Ljava/sql/PreparedStatement;

    invoke-interface {p1}, Ljava/sql/PreparedStatement;->executeUpdate()I

    :cond_1
    return-void
.end method

.method public fire(Ljava/sql/Connection;[Ljava/lang/Object;[Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    if-eqz p2, :cond_1

    if-eqz p3, :cond_0

    .line 962
    iget-object p1, p0, Lorg/h2/fulltext/FullText$FullTextTrigger;->index:Lorg/h2/fulltext/IndexInfo;

    iget-object p1, p1, Lorg/h2/fulltext/IndexInfo;->indexColumns:[I

    invoke-static {p2, p3, p1}, Lorg/h2/fulltext/FullText;->hasChanged([Ljava/lang/Object;[Ljava/lang/Object;[I)Z

    move-result p1

    if-eqz p1, :cond_2

    .line 963
    invoke-virtual {p0, p2}, Lorg/h2/fulltext/FullText$FullTextTrigger;->delete([Ljava/lang/Object;)V

    .line 964
    invoke-virtual {p0, p3}, Lorg/h2/fulltext/FullText$FullTextTrigger;->insert([Ljava/lang/Object;)V

    goto :goto_0

    .line 968
    :cond_0
    invoke-virtual {p0, p2}, Lorg/h2/fulltext/FullText$FullTextTrigger;->delete([Ljava/lang/Object;)V

    goto :goto_0

    :cond_1
    if-eqz p3, :cond_2

    .line 972
    invoke-virtual {p0, p3}, Lorg/h2/fulltext/FullText$FullTextTrigger;->insert([Ljava/lang/Object;)V

    :cond_2
    :goto_0
    return-void
.end method

.method public init(Ljava/sql/Connection;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZI)V
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 878
    invoke-static {p1}, Lorg/h2/fulltext/FullTextSettings;->getInstance(Ljava/sql/Connection;)Lorg/h2/fulltext/FullTextSettings;

    move-result-object p3

    iput-object p3, p0, Lorg/h2/fulltext/FullText$FullTextTrigger;->setting:Lorg/h2/fulltext/FullTextSettings;

    .line 879
    iget-object p3, p0, Lorg/h2/fulltext/FullText$FullTextTrigger;->setting:Lorg/h2/fulltext/FullTextSettings;

    invoke-virtual {p3}, Lorg/h2/fulltext/FullTextSettings;->isInitialized()Z

    move-result p3

    if-nez p3, :cond_0

    .line 880
    invoke-static {p1}, Lorg/h2/fulltext/FullText;->init(Ljava/sql/Connection;)V

    .line 882
    :cond_0
    invoke-static {}, Lorg/h2/util/New;->arrayList()Ljava/util/ArrayList;

    move-result-object p3

    .line 883
    invoke-interface {p1}, Ljava/sql/Connection;->getMetaData()Ljava/sql/DatabaseMetaData;

    move-result-object p5

    .line 884
    invoke-static {p2}, Lorg/h2/util/StringUtils;->escapeMetaDataPattern(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p6

    invoke-static {p4}, Lorg/h2/util/StringUtils;->escapeMetaDataPattern(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    invoke-interface {p5, v1, p6, v0, v1}, Ljava/sql/DatabaseMetaData;->getColumns(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/sql/ResultSet;

    move-result-object p6

    .line 888
    invoke-static {}, Lorg/h2/util/New;->arrayList()Ljava/util/ArrayList;

    move-result-object v0

    .line 889
    :goto_0
    invoke-interface {p6}, Ljava/sql/ResultSet;->next()Z

    move-result v2

    if-eqz v2, :cond_1

    const-string v2, "COLUMN_NAME"

    .line 890
    invoke-interface {p6, v2}, Ljava/sql/ResultSet;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 892
    :cond_1
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result p6

    new-array p6, p6, [I

    iput-object p6, p0, Lorg/h2/fulltext/FullText$FullTextTrigger;->columnTypes:[I

    .line 893
    new-instance p6, Lorg/h2/fulltext/IndexInfo;

    invoke-direct {p6}, Lorg/h2/fulltext/IndexInfo;-><init>()V

    iput-object p6, p0, Lorg/h2/fulltext/FullText$FullTextTrigger;->index:Lorg/h2/fulltext/IndexInfo;

    .line 894
    iget-object p6, p0, Lorg/h2/fulltext/FullText$FullTextTrigger;->index:Lorg/h2/fulltext/IndexInfo;

    iput-object p2, p6, Lorg/h2/fulltext/IndexInfo;->schema:Ljava/lang/String;

    .line 895
    iget-object p6, p0, Lorg/h2/fulltext/FullText$FullTextTrigger;->index:Lorg/h2/fulltext/IndexInfo;

    iput-object p4, p6, Lorg/h2/fulltext/IndexInfo;->table:Ljava/lang/String;

    .line 896
    iget-object p6, p0, Lorg/h2/fulltext/FullText$FullTextTrigger;->index:Lorg/h2/fulltext/IndexInfo;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v2

    new-array v2, v2, [Ljava/lang/String;

    iput-object v2, p6, Lorg/h2/fulltext/IndexInfo;->columns:[Ljava/lang/String;

    .line 897
    iget-object p6, p0, Lorg/h2/fulltext/FullText$FullTextTrigger;->index:Lorg/h2/fulltext/IndexInfo;

    iget-object p6, p6, Lorg/h2/fulltext/IndexInfo;->columns:[Ljava/lang/String;

    invoke-virtual {v0, p6}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    .line 898
    invoke-static {p2}, Lorg/h2/util/StringUtils;->escapeMetaDataPattern(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p6

    invoke-static {p4}, Lorg/h2/util/StringUtils;->escapeMetaDataPattern(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-interface {p5, v1, p6, v2, v1}, Ljava/sql/DatabaseMetaData;->getColumns(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/sql/ResultSet;

    move-result-object p6

    const/4 v2, 0x0

    const/4 v3, 0x0

    .line 902
    :goto_1
    invoke-interface {p6}, Ljava/sql/ResultSet;->next()Z

    move-result v4

    const/4 v5, 0x1

    if-eqz v4, :cond_2

    .line 903
    iget-object v4, p0, Lorg/h2/fulltext/FullText$FullTextTrigger;->columnTypes:[I

    const-string v6, "DATA_TYPE"

    invoke-interface {p6, v6}, Ljava/sql/ResultSet;->getInt(Ljava/lang/String;)I

    move-result v6

    aput v6, v4, v3

    add-int/2addr v3, v5

    goto :goto_1

    .line 905
    :cond_2
    invoke-virtual {p3}, Ljava/util/ArrayList;->size()I

    move-result p6

    if-nez p6, :cond_3

    .line 906
    invoke-static {p2}, Lorg/h2/util/StringUtils;->escapeMetaDataPattern(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p6

    invoke-interface {p5, v1, p6, p4}, Ljava/sql/DatabaseMetaData;->getPrimaryKeys(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/sql/ResultSet;

    move-result-object p5

    .line 909
    :goto_2
    invoke-interface {p5}, Ljava/sql/ResultSet;->next()Z

    move-result p6

    if-eqz p6, :cond_3

    const-string p6, "COLUMN_NAME"

    .line 910
    invoke-interface {p5, p6}, Ljava/sql/ResultSet;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p6

    invoke-virtual {p3, p6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 913
    :cond_3
    invoke-virtual {p3}, Ljava/util/ArrayList;->size()I

    move-result p5

    if-eqz p5, :cond_6

    .line 916
    invoke-static {}, Lorg/h2/util/New;->arrayList()Ljava/util/ArrayList;

    move-result-object p5

    const-string p6, "SELECT ID, COLUMNS FROM FT.INDEXES WHERE SCHEMA=? AND TABLE=?"

    .line 917
    invoke-interface {p1, p6}, Ljava/sql/Connection;->prepareStatement(Ljava/lang/String;)Ljava/sql/PreparedStatement;

    move-result-object p6

    .line 919
    invoke-interface {p6, v5, p2}, Ljava/sql/PreparedStatement;->setString(ILjava/lang/String;)V

    const/4 p2, 0x2

    .line 920
    invoke-interface {p6, p2, p4}, Ljava/sql/PreparedStatement;->setString(ILjava/lang/String;)V

    .line 921
    invoke-interface {p6}, Ljava/sql/PreparedStatement;->executeQuery()Ljava/sql/ResultSet;

    move-result-object p4

    .line 922
    invoke-interface {p4}, Ljava/sql/ResultSet;->next()Z

    move-result p6

    if-eqz p6, :cond_4

    .line 923
    iget-object p6, p0, Lorg/h2/fulltext/FullText$FullTextTrigger;->index:Lorg/h2/fulltext/IndexInfo;

    invoke-interface {p4, v5}, Ljava/sql/ResultSet;->getInt(I)I

    move-result v1

    iput v1, p6, Lorg/h2/fulltext/IndexInfo;->id:I

    .line 924
    invoke-interface {p4, p2}, Ljava/sql/ResultSet;->getString(I)Ljava/lang/String;

    move-result-object p2

    if-eqz p2, :cond_4

    const/16 p4, 0x2c

    .line 926
    invoke-static {p2, p4, v5}, Lorg/h2/util/StringUtils;->arraySplit(Ljava/lang/String;CZ)[Ljava/lang/String;

    move-result-object p2

    array-length p4, p2

    :goto_3
    if-ge v2, p4, :cond_4

    aget-object p6, p2, v2

    .line 927
    invoke-virtual {p5, p6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v2, v2, 0x1

    goto :goto_3

    .line 931
    :cond_4
    invoke-virtual {p5}, Ljava/util/ArrayList;->size()I

    move-result p2

    if-nez p2, :cond_5

    .line 932
    invoke-virtual {p5, v0}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 934
    :cond_5
    iget-object p2, p0, Lorg/h2/fulltext/FullText$FullTextTrigger;->index:Lorg/h2/fulltext/IndexInfo;

    invoke-virtual {p3}, Ljava/util/ArrayList;->size()I

    move-result p4

    new-array p4, p4, [I

    iput-object p4, p2, Lorg/h2/fulltext/IndexInfo;->keys:[I

    .line 935
    iget-object p2, p0, Lorg/h2/fulltext/FullText$FullTextTrigger;->index:Lorg/h2/fulltext/IndexInfo;

    iget-object p2, p2, Lorg/h2/fulltext/IndexInfo;->keys:[I

    invoke-static {p2, p3, v0}, Lorg/h2/fulltext/FullText;->setColumns([ILjava/util/ArrayList;Ljava/util/ArrayList;)V

    .line 936
    iget-object p2, p0, Lorg/h2/fulltext/FullText$FullTextTrigger;->index:Lorg/h2/fulltext/IndexInfo;

    invoke-virtual {p5}, Ljava/util/ArrayList;->size()I

    move-result p3

    new-array p3, p3, [I

    iput-object p3, p2, Lorg/h2/fulltext/IndexInfo;->indexColumns:[I

    .line 937
    iget-object p2, p0, Lorg/h2/fulltext/FullText$FullTextTrigger;->index:Lorg/h2/fulltext/IndexInfo;

    iget-object p2, p2, Lorg/h2/fulltext/IndexInfo;->indexColumns:[I

    invoke-static {p2, p5, v0}, Lorg/h2/fulltext/FullText;->setColumns([ILjava/util/ArrayList;Ljava/util/ArrayList;)V

    .line 938
    iget-object p2, p0, Lorg/h2/fulltext/FullText$FullTextTrigger;->setting:Lorg/h2/fulltext/FullTextSettings;

    iget-object p3, p0, Lorg/h2/fulltext/FullText$FullTextTrigger;->index:Lorg/h2/fulltext/IndexInfo;

    invoke-virtual {p2, p3}, Lorg/h2/fulltext/FullTextSettings;->addIndexInfo(Lorg/h2/fulltext/IndexInfo;)V

    const-string p2, "INSERT INTO FT.WORDS(NAME) VALUES(?)"

    .line 939
    invoke-interface {p1, p2}, Ljava/sql/Connection;->prepareStatement(Ljava/lang/String;)Ljava/sql/PreparedStatement;

    move-result-object p2

    iput-object p2, p0, Lorg/h2/fulltext/FullText$FullTextTrigger;->prepInsertWord:Ljava/sql/PreparedStatement;

    const-string p2, "INSERT INTO FT.ROWS(HASH, INDEXID, KEY) VALUES(?, ?, ?)"

    .line 941
    invoke-interface {p1, p2}, Ljava/sql/Connection;->prepareStatement(Ljava/lang/String;)Ljava/sql/PreparedStatement;

    move-result-object p2

    iput-object p2, p0, Lorg/h2/fulltext/FullText$FullTextTrigger;->prepInsertRow:Ljava/sql/PreparedStatement;

    const-string p2, "INSERT INTO FT.MAP(ROWID, WORDID) VALUES(?, ?)"

    .line 943
    invoke-interface {p1, p2}, Ljava/sql/Connection;->prepareStatement(Ljava/lang/String;)Ljava/sql/PreparedStatement;

    move-result-object p2

    iput-object p2, p0, Lorg/h2/fulltext/FullText$FullTextTrigger;->prepInsertMap:Ljava/sql/PreparedStatement;

    const-string p2, "DELETE FROM FT.ROWS WHERE HASH=? AND INDEXID=? AND KEY=?"

    .line 945
    invoke-interface {p1, p2}, Ljava/sql/Connection;->prepareStatement(Ljava/lang/String;)Ljava/sql/PreparedStatement;

    move-result-object p2

    iput-object p2, p0, Lorg/h2/fulltext/FullText$FullTextTrigger;->prepDeleteRow:Ljava/sql/PreparedStatement;

    const-string p2, "DELETE FROM FT.MAP WHERE ROWID=? AND WORDID=?"

    .line 947
    invoke-interface {p1, p2}, Ljava/sql/Connection;->prepareStatement(Ljava/lang/String;)Ljava/sql/PreparedStatement;

    move-result-object p2

    iput-object p2, p0, Lorg/h2/fulltext/FullText$FullTextTrigger;->prepDeleteMap:Ljava/sql/PreparedStatement;

    const-string p2, "SELECT ID FROM FT.ROWS WHERE HASH=? AND INDEXID=? AND KEY=?"

    .line 949
    invoke-interface {p1, p2}, Ljava/sql/Connection;->prepareStatement(Ljava/lang/String;)Ljava/sql/PreparedStatement;

    move-result-object p1

    iput-object p1, p0, Lorg/h2/fulltext/FullText$FullTextTrigger;->prepSelectRow:Ljava/sql/PreparedStatement;

    return-void

    .line 914
    :cond_6
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "No primary key for table "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lorg/h2/fulltext/FullText;->throwException(Ljava/lang/String;)Ljava/sql/SQLException;

    move-result-object p1

    throw p1
.end method

.method protected insert([Ljava/lang/Object;)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 998
    invoke-direct {p0, p1}, Lorg/h2/fulltext/FullText$FullTextTrigger;->getKey([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 999
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v1

    .line 1000
    iget-object v2, p0, Lorg/h2/fulltext/FullText$FullTextTrigger;->prepInsertRow:Ljava/sql/PreparedStatement;

    const/4 v3, 0x1

    invoke-interface {v2, v3, v1}, Ljava/sql/PreparedStatement;->setInt(II)V

    .line 1001
    iget-object v1, p0, Lorg/h2/fulltext/FullText$FullTextTrigger;->prepInsertRow:Ljava/sql/PreparedStatement;

    iget-object v2, p0, Lorg/h2/fulltext/FullText$FullTextTrigger;->index:Lorg/h2/fulltext/IndexInfo;

    iget v2, v2, Lorg/h2/fulltext/IndexInfo;->id:I

    const/4 v4, 0x2

    invoke-interface {v1, v4, v2}, Ljava/sql/PreparedStatement;->setInt(II)V

    .line 1002
    iget-object v1, p0, Lorg/h2/fulltext/FullText$FullTextTrigger;->prepInsertRow:Ljava/sql/PreparedStatement;

    const/4 v2, 0x3

    invoke-interface {v1, v2, v0}, Ljava/sql/PreparedStatement;->setString(ILjava/lang/String;)V

    .line 1003
    iget-object v0, p0, Lorg/h2/fulltext/FullText$FullTextTrigger;->prepInsertRow:Ljava/sql/PreparedStatement;

    invoke-interface {v0}, Ljava/sql/PreparedStatement;->execute()Z

    .line 1004
    iget-object v0, p0, Lorg/h2/fulltext/FullText$FullTextTrigger;->prepInsertRow:Ljava/sql/PreparedStatement;

    invoke-interface {v0}, Ljava/sql/PreparedStatement;->getGeneratedKeys()Ljava/sql/ResultSet;

    move-result-object v0

    .line 1005
    invoke-interface {v0}, Ljava/sql/ResultSet;->next()Z

    .line 1006
    invoke-interface {v0, v3}, Ljava/sql/ResultSet;->getInt(I)I

    move-result v0

    .line 1007
    iget-object v1, p0, Lorg/h2/fulltext/FullText$FullTextTrigger;->prepInsertMap:Ljava/sql/PreparedStatement;

    invoke-interface {v1, v3, v0}, Ljava/sql/PreparedStatement;->setInt(II)V

    .line 1008
    invoke-direct {p0, p1}, Lorg/h2/fulltext/FullText$FullTextTrigger;->getWordIds([Ljava/lang/Object;)[I

    move-result-object p1

    .line 1009
    array-length v0, p1

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    aget v2, p1, v1

    .line 1010
    iget-object v3, p0, Lorg/h2/fulltext/FullText$FullTextTrigger;->prepInsertMap:Ljava/sql/PreparedStatement;

    invoke-interface {v3, v4, v2}, Ljava/sql/PreparedStatement;->setInt(II)V

    .line 1011
    iget-object v2, p0, Lorg/h2/fulltext/FullText$FullTextTrigger;->prepInsertMap:Ljava/sql/PreparedStatement;

    invoke-interface {v2}, Ljava/sql/PreparedStatement;->execute()Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public remove()V
    .locals 2

    .line 989
    iget-object v0, p0, Lorg/h2/fulltext/FullText$FullTextTrigger;->setting:Lorg/h2/fulltext/FullTextSettings;

    iget-object v1, p0, Lorg/h2/fulltext/FullText$FullTextTrigger;->index:Lorg/h2/fulltext/IndexInfo;

    invoke-virtual {v0, v1}, Lorg/h2/fulltext/FullTextSettings;->removeIndexInfo(Lorg/h2/fulltext/IndexInfo;)V

    return-void
.end method
