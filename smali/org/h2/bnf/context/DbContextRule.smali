.class public Lorg/h2/bnf/context/DbContextRule;
.super Ljava/lang/Object;
.source "DbContextRule.java"

# interfaces
.implements Lorg/h2/bnf/Rule;


# static fields
.field public static final COLUMN:I = 0x0

.field public static final COLUMN_ALIAS:I = 0x4

.field public static final NEW_TABLE_ALIAS:I = 0x3

.field public static final PROCEDURE:I = 0x6

.field public static final SCHEMA:I = 0x5

.field public static final TABLE:I = 0x1

.field public static final TABLE_ALIAS:I = 0x2


# instance fields
.field private columnType:Ljava/lang/String;

.field private final contents:Lorg/h2/bnf/context/DbContents;

.field private final type:I


# direct methods
.method public constructor <init>(Lorg/h2/bnf/context/DbContents;I)V
    .locals 0

    .line 48
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 49
    iput-object p1, p0, Lorg/h2/bnf/context/DbContextRule;->contents:Lorg/h2/bnf/context/DbContents;

    .line 50
    iput p2, p0, Lorg/h2/bnf/context/DbContextRule;->type:I

    return-void
.end method

.method private autoCompleteProcedure(Lorg/h2/bnf/Sentence;)V
    .locals 17

    move-object/from16 v0, p0

    .line 241
    invoke-virtual/range {p1 .. p1}, Lorg/h2/bnf/Sentence;->getLastMatchedSchema()Lorg/h2/bnf/context/DbSchema;

    move-result-object v1

    if-nez v1, :cond_0

    .line 243
    iget-object v1, v0, Lorg/h2/bnf/context/DbContextRule;->contents:Lorg/h2/bnf/context/DbContents;

    invoke-virtual {v1}, Lorg/h2/bnf/context/DbContents;->getDefaultSchema()Lorg/h2/bnf/context/DbSchema;

    move-result-object v1

    .line 245
    :cond_0
    invoke-virtual/range {p1 .. p1}, Lorg/h2/bnf/Sentence;->getQueryUpper()Ljava/lang/String;

    move-result-object v2

    const-string v3, "("

    .line 247
    invoke-virtual {v2, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    const/16 v4, 0x28

    const/4 v5, 0x0

    if-eqz v3, :cond_1

    .line 248
    invoke-virtual {v2, v4}, Ljava/lang/String;->indexOf(I)I

    move-result v3

    invoke-virtual {v2, v5, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v3

    goto :goto_0

    :cond_1
    move-object v3, v2

    .line 253
    :goto_0
    new-instance v6, Lorg/h2/bnf/RuleElement;

    const-string v7, "("

    const-string v8, "Function"

    invoke-direct {v6, v7, v8}, Lorg/h2/bnf/RuleElement;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 254
    new-instance v7, Lorg/h2/bnf/RuleElement;

    const-string v8, ")"

    const-string v9, "Function"

    invoke-direct {v7, v8, v9}, Lorg/h2/bnf/RuleElement;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 255
    new-instance v8, Lorg/h2/bnf/RuleElement;

    const-string v9, ","

    const-string v10, "Function"

    invoke-direct {v8, v9, v10}, Lorg/h2/bnf/RuleElement;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 258
    invoke-virtual {v1}, Lorg/h2/bnf/context/DbSchema;->getProcedures()[Lorg/h2/bnf/context/DbProcedure;

    move-result-object v1

    array-length v9, v1

    const/4 v10, 0x0

    :goto_1
    if-ge v10, v9, :cond_7

    aget-object v11, v1, v10

    .line 259
    invoke-virtual {v11}, Lorg/h2/bnf/context/DbProcedure;->getName()Ljava/lang/String;

    move-result-object v12

    .line 260
    invoke-virtual {v12, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v13

    if-eqz v13, :cond_6

    .line 262
    new-instance v13, Lorg/h2/bnf/RuleElement;

    const-string v14, "Function"

    invoke-direct {v13, v12, v14}, Lorg/h2/bnf/RuleElement;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 264
    new-instance v12, Lorg/h2/bnf/RuleList;

    invoke-direct {v12, v13, v6, v5}, Lorg/h2/bnf/RuleList;-><init>(Lorg/h2/bnf/Rule;Lorg/h2/bnf/Rule;Z)V

    const-string v13, "("

    .line 266
    invoke-virtual {v2, v13}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v13

    if-eqz v13, :cond_5

    .line 267
    invoke-virtual {v11}, Lorg/h2/bnf/context/DbProcedure;->getParameters()[Lorg/h2/bnf/context/DbColumn;

    move-result-object v11

    array-length v13, v11

    move-object v14, v12

    const/4 v12, 0x0

    :goto_2
    if-ge v12, v13, :cond_4

    aget-object v15, v11, v12

    .line 268
    invoke-virtual {v15}, Lorg/h2/bnf/context/DbColumn;->getPosition()I

    move-result v4

    const/4 v5, 0x1

    if-le v4, v5, :cond_2

    .line 269
    new-instance v4, Lorg/h2/bnf/RuleList;

    const/4 v5, 0x0

    invoke-direct {v4, v14, v8, v5}, Lorg/h2/bnf/RuleList;-><init>(Lorg/h2/bnf/Rule;Lorg/h2/bnf/Rule;Z)V

    move-object v14, v4

    goto :goto_3

    :cond_2
    const/4 v5, 0x0

    .line 271
    :goto_3
    new-instance v4, Lorg/h2/bnf/context/DbContextRule;

    move-object/from16 v16, v1

    iget-object v1, v0, Lorg/h2/bnf/context/DbContextRule;->contents:Lorg/h2/bnf/context/DbContents;

    invoke-direct {v4, v1, v5}, Lorg/h2/bnf/context/DbContextRule;-><init>(Lorg/h2/bnf/context/DbContents;I)V

    .line 273
    invoke-virtual {v15}, Lorg/h2/bnf/context/DbColumn;->getDataType()Ljava/lang/String;

    move-result-object v1

    const-string v15, "("

    .line 275
    invoke-virtual {v1, v15}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v15

    if-eqz v15, :cond_3

    const/16 v15, 0x28

    .line 276
    invoke-virtual {v1, v15}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    invoke-virtual {v1, v5, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    goto :goto_4

    :cond_3
    const/16 v15, 0x28

    .line 279
    :goto_4
    invoke-virtual {v4, v1}, Lorg/h2/bnf/context/DbContextRule;->setColumnType(Ljava/lang/String;)V

    .line 280
    new-instance v0, Lorg/h2/bnf/RuleList;

    invoke-direct {v0, v14, v4, v5}, Lorg/h2/bnf/RuleList;-><init>(Lorg/h2/bnf/Rule;Lorg/h2/bnf/Rule;Z)V

    add-int/lit8 v12, v12, 0x1

    move-object v14, v0

    move-object/from16 v1, v16

    move-object/from16 v0, p0

    const/16 v4, 0x28

    goto :goto_2

    :cond_4
    move-object/from16 v16, v1

    const/16 v15, 0x28

    .line 282
    new-instance v12, Lorg/h2/bnf/RuleList;

    invoke-direct {v12, v14, v7, v5}, Lorg/h2/bnf/RuleList;-><init>(Lorg/h2/bnf/Rule;Lorg/h2/bnf/Rule;Z)V

    goto :goto_5

    :cond_5
    move-object/from16 v16, v1

    const/16 v15, 0x28

    :goto_5
    move-object/from16 v0, p1

    .line 284
    invoke-virtual {v12, v0}, Lorg/h2/bnf/RuleList;->autoComplete(Lorg/h2/bnf/Sentence;)Z

    goto :goto_6

    :cond_6
    move-object/from16 v0, p1

    move-object/from16 v16, v1

    const/16 v15, 0x28

    :goto_6
    add-int/lit8 v10, v10, 0x1

    move-object/from16 v1, v16

    move-object/from16 v0, p0

    const/16 v4, 0x28

    goto/16 :goto_1

    :cond_7
    return-void
.end method

.method private static autoCompleteTableAlias(Lorg/h2/bnf/Sentence;Z)Ljava/lang/String;
    .locals 8

    .line 291
    invoke-virtual {p0}, Lorg/h2/bnf/Sentence;->getQuery()Ljava/lang/String;

    move-result-object v0

    .line 292
    invoke-virtual {p0}, Lorg/h2/bnf/Sentence;->getQueryUpper()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    const/4 v3, 0x0

    .line 294
    :goto_0
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v4

    if-ge v3, v4, :cond_1

    .line 295
    invoke-virtual {v1, v3}, Ljava/lang/String;->charAt(I)C

    move-result v4

    const/16 v5, 0x5f

    if-eq v4, v5, :cond_0

    .line 296
    invoke-static {v4}, Ljava/lang/Character;->isLetterOrDigit(C)Z

    move-result v4

    if-nez v4, :cond_0

    goto :goto_1

    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_1
    :goto_1
    if-nez v3, :cond_2

    return-object v0

    .line 303
    :cond_2
    invoke-virtual {v1, v2, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    const-string v3, "SET"

    .line 304
    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_11

    const/4 v3, 0x1

    invoke-static {v1, v3}, Lorg/h2/command/Parser;->isKeyword(Ljava/lang/String;Z)Z

    move-result v3

    if-eqz v3, :cond_3

    goto/16 :goto_3

    :cond_3
    if-eqz p1, :cond_4

    .line 308
    invoke-virtual {p0}, Lorg/h2/bnf/Sentence;->getLastTable()Lorg/h2/bnf/context/DbTableOrView;

    move-result-object v3

    invoke-virtual {p0, v1, v3}, Lorg/h2/bnf/Sentence;->addAlias(Ljava/lang/String;Lorg/h2/bnf/context/DbTableOrView;)V

    .line 310
    :cond_4
    invoke-virtual {p0}, Lorg/h2/bnf/Sentence;->getAliases()Ljava/util/HashMap;

    move-result-object v3

    if-eqz v3, :cond_5

    .line 311
    invoke-virtual {v3, v1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_6

    :cond_5
    invoke-virtual {p0}, Lorg/h2/bnf/Sentence;->getLastTable()Lorg/h2/bnf/context/DbTableOrView;

    move-result-object v3

    if-nez v3, :cond_9

    :cond_6
    if-eqz p1, :cond_7

    .line 313
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result p1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v3

    if-ne p1, v3, :cond_7

    return-object v0

    .line 316
    :cond_7
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result p1

    invoke-virtual {v0, p1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p1

    .line 317
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_8

    .line 318
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "."

    invoke-virtual {p0, v0, v1, v2}, Lorg/h2/bnf/Sentence;->add(Ljava/lang/String;Ljava/lang/String;I)V

    :cond_8
    return-object p1

    .line 322
    :cond_9
    invoke-virtual {p0}, Lorg/h2/bnf/Sentence;->getTables()Ljava/util/HashSet;

    move-result-object p1

    if-eqz p1, :cond_10

    const/4 v3, 0x0

    .line 325
    invoke-virtual {p1}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_a
    :goto_2
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_e

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/h2/bnf/context/DbTableOrView;

    .line 326
    invoke-virtual {v4}, Lorg/h2/bnf/context/DbTableOrView;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lorg/h2/util/StringUtils;->toUpperEnglish(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 328
    invoke-virtual {v1, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_c

    if-eqz v3, :cond_b

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v6

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v7

    if-le v6, v7, :cond_c

    .line 330
    :cond_b
    invoke-virtual {p0, v4}, Lorg/h2/bnf/Sentence;->setLastMatchedTable(Lorg/h2/bnf/context/DbTableOrView;)V

    move-object v3, v5

    goto :goto_2

    .line 332
    :cond_c
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v4

    if-eqz v4, :cond_d

    invoke-virtual {v5, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_a

    .line 333
    :cond_d
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, "."

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v7

    invoke-virtual {v5, v7}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, "."

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p0, v4, v5, v2}, Lorg/h2/bnf/Sentence;->add(Ljava/lang/String;Ljava/lang/String;I)V

    goto :goto_2

    :cond_e
    if-eqz v3, :cond_10

    .line 339
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result p1

    invoke-virtual {v0, p1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p1

    .line 340
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_f

    .line 341
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "."

    invoke-virtual {p0, v0, v1, v2}, Lorg/h2/bnf/Sentence;->add(Ljava/lang/String;Ljava/lang/String;I)V

    :cond_f
    return-object p1

    :cond_10
    return-object v0

    :cond_11
    :goto_3
    return-object v0
.end method


# virtual methods
.method public accept(Lorg/h2/bnf/BnfVisitor;)V
    .locals 0

    return-void
.end method

.method public autoComplete(Lorg/h2/bnf/Sentence;)Z
    .locals 21

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    .line 72
    invoke-virtual/range {p1 .. p1}, Lorg/h2/bnf/Sentence;->getQuery()Ljava/lang/String;

    move-result-object v2

    .line 73
    invoke-virtual/range {p1 .. p1}, Lorg/h2/bnf/Sentence;->getQueryUpper()Ljava/lang/String;

    move-result-object v3

    .line 74
    iget v4, v0, Lorg/h2/bnf/context/DbContextRule;->type:I

    const/4 v5, 0x0

    const/4 v6, 0x1

    const/4 v7, 0x0

    packed-switch v4, :pswitch_data_0

    .line 229
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "type="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, v0, Lorg/h2/bnf/context/DbContextRule;->type:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lorg/h2/message/DbException;->throwInternalError(Ljava/lang/String;)Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1

    .line 226
    :pswitch_0
    invoke-direct/range {p0 .. p1}, Lorg/h2/bnf/context/DbContextRule;->autoCompleteProcedure(Lorg/h2/bnf/Sentence;)V

    goto/16 :goto_12

    .line 76
    :pswitch_1
    iget-object v4, v0, Lorg/h2/bnf/context/DbContextRule;->contents:Lorg/h2/bnf/context/DbContents;

    invoke-virtual {v4}, Lorg/h2/bnf/context/DbContents;->getSchemas()[Lorg/h2/bnf/context/DbSchema;

    move-result-object v4

    .line 79
    array-length v8, v4

    move-object v9, v5

    move-object v10, v9

    const/4 v5, 0x0

    :goto_0
    if-ge v5, v8, :cond_4

    aget-object v11, v4, v5

    .line 80
    iget-object v12, v11, Lorg/h2/bnf/context/DbSchema;->name:Ljava/lang/String;

    invoke-static {v12}, Lorg/h2/util/StringUtils;->toUpperEnglish(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    .line 81
    invoke-virtual {v3, v12}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v13

    if-eqz v13, :cond_1

    if-eqz v9, :cond_0

    .line 82
    invoke-virtual {v12}, Ljava/lang/String;->length()I

    move-result v13

    invoke-virtual {v9}, Ljava/lang/String;->length()I

    move-result v14

    if-le v13, v14, :cond_3

    :cond_0
    move-object v10, v11

    move-object v9, v12

    goto :goto_1

    .line 86
    :cond_1
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v13

    if-eqz v13, :cond_2

    invoke-virtual {v12, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v13

    if-eqz v13, :cond_3

    .line 87
    :cond_2
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v13

    invoke-virtual {v12}, Ljava/lang/String;->length()I

    move-result v14

    if-ge v13, v14, :cond_3

    .line 88
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v13

    invoke-virtual {v12, v13}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v13

    iget v14, v0, Lorg/h2/bnf/context/DbContextRule;->type:I

    invoke-virtual {v1, v12, v13, v14}, Lorg/h2/bnf/Sentence;->add(Ljava/lang/String;Ljava/lang/String;I)V

    .line 89
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v13, v11, Lorg/h2/bnf/context/DbSchema;->quotedName:Ljava/lang/String;

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v13, "."

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v11, v11, Lorg/h2/bnf/context/DbSchema;->quotedName:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v14

    invoke-virtual {v11, v14}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v13, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v11, "."

    invoke-virtual {v13, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v1, v12, v11, v7}, Lorg/h2/bnf/Sentence;->add(Ljava/lang/String;Ljava/lang/String;I)V

    :cond_3
    :goto_1
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    :cond_4
    if-eqz v9, :cond_24

    .line 96
    invoke-virtual {v1, v10}, Lorg/h2/bnf/Sentence;->setLastMatchedSchema(Lorg/h2/bnf/context/DbSchema;)V

    .line 97
    invoke-virtual {v9}, Ljava/lang/String;->length()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v3

    goto/16 :goto_13

    :pswitch_2
    const/16 v4, 0x20

    .line 144
    invoke-virtual {v2, v4}, Ljava/lang/String;->indexOf(I)I

    move-result v4

    if-gez v4, :cond_5

    goto/16 :goto_12

    :cond_5
    const/4 v4, 0x0

    .line 147
    :goto_2
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v5

    if-ge v4, v5, :cond_7

    .line 148
    invoke-virtual {v3, v4}, Ljava/lang/String;->charAt(I)C

    move-result v5

    const/16 v8, 0x5f

    if-eq v5, v8, :cond_6

    .line 149
    invoke-static {v5}, Ljava/lang/Character;->isLetterOrDigit(C)Z

    move-result v5

    if-nez v5, :cond_6

    goto :goto_3

    :cond_6
    add-int/lit8 v4, v4, 0x1

    goto :goto_2

    :cond_7
    :goto_3
    if-nez v4, :cond_8

    goto/16 :goto_12

    .line 156
    :cond_8
    invoke-virtual {v3, v7, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    .line 157
    invoke-static {v3, v6}, Lorg/h2/command/Parser;->isKeyword(Ljava/lang/String;Z)Z

    move-result v4

    if-eqz v4, :cond_9

    goto/16 :goto_12

    .line 160
    :cond_9
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v3

    goto/16 :goto_13

    .line 137
    :pswitch_3
    invoke-static {v1, v6}, Lorg/h2/bnf/context/DbContextRule;->autoCompleteTableAlias(Lorg/h2/bnf/Sentence;Z)Ljava/lang/String;

    move-result-object v3

    goto/16 :goto_13

    .line 140
    :pswitch_4
    invoke-static {v1, v7}, Lorg/h2/bnf/context/DbContextRule;->autoCompleteTableAlias(Lorg/h2/bnf/Sentence;Z)Ljava/lang/String;

    move-result-object v3

    goto/16 :goto_13

    .line 102
    :pswitch_5
    invoke-virtual/range {p1 .. p1}, Lorg/h2/bnf/Sentence;->getLastMatchedSchema()Lorg/h2/bnf/context/DbSchema;

    move-result-object v4

    if-nez v4, :cond_a

    .line 104
    iget-object v4, v0, Lorg/h2/bnf/context/DbContextRule;->contents:Lorg/h2/bnf/context/DbContents;

    invoke-virtual {v4}, Lorg/h2/bnf/context/DbContents;->getDefaultSchema()Lorg/h2/bnf/context/DbSchema;

    move-result-object v4

    .line 106
    :cond_a
    invoke-virtual {v4}, Lorg/h2/bnf/context/DbSchema;->getTables()[Lorg/h2/bnf/context/DbTableOrView;

    move-result-object v4

    .line 109
    array-length v8, v4

    move-object v9, v5

    move-object v10, v9

    const/4 v5, 0x0

    :goto_4
    if-ge v5, v8, :cond_10

    aget-object v11, v4, v5

    .line 111
    invoke-virtual {v11}, Lorg/h2/bnf/context/DbTableOrView;->getName()Ljava/lang/String;

    move-result-object v12

    invoke-static {v12}, Lorg/h2/util/StringUtils;->toUpperEnglish(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    .line 112
    invoke-virtual {v11}, Lorg/h2/bnf/context/DbTableOrView;->getQuotedName()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/String;->length()I

    move-result v13

    invoke-virtual {v12}, Ljava/lang/String;->length()I

    move-result v14

    if-le v13, v14, :cond_b

    .line 113
    invoke-virtual {v11}, Lorg/h2/bnf/context/DbTableOrView;->getQuotedName()Ljava/lang/String;

    move-result-object v12

    move-object v13, v12

    move-object v12, v2

    goto :goto_5

    :cond_b
    move-object v13, v12

    move-object v12, v3

    .line 116
    :goto_5
    invoke-virtual {v12, v13}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v14

    if-eqz v14, :cond_d

    if-eqz v9, :cond_c

    .line 117
    invoke-virtual {v13}, Ljava/lang/String;->length()I

    move-result v12

    invoke-virtual {v9}, Ljava/lang/String;->length()I

    move-result v14

    if-le v12, v14, :cond_f

    :cond_c
    move-object v10, v11

    move-object v9, v13

    goto :goto_6

    .line 121
    :cond_d
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v14

    if-eqz v14, :cond_e

    invoke-virtual {v13, v12}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v12

    if-eqz v12, :cond_f

    .line 122
    :cond_e
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v12

    invoke-virtual {v13}, Ljava/lang/String;->length()I

    move-result v13

    if-ge v12, v13, :cond_f

    .line 123
    invoke-virtual {v11}, Lorg/h2/bnf/context/DbTableOrView;->getQuotedName()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11}, Lorg/h2/bnf/context/DbTableOrView;->getQuotedName()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v13

    invoke-virtual {v11, v13}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v1, v12, v11, v7}, Lorg/h2/bnf/Sentence;->add(Ljava/lang/String;Ljava/lang/String;I)V

    :cond_f
    :goto_6
    add-int/lit8 v5, v5, 0x1

    goto :goto_4

    :cond_10
    if-eqz v9, :cond_24

    .line 130
    invoke-virtual {v1, v10}, Lorg/h2/bnf/Sentence;->setLastMatchedTable(Lorg/h2/bnf/context/DbTableOrView;)V

    .line 131
    invoke-virtual {v1, v10}, Lorg/h2/bnf/Sentence;->addTable(Lorg/h2/bnf/context/DbTableOrView;)V

    .line 132
    invoke-virtual {v9}, Ljava/lang/String;->length()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v3

    goto/16 :goto_13

    .line 164
    :pswitch_6
    invoke-virtual/range {p1 .. p1}, Lorg/h2/bnf/Sentence;->getTables()Ljava/util/HashSet;

    move-result-object v4

    .line 166
    invoke-virtual/range {p1 .. p1}, Lorg/h2/bnf/Sentence;->getLastMatchedTable()Lorg/h2/bnf/context/DbTableOrView;

    move-result-object v8

    if-eqz v8, :cond_18

    .line 167
    invoke-virtual {v8}, Lorg/h2/bnf/context/DbTableOrView;->getColumns()[Lorg/h2/bnf/context/DbColumn;

    move-result-object v9

    if-eqz v9, :cond_18

    .line 168
    invoke-virtual {v8}, Lorg/h2/bnf/context/DbTableOrView;->getColumns()[Lorg/h2/bnf/context/DbColumn;

    move-result-object v9

    array-length v10, v9

    move-object v11, v5

    const/4 v5, 0x0

    :goto_7
    if-ge v5, v10, :cond_17

    aget-object v12, v9, v5

    .line 170
    invoke-virtual {v12}, Lorg/h2/bnf/context/DbColumn;->getName()Ljava/lang/String;

    move-result-object v13

    invoke-static {v13}, Lorg/h2/util/StringUtils;->toUpperEnglish(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    .line 171
    invoke-virtual {v12}, Lorg/h2/bnf/context/DbColumn;->getQuotedName()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/String;->length()I

    move-result v14

    invoke-virtual {v13}, Ljava/lang/String;->length()I

    move-result v15

    if-le v14, v15, :cond_11

    .line 172
    invoke-virtual {v12}, Lorg/h2/bnf/context/DbColumn;->getQuotedName()Ljava/lang/String;

    move-result-object v13

    move-object v14, v13

    move-object v13, v2

    goto :goto_8

    :cond_11
    move-object v14, v13

    move-object v13, v3

    .line 175
    :goto_8
    invoke-virtual {v13, v14}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v15

    if-eqz v15, :cond_16

    iget-object v15, v0, Lorg/h2/bnf/context/DbContextRule;->columnType:Ljava/lang/String;

    if-eqz v15, :cond_12

    invoke-virtual {v12}, Lorg/h2/bnf/context/DbColumn;->getDataType()Ljava/lang/String;

    move-result-object v15

    iget-object v6, v0, Lorg/h2/bnf/context/DbContextRule;->columnType:Ljava/lang/String;

    invoke-virtual {v15, v6}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_16

    .line 178
    :cond_12
    invoke-virtual {v14}, Ljava/lang/String;->length()I

    move-result v6

    invoke-virtual {v2, v6}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v6

    if-eqz v11, :cond_15

    .line 179
    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v15

    invoke-virtual {v11}, Ljava/lang/String;->length()I

    move-result v7

    if-ge v15, v7, :cond_13

    goto :goto_9

    .line 181
    :cond_13
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v6

    if-eqz v6, :cond_14

    invoke-virtual {v14, v13}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_16

    .line 182
    :cond_14
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v6

    invoke-virtual {v14}, Ljava/lang/String;->length()I

    move-result v7

    if-ge v6, v7, :cond_16

    .line 183
    invoke-virtual {v12}, Lorg/h2/bnf/context/DbColumn;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v12}, Lorg/h2/bnf/context/DbColumn;->getName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v12

    invoke-virtual {v7, v12}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v7

    const/4 v12, 0x0

    invoke-virtual {v1, v6, v7, v12}, Lorg/h2/bnf/Sentence;->add(Ljava/lang/String;Ljava/lang/String;I)V

    goto :goto_a

    :cond_15
    :goto_9
    move-object v11, v6

    :cond_16
    :goto_a
    add-int/lit8 v5, v5, 0x1

    const/4 v6, 0x1

    const/4 v7, 0x0

    goto :goto_7

    :cond_17
    move-object v5, v11

    .line 191
    :cond_18
    iget-object v6, v0, Lorg/h2/bnf/context/DbContextRule;->contents:Lorg/h2/bnf/context/DbContents;

    invoke-virtual {v6}, Lorg/h2/bnf/context/DbContents;->getSchemas()[Lorg/h2/bnf/context/DbSchema;

    move-result-object v6

    array-length v7, v6

    move-object v9, v5

    const/4 v5, 0x0

    :goto_b
    if-ge v5, v7, :cond_23

    aget-object v10, v6, v5

    .line 192
    invoke-virtual {v10}, Lorg/h2/bnf/context/DbSchema;->getTables()[Lorg/h2/bnf/context/DbTableOrView;

    move-result-object v10

    array-length v11, v10

    move-object v12, v9

    const/4 v9, 0x0

    :goto_c
    if-ge v9, v11, :cond_22

    aget-object v13, v10, v9

    if-eq v13, v8, :cond_19

    if-eqz v4, :cond_19

    .line 193
    invoke-virtual {v4, v13}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v14

    if-nez v14, :cond_19

    goto/16 :goto_10

    :cond_19
    if-eqz v13, :cond_21

    .line 196
    invoke-virtual {v13}, Lorg/h2/bnf/context/DbTableOrView;->getColumns()[Lorg/h2/bnf/context/DbColumn;

    move-result-object v14

    if-nez v14, :cond_1a

    goto/16 :goto_10

    .line 199
    :cond_1a
    invoke-virtual {v13}, Lorg/h2/bnf/context/DbTableOrView;->getColumns()[Lorg/h2/bnf/context/DbColumn;

    move-result-object v13

    array-length v14, v13

    move-object v15, v12

    const/4 v12, 0x0

    :goto_d
    if-ge v12, v14, :cond_20

    aget-object v16, v13, v12

    .line 200
    invoke-virtual/range {v16 .. v16}, Lorg/h2/bnf/context/DbColumn;->getName()Ljava/lang/String;

    move-result-object v17

    move-object/from16 v18, v4

    invoke-static/range {v17 .. v17}, Lorg/h2/util/StringUtils;->toUpperEnglish(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    move-object/from16 v19, v6

    .line 202
    iget-object v6, v0, Lorg/h2/bnf/context/DbContextRule;->columnType:Ljava/lang/String;

    if-eqz v6, :cond_1b

    invoke-virtual/range {v16 .. v16}, Lorg/h2/bnf/context/DbColumn;->getDataType()Ljava/lang/String;

    move-result-object v6

    move/from16 v20, v7

    iget-object v7, v0, Lorg/h2/bnf/context/DbContextRule;->columnType:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_1f

    goto :goto_e

    :cond_1b
    move/from16 v20, v7

    .line 204
    :goto_e
    invoke-virtual {v3, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_1d

    .line 205
    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    invoke-virtual {v2, v4}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v4

    if-eqz v15, :cond_1c

    .line 206
    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v6

    invoke-virtual {v15}, Ljava/lang/String;->length()I

    move-result v7

    if-ge v6, v7, :cond_1f

    :cond_1c
    move-object v15, v4

    goto :goto_f

    .line 209
    :cond_1d
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v6

    if-eqz v6, :cond_1e

    invoke-virtual {v4, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_1f

    .line 210
    :cond_1e
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v6

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    if-ge v6, v4, :cond_1f

    .line 211
    invoke-virtual/range {v16 .. v16}, Lorg/h2/bnf/context/DbColumn;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual/range {v16 .. v16}, Lorg/h2/bnf/context/DbColumn;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x0

    invoke-virtual {v1, v4, v6, v7}, Lorg/h2/bnf/Sentence;->add(Ljava/lang/String;Ljava/lang/String;I)V

    :cond_1f
    :goto_f
    add-int/lit8 v12, v12, 0x1

    move-object/from16 v4, v18

    move-object/from16 v6, v19

    move/from16 v7, v20

    goto :goto_d

    :cond_20
    move-object/from16 v18, v4

    move-object/from16 v19, v6

    move/from16 v20, v7

    move-object v12, v15

    goto :goto_11

    :cond_21
    :goto_10
    move-object/from16 v18, v4

    move-object/from16 v19, v6

    move/from16 v20, v7

    :goto_11
    add-int/lit8 v9, v9, 0x1

    move-object/from16 v4, v18

    move-object/from16 v6, v19

    move/from16 v7, v20

    goto/16 :goto_c

    :cond_22
    move-object/from16 v18, v4

    move-object/from16 v19, v6

    move/from16 v20, v7

    add-int/lit8 v5, v5, 0x1

    move-object v9, v12

    goto/16 :goto_b

    :cond_23
    if-eqz v9, :cond_24

    move-object v3, v9

    goto :goto_13

    :cond_24
    :goto_12
    move-object v3, v2

    .line 231
    :goto_13
    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_26

    .line 232
    :goto_14
    invoke-static {v3}, Lorg/h2/bnf/Bnf;->startWithSpace(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_25

    const/4 v2, 0x1

    .line 233
    invoke-virtual {v3, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v3

    goto :goto_14

    :cond_25
    const/4 v2, 0x1

    .line 235
    invoke-virtual {v1, v3}, Lorg/h2/bnf/Sentence;->setQuery(Ljava/lang/String;)V

    return v2

    :cond_26
    const/4 v1, 0x0

    return v1

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public setColumnType(Ljava/lang/String;)V
    .locals 0

    .line 57
    iput-object p1, p0, Lorg/h2/bnf/context/DbContextRule;->columnType:Ljava/lang/String;

    return-void
.end method

.method public setLinks(Ljava/util/HashMap;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Lorg/h2/bnf/RuleHead;",
            ">;)V"
        }
    .end annotation

    return-void
.end method
