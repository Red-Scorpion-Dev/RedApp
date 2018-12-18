.class public Lorg/h2/expression/CompareLike;
.super Lorg/h2/expression/Condition;
.source "CompareLike.java"


# static fields
.field private static final ANY:I = 0x2

.field private static final MATCH:I = 0x0

.field private static final ONE:I = 0x1


# instance fields
.field private final compareMode:Lorg/h2/value/CompareMode;

.field private final defaultEscape:Ljava/lang/String;

.field private escape:Lorg/h2/expression/Expression;

.field private fastCompare:Z

.field private ignoreCase:Z

.field private invalidPattern:Z

.field private isInit:Z

.field private left:Lorg/h2/expression/Expression;

.field private patternChars:[C

.field private patternLength:I

.field private patternRegexp:Ljava/util/regex/Pattern;

.field private patternString:Ljava/lang/String;

.field private patternTypes:[I

.field private final regexp:Z

.field private right:Lorg/h2/expression/Expression;

.field private shortcutToStartsWith:Z


# direct methods
.method public constructor <init>(Lorg/h2/engine/Database;Lorg/h2/expression/Expression;Lorg/h2/expression/Expression;Lorg/h2/expression/Expression;Z)V
    .locals 7

    .line 55
    invoke-virtual {p1}, Lorg/h2/engine/Database;->getCompareMode()Lorg/h2/value/CompareMode;

    move-result-object v1

    invoke-virtual {p1}, Lorg/h2/engine/Database;->getSettings()Lorg/h2/engine/DbSettings;

    move-result-object p1

    iget-object v2, p1, Lorg/h2/engine/DbSettings;->defaultEscape:Ljava/lang/String;

    move-object v0, p0

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    move v6, p5

    invoke-direct/range {v0 .. v6}, Lorg/h2/expression/CompareLike;-><init>(Lorg/h2/value/CompareMode;Ljava/lang/String;Lorg/h2/expression/Expression;Lorg/h2/expression/Expression;Lorg/h2/expression/Expression;Z)V

    return-void
.end method

.method public constructor <init>(Lorg/h2/value/CompareMode;Ljava/lang/String;Lorg/h2/expression/Expression;Lorg/h2/expression/Expression;Lorg/h2/expression/Expression;Z)V
    .locals 0

    .line 60
    invoke-direct {p0}, Lorg/h2/expression/Condition;-><init>()V

    .line 61
    iput-object p1, p0, Lorg/h2/expression/CompareLike;->compareMode:Lorg/h2/value/CompareMode;

    .line 62
    iput-object p2, p0, Lorg/h2/expression/CompareLike;->defaultEscape:Ljava/lang/String;

    .line 63
    iput-boolean p6, p0, Lorg/h2/expression/CompareLike;->regexp:Z

    .line 64
    iput-object p3, p0, Lorg/h2/expression/CompareLike;->left:Lorg/h2/expression/Expression;

    .line 65
    iput-object p4, p0, Lorg/h2/expression/CompareLike;->right:Lorg/h2/expression/Expression;

    .line 66
    iput-object p5, p0, Lorg/h2/expression/CompareLike;->escape:Lorg/h2/expression/Expression;

    return-void
.end method

.method private compare([CLjava/lang/String;II)Z
    .locals 6

    .line 303
    aget-char p1, p1, p3

    invoke-virtual {p2, p4}, Ljava/lang/String;->charAt(I)C

    move-result v0

    if-eq p1, v0, :cond_1

    iget-boolean p1, p0, Lorg/h2/expression/CompareLike;->fastCompare:Z

    if-nez p1, :cond_0

    iget-object v0, p0, Lorg/h2/expression/CompareLike;->compareMode:Lorg/h2/value/CompareMode;

    iget-object v1, p0, Lorg/h2/expression/CompareLike;->patternString:Ljava/lang/String;

    iget-boolean v5, p0, Lorg/h2/expression/CompareLike;->ignoreCase:Z

    move v2, p3

    move-object v3, p2

    move v4, p4

    invoke-virtual/range {v0 .. v5}, Lorg/h2/value/CompareMode;->equalsChars(Ljava/lang/String;ILjava/lang/String;IZ)Z

    move-result p1

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p1, 0x1

    :goto_1
    return p1
.end method

.method private compareAt(Ljava/lang/String;III[C[I)Z
    .locals 15

    move-object v7, p0

    move-object/from16 v8, p1

    move/from16 v9, p4

    move-object/from16 v10, p5

    move/from16 v0, p2

    move/from16 v1, p3

    .line 271
    :goto_0
    iget v2, v7, Lorg/h2/expression/CompareLike;->patternLength:I

    const/4 v11, 0x0

    const/4 v12, 0x1

    if-ge v0, v2, :cond_5

    .line 272
    aget v2, p6, v0

    packed-switch v2, :pswitch_data_0

    .line 296
    invoke-static {}, Lorg/h2/message/DbException;->throwInternalError()Ljava/lang/RuntimeException;

    goto :goto_2

    :pswitch_0
    add-int/lit8 v13, v0, 0x1

    .line 284
    iget v0, v7, Lorg/h2/expression/CompareLike;->patternLength:I

    if-lt v13, v0, :cond_0

    return v12

    :cond_0
    move v14, v1

    :goto_1
    if-ge v14, v9, :cond_2

    .line 288
    invoke-direct {p0, v10, v8, v13, v14}, Lorg/h2/expression/CompareLike;->compare([CLjava/lang/String;II)Z

    move-result v0

    if-eqz v0, :cond_1

    move-object v0, p0

    move-object/from16 v1, p1

    move v2, v13

    move v3, v14

    move/from16 v4, p4

    move-object/from16 v5, p5

    move-object/from16 v6, p6

    invoke-direct/range {v0 .. v6}, Lorg/h2/expression/CompareLike;->compareAt(Ljava/lang/String;III[C[I)Z

    move-result v0

    if-eqz v0, :cond_1

    return v12

    :cond_1
    add-int/lit8 v14, v14, 0x1

    goto :goto_1

    :cond_2
    return v11

    :pswitch_1
    add-int/lit8 v2, v1, 0x1

    if-lt v1, v9, :cond_3

    return v11

    :cond_3
    move v1, v2

    goto :goto_2

    :pswitch_2
    if-ge v1, v9, :cond_4

    add-int/lit8 v2, v1, 0x1

    .line 274
    invoke-direct {p0, v10, v8, v0, v1}, Lorg/h2/expression/CompareLike;->compare([CLjava/lang/String;II)Z

    move-result v1

    if-nez v1, :cond_3

    :cond_4
    return v11

    :goto_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_5
    if-ne v1, v9, :cond_6

    const/4 v11, 0x1

    :cond_6
    return v11

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private static getEscapeChar(Ljava/lang/String;)Ljava/lang/Character;
    .locals 1

    if-eqz p0, :cond_1

    .line 70
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Ljava/lang/String;->charAt(I)C

    move-result p0

    invoke-static {p0}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object p0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p0, 0x0

    :goto_1
    return-object p0
.end method

.method private getEscapeChar(Lorg/h2/value/Value;)Ljava/lang/Character;
    .locals 2

    if-nez p1, :cond_0

    .line 141
    iget-object p1, p0, Lorg/h2/expression/CompareLike;->defaultEscape:Ljava/lang/String;

    invoke-static {p1}, Lorg/h2/expression/CompareLike;->getEscapeChar(Ljava/lang/String;)Ljava/lang/Character;

    move-result-object p1

    return-object p1

    .line 143
    :cond_0
    invoke-virtual {p1}, Lorg/h2/value/Value;->getString()Ljava/lang/String;

    move-result-object p1

    if-nez p1, :cond_1

    .line 146
    iget-object p1, p0, Lorg/h2/expression/CompareLike;->defaultEscape:Ljava/lang/String;

    invoke-static {p1}, Lorg/h2/expression/CompareLike;->getEscapeChar(Ljava/lang/String;)Ljava/lang/Character;

    move-result-object p1

    goto :goto_0

    .line 147
    :cond_1
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_2

    const/4 p1, 0x0

    goto :goto_0

    .line 149
    :cond_2
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v1, 0x1

    if-gt v0, v1, :cond_3

    const/4 v0, 0x0

    .line 152
    invoke-virtual {p1, v0}, Ljava/lang/String;->charAt(I)C

    move-result p1

    invoke-static {p1}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object p1

    :goto_0
    return-object p1

    :cond_3
    const/16 v0, 0x5609

    .line 150
    invoke-static {v0, p1}, Lorg/h2/message/DbException;->get(ILjava/lang/String;)Lorg/h2/message/DbException;

    move-result-object p1

    throw p1
.end method

.method private initPattern(Ljava/lang/String;Ljava/lang/Character;)V
    .locals 10

    .line 325
    iget-object v0, p0, Lorg/h2/expression/CompareLike;->compareMode:Lorg/h2/value/CompareMode;

    invoke-virtual {v0}, Lorg/h2/value/CompareMode;->getName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "OFF"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lorg/h2/expression/CompareLike;->ignoreCase:Z

    if-nez v0, :cond_0

    .line 326
    iput-boolean v1, p0, Lorg/h2/expression/CompareLike;->fastCompare:Z

    .line 328
    :cond_0
    iget-boolean v0, p0, Lorg/h2/expression/CompareLike;->regexp:Z

    const/4 v2, 0x2

    const/4 v3, 0x0

    if-eqz v0, :cond_2

    .line 329
    iput-object p1, p0, Lorg/h2/expression/CompareLike;->patternString:Ljava/lang/String;

    .line 331
    :try_start_0
    iget-boolean p2, p0, Lorg/h2/expression/CompareLike;->ignoreCase:Z

    if-eqz p2, :cond_1

    .line 332
    invoke-static {p1, v2}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;I)Ljava/util/regex/Pattern;

    move-result-object p2

    iput-object p2, p0, Lorg/h2/expression/CompareLike;->patternRegexp:Ljava/util/regex/Pattern;

    goto :goto_0

    .line 334
    :cond_1
    invoke-static {p1}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object p2

    iput-object p2, p0, Lorg/h2/expression/CompareLike;->patternRegexp:Ljava/util/regex/Pattern;
    :try_end_0
    .catch Ljava/util/regex/PatternSyntaxException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception p2

    const/16 v0, 0x5609

    .line 337
    new-array v1, v1, [Ljava/lang/String;

    aput-object p1, v1, v3

    invoke-static {v0, p2, v1}, Lorg/h2/message/DbException;->get(ILjava/lang/Throwable;[Ljava/lang/String;)Lorg/h2/message/DbException;

    move-result-object p1

    throw p1

    .line 341
    :cond_2
    iput v3, p0, Lorg/h2/expression/CompareLike;->patternLength:I

    if-nez p1, :cond_3

    const/4 p1, 0x0

    .line 343
    iput-object p1, p0, Lorg/h2/expression/CompareLike;->patternTypes:[I

    .line 344
    iput-object p1, p0, Lorg/h2/expression/CompareLike;->patternChars:[C

    return-void

    .line 347
    :cond_3
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    .line 348
    new-array v4, v0, [C

    iput-object v4, p0, Lorg/h2/expression/CompareLike;->patternChars:[C

    .line 349
    new-array v4, v0, [I

    iput-object v4, p0, Lorg/h2/expression/CompareLike;->patternTypes:[I

    const/4 v4, 0x0

    const/4 v5, 0x0

    :goto_1
    if-ge v4, v0, :cond_9

    .line 352
    invoke-virtual {p1, v4}, Ljava/lang/String;->charAt(I)C

    move-result v6

    if-eqz p2, :cond_6

    .line 354
    invoke-virtual {p2}, Ljava/lang/Character;->charValue()C

    move-result v7

    if-ne v7, v6, :cond_6

    add-int/lit8 v5, v0, -0x1

    if-lt v4, v5, :cond_4

    .line 356
    iput-boolean v1, p0, Lorg/h2/expression/CompareLike;->invalidPattern:Z

    return-void

    :cond_4
    add-int/lit8 v4, v4, 0x1

    .line 359
    invoke-virtual {p1, v4}, Ljava/lang/String;->charAt(I)C

    move-result v6

    :cond_5
    move v5, v4

    const/4 v4, 0x0

    const/4 v7, 0x0

    goto :goto_2

    :cond_6
    const/16 v7, 0x25

    if-ne v6, v7, :cond_8

    if-eqz v5, :cond_7

    goto :goto_3

    :cond_7
    move v5, v4

    const/4 v4, 0x2

    const/4 v7, 0x1

    goto :goto_2

    :cond_8
    const/16 v7, 0x5f

    if-ne v6, v7, :cond_5

    move v7, v5

    move v5, v4

    const/4 v4, 0x1

    .line 374
    :goto_2
    iget-object v8, p0, Lorg/h2/expression/CompareLike;->patternTypes:[I

    iget v9, p0, Lorg/h2/expression/CompareLike;->patternLength:I

    aput v4, v8, v9

    .line 375
    iget-object v4, p0, Lorg/h2/expression/CompareLike;->patternChars:[C

    iget v8, p0, Lorg/h2/expression/CompareLike;->patternLength:I

    add-int/lit8 v9, v8, 0x1

    iput v9, p0, Lorg/h2/expression/CompareLike;->patternLength:I

    aput-char v6, v4, v8

    move v4, v5

    move v5, v7

    :goto_3
    add-int/2addr v4, v1

    goto :goto_1

    :cond_9
    const/4 p1, 0x0

    .line 377
    :goto_4
    iget p2, p0, Lorg/h2/expression/CompareLike;->patternLength:I

    sub-int/2addr p2, v1

    if-ge p1, p2, :cond_b

    .line 378
    iget-object p2, p0, Lorg/h2/expression/CompareLike;->patternTypes:[I

    aget p2, p2, p1

    if-ne p2, v2, :cond_a

    iget-object p2, p0, Lorg/h2/expression/CompareLike;->patternTypes:[I

    add-int/lit8 v0, p1, 0x1

    aget p2, p2, v0

    if-ne p2, v1, :cond_a

    .line 379
    iget-object p2, p0, Lorg/h2/expression/CompareLike;->patternTypes:[I

    aput v1, p2, p1

    .line 380
    iget-object p2, p0, Lorg/h2/expression/CompareLike;->patternTypes:[I

    aput v2, p2, v0

    :cond_a
    add-int/lit8 p1, p1, 0x1

    goto :goto_4

    .line 383
    :cond_b
    new-instance p1, Ljava/lang/String;

    iget-object p2, p0, Lorg/h2/expression/CompareLike;->patternChars:[C

    iget v0, p0, Lorg/h2/expression/CompareLike;->patternLength:I

    invoke-direct {p1, p2, v3, v0}, Ljava/lang/String;-><init>([CII)V

    iput-object p1, p0, Lorg/h2/expression/CompareLike;->patternString:Ljava/lang/String;

    .line 386
    iget-object p1, p0, Lorg/h2/expression/CompareLike;->compareMode:Lorg/h2/value/CompareMode;

    invoke-virtual {p1}, Lorg/h2/value/CompareMode;->getName()Ljava/lang/String;

    move-result-object p1

    const-string p2, "OFF"

    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_d

    iget p1, p0, Lorg/h2/expression/CompareLike;->patternLength:I

    if-le p1, v1, :cond_d

    .line 388
    :goto_5
    iget p1, p0, Lorg/h2/expression/CompareLike;->patternLength:I

    if-ge v3, p1, :cond_c

    iget-object p1, p0, Lorg/h2/expression/CompareLike;->patternTypes:[I

    aget p1, p1, v3

    if-nez p1, :cond_c

    add-int/lit8 v3, v3, 0x1

    goto :goto_5

    .line 391
    :cond_c
    iget p1, p0, Lorg/h2/expression/CompareLike;->patternLength:I

    sub-int/2addr p1, v1

    if-ne v3, p1, :cond_d

    iget-object p1, p0, Lorg/h2/expression/CompareLike;->patternTypes:[I

    iget p2, p0, Lorg/h2/expression/CompareLike;->patternLength:I

    sub-int/2addr p2, v1

    aget p1, p1, p2

    if-ne p1, v2, :cond_d

    .line 392
    iput-boolean v1, p0, Lorg/h2/expression/CompareLike;->shortcutToStartsWith:Z

    :cond_d
    return-void
.end method

.method private isFullMatch()Z
    .locals 5

    .line 398
    iget-object v0, p0, Lorg/h2/expression/CompareLike;->patternTypes:[I

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 401
    :cond_0
    iget-object v0, p0, Lorg/h2/expression/CompareLike;->patternTypes:[I

    array-length v2, v0

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_2

    aget v4, v0, v3

    if-eqz v4, :cond_1

    return v1

    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_2
    const/4 v0, 0x1

    return v0
.end method


# virtual methods
.method public createIndexConditions(Lorg/h2/engine/Session;Lorg/h2/table/TableFilter;)V
    .locals 8

    .line 159
    iget-boolean v0, p0, Lorg/h2/expression/CompareLike;->regexp:Z

    if-eqz v0, :cond_0

    return-void

    .line 162
    :cond_0
    iget-object v0, p0, Lorg/h2/expression/CompareLike;->left:Lorg/h2/expression/Expression;

    instance-of v0, v0, Lorg/h2/expression/ExpressionColumn;

    if-nez v0, :cond_1

    return-void

    .line 165
    :cond_1
    iget-object v0, p0, Lorg/h2/expression/CompareLike;->left:Lorg/h2/expression/Expression;

    check-cast v0, Lorg/h2/expression/ExpressionColumn;

    .line 166
    invoke-virtual {v0}, Lorg/h2/expression/ExpressionColumn;->getTableFilter()Lorg/h2/table/TableFilter;

    move-result-object v1

    if-eq p2, v1, :cond_2

    return-void

    .line 174
    :cond_2
    iget-object v1, p0, Lorg/h2/expression/CompareLike;->right:Lorg/h2/expression/Expression;

    sget-object v2, Lorg/h2/expression/ExpressionVisitor;->INDEPENDENT_VISITOR:Lorg/h2/expression/ExpressionVisitor;

    invoke-virtual {v1, v2}, Lorg/h2/expression/Expression;->isEverything(Lorg/h2/expression/ExpressionVisitor;)Z

    move-result v1

    if-nez v1, :cond_3

    return-void

    .line 177
    :cond_3
    iget-object v1, p0, Lorg/h2/expression/CompareLike;->escape:Lorg/h2/expression/Expression;

    if-eqz v1, :cond_4

    iget-object v1, p0, Lorg/h2/expression/CompareLike;->escape:Lorg/h2/expression/Expression;

    sget-object v2, Lorg/h2/expression/ExpressionVisitor;->INDEPENDENT_VISITOR:Lorg/h2/expression/ExpressionVisitor;

    invoke-virtual {v1, v2}, Lorg/h2/expression/Expression;->isEverything(Lorg/h2/expression/ExpressionVisitor;)Z

    move-result v1

    if-nez v1, :cond_4

    return-void

    .line 181
    :cond_4
    iget-object v1, p0, Lorg/h2/expression/CompareLike;->right:Lorg/h2/expression/Expression;

    invoke-virtual {v1, p1}, Lorg/h2/expression/Expression;->getValue(Lorg/h2/engine/Session;)Lorg/h2/value/Value;

    move-result-object v1

    invoke-virtual {v1}, Lorg/h2/value/Value;->getString()Ljava/lang/String;

    move-result-object v1

    .line 182
    iget-object v2, p0, Lorg/h2/expression/CompareLike;->escape:Lorg/h2/expression/Expression;

    if-nez v2, :cond_5

    const/4 p1, 0x0

    goto :goto_0

    :cond_5
    iget-object v2, p0, Lorg/h2/expression/CompareLike;->escape:Lorg/h2/expression/Expression;

    invoke-virtual {v2, p1}, Lorg/h2/expression/Expression;->getValue(Lorg/h2/engine/Session;)Lorg/h2/value/Value;

    move-result-object p1

    .line 183
    :goto_0
    sget-object v2, Lorg/h2/value/ValueNull;->INSTANCE:Lorg/h2/value/ValueNull;

    if-ne p1, v2, :cond_6

    .line 185
    invoke-static {}, Lorg/h2/message/DbException;->throwInternalError()Ljava/lang/RuntimeException;

    .line 187
    :cond_6
    invoke-direct {p0, p1}, Lorg/h2/expression/CompareLike;->getEscapeChar(Lorg/h2/value/Value;)Ljava/lang/Character;

    move-result-object p1

    invoke-direct {p0, v1, p1}, Lorg/h2/expression/CompareLike;->initPattern(Ljava/lang/String;Ljava/lang/Character;)V

    .line 188
    iget-boolean p1, p0, Lorg/h2/expression/CompareLike;->invalidPattern:Z

    if-eqz p1, :cond_7

    return-void

    .line 191
    :cond_7
    iget p1, p0, Lorg/h2/expression/CompareLike;->patternLength:I

    if-lez p1, :cond_e

    iget-object p1, p0, Lorg/h2/expression/CompareLike;->patternTypes:[I

    const/4 v1, 0x0

    aget p1, p1, v1

    if-eqz p1, :cond_8

    goto/16 :goto_4

    .line 195
    :cond_8
    invoke-virtual {v0}, Lorg/h2/expression/ExpressionColumn;->getColumn()Lorg/h2/table/Column;

    move-result-object p1

    invoke-virtual {p1}, Lorg/h2/table/Column;->getType()I

    move-result p1

    const/16 v2, 0xd

    if-eq p1, v2, :cond_9

    const/16 v2, 0xe

    if-eq p1, v2, :cond_9

    const/16 v2, 0x15

    if-eq p1, v2, :cond_9

    return-void

    .line 204
    :cond_9
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v2, 0x0

    .line 205
    :goto_1
    iget v3, p0, Lorg/h2/expression/CompareLike;->patternLength:I

    if-ge v2, v3, :cond_a

    iget-object v3, p0, Lorg/h2/expression/CompareLike;->patternTypes:[I

    aget v3, v3, v2

    if-nez v3, :cond_a

    .line 206
    iget-object v3, p0, Lorg/h2/expression/CompareLike;->patternChars:[C

    add-int/lit8 v4, v2, 0x1

    aget-char v2, v3, v2

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move v2, v4

    goto :goto_1

    .line 208
    :cond_a
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 209
    iget v3, p0, Lorg/h2/expression/CompareLike;->patternLength:I

    if-ne v2, v3, :cond_b

    .line 210
    invoke-static {p1}, Lorg/h2/value/ValueString;->get(Ljava/lang/String;)Lorg/h2/value/Value;

    move-result-object p1

    invoke-static {p1}, Lorg/h2/expression/ValueExpression;->get(Lorg/h2/value/Value;)Lorg/h2/expression/ValueExpression;

    move-result-object p1

    invoke-static {v1, v0, p1}, Lorg/h2/index/IndexCondition;->get(ILorg/h2/expression/ExpressionColumn;Lorg/h2/expression/Expression;)Lorg/h2/index/IndexCondition;

    move-result-object p1

    invoke-virtual {p2, p1}, Lorg/h2/table/TableFilter;->addIndexCondition(Lorg/h2/index/IndexCondition;)V

    goto :goto_3

    .line 216
    :cond_b
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    if-lez v2, :cond_d

    .line 217
    invoke-static {p1}, Lorg/h2/value/ValueString;->get(Ljava/lang/String;)Lorg/h2/value/Value;

    move-result-object v2

    invoke-static {v2}, Lorg/h2/expression/ValueExpression;->get(Lorg/h2/value/Value;)Lorg/h2/expression/ValueExpression;

    move-result-object v2

    const/4 v3, 0x1

    invoke-static {v3, v0, v2}, Lorg/h2/index/IndexCondition;->get(ILorg/h2/expression/ExpressionColumn;Lorg/h2/expression/Expression;)Lorg/h2/index/IndexCondition;

    move-result-object v2

    invoke-virtual {p2, v2}, Lorg/h2/table/TableFilter;->addIndexCondition(Lorg/h2/index/IndexCondition;)V

    .line 220
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    sub-int/2addr v2, v3

    invoke-virtual {p1, v2}, Ljava/lang/String;->charAt(I)C

    move-result v2

    const/4 v4, 0x1

    :goto_2
    const/16 v5, 0x7d0

    if-ge v4, v5, :cond_d

    .line 224
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v6

    sub-int/2addr v6, v3

    invoke-virtual {p1, v1, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int v6, v2, v4

    int-to-char v6, v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 225
    iget-object v6, p0, Lorg/h2/expression/CompareLike;->compareMode:Lorg/h2/value/CompareMode;

    iget-boolean v7, p0, Lorg/h2/expression/CompareLike;->ignoreCase:Z

    invoke-virtual {v6, p1, v5, v7}, Lorg/h2/value/CompareMode;->compareString(Ljava/lang/String;Ljava/lang/String;Z)I

    move-result v6

    const/4 v7, -0x1

    if-ne v6, v7, :cond_c

    const/4 p1, 0x4

    .line 226
    invoke-static {v5}, Lorg/h2/value/ValueString;->get(Ljava/lang/String;)Lorg/h2/value/Value;

    move-result-object v1

    invoke-static {v1}, Lorg/h2/expression/ValueExpression;->get(Lorg/h2/value/Value;)Lorg/h2/expression/ValueExpression;

    move-result-object v1

    invoke-static {p1, v0, v1}, Lorg/h2/index/IndexCondition;->get(ILorg/h2/expression/ExpressionColumn;Lorg/h2/expression/Expression;)Lorg/h2/index/IndexCondition;

    move-result-object p1

    invoke-virtual {p2, p1}, Lorg/h2/table/TableFilter;->addIndexCondition(Lorg/h2/index/IndexCondition;)V

    goto :goto_3

    :cond_c
    add-int/lit8 v4, v4, 0x1

    goto :goto_2

    :cond_d
    :goto_3
    return-void

    :cond_e
    :goto_4
    return-void
.end method

.method public getCost()I
    .locals 2

    .line 444
    iget-object v0, p0, Lorg/h2/expression/CompareLike;->left:Lorg/h2/expression/Expression;

    invoke-virtual {v0}, Lorg/h2/expression/Expression;->getCost()I

    move-result v0

    iget-object v1, p0, Lorg/h2/expression/CompareLike;->right:Lorg/h2/expression/Expression;

    invoke-virtual {v1}, Lorg/h2/expression/Expression;->getCost()I

    move-result v1

    add-int/2addr v0, v1

    add-int/lit8 v0, v0, 0x3

    return v0
.end method

.method public bridge synthetic getDisplaySize()I
    .locals 1

    .line 26
    invoke-super {p0}, Lorg/h2/expression/Condition;->getDisplaySize()I

    move-result v0

    return v0
.end method

.method public bridge synthetic getPrecision()J
    .locals 2

    .line 26
    invoke-super {p0}, Lorg/h2/expression/Condition;->getPrecision()J

    move-result-wide v0

    return-wide v0
.end method

.method public getSQL()Ljava/lang/String;
    .locals 3

    .line 76
    iget-boolean v0, p0, Lorg/h2/expression/CompareLike;->regexp:Z

    if-eqz v0, :cond_0

    .line 77
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lorg/h2/expression/CompareLike;->left:Lorg/h2/expression/Expression;

    invoke-virtual {v1}, Lorg/h2/expression/Expression;->getSQL()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " REGEXP "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lorg/h2/expression/CompareLike;->right:Lorg/h2/expression/Expression;

    invoke-virtual {v1}, Lorg/h2/expression/Expression;->getSQL()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 79
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lorg/h2/expression/CompareLike;->left:Lorg/h2/expression/Expression;

    invoke-virtual {v1}, Lorg/h2/expression/Expression;->getSQL()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " LIKE "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lorg/h2/expression/CompareLike;->right:Lorg/h2/expression/Expression;

    invoke-virtual {v1}, Lorg/h2/expression/Expression;->getSQL()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 80
    iget-object v1, p0, Lorg/h2/expression/CompareLike;->escape:Lorg/h2/expression/Expression;

    if-eqz v1, :cond_1

    .line 81
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " ESCAPE "

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lorg/h2/expression/CompareLike;->escape:Lorg/h2/expression/Expression;

    invoke-virtual {v0}, Lorg/h2/expression/Expression;->getSQL()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 84
    :cond_1
    :goto_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ")"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getScale()I
    .locals 1

    .line 26
    invoke-super {p0}, Lorg/h2/expression/Condition;->getScale()I

    move-result v0

    return v0
.end method

.method public bridge synthetic getType()I
    .locals 1

    .line 26
    invoke-super {p0}, Lorg/h2/expression/Condition;->getType()I

    move-result v0

    return v0
.end method

.method public getValue(Lorg/h2/engine/Session;)Lorg/h2/value/Value;
    .locals 7

    .line 238
    iget-object v0, p0, Lorg/h2/expression/CompareLike;->left:Lorg/h2/expression/Expression;

    invoke-virtual {v0, p1}, Lorg/h2/expression/Expression;->getValue(Lorg/h2/engine/Session;)Lorg/h2/value/Value;

    move-result-object v0

    .line 239
    sget-object v1, Lorg/h2/value/ValueNull;->INSTANCE:Lorg/h2/value/ValueNull;

    if-ne v0, v1, :cond_0

    return-object v0

    .line 242
    :cond_0
    iget-boolean v1, p0, Lorg/h2/expression/CompareLike;->isInit:Z

    if-nez v1, :cond_4

    .line 243
    iget-object v1, p0, Lorg/h2/expression/CompareLike;->right:Lorg/h2/expression/Expression;

    invoke-virtual {v1, p1}, Lorg/h2/expression/Expression;->getValue(Lorg/h2/engine/Session;)Lorg/h2/value/Value;

    move-result-object v1

    .line 244
    sget-object v2, Lorg/h2/value/ValueNull;->INSTANCE:Lorg/h2/value/ValueNull;

    if-ne v1, v2, :cond_1

    return-object v1

    .line 247
    :cond_1
    invoke-virtual {v1}, Lorg/h2/value/Value;->getString()Ljava/lang/String;

    move-result-object v1

    .line 248
    iget-object v2, p0, Lorg/h2/expression/CompareLike;->escape:Lorg/h2/expression/Expression;

    if-nez v2, :cond_2

    const/4 p1, 0x0

    goto :goto_0

    :cond_2
    iget-object v2, p0, Lorg/h2/expression/CompareLike;->escape:Lorg/h2/expression/Expression;

    invoke-virtual {v2, p1}, Lorg/h2/expression/Expression;->getValue(Lorg/h2/engine/Session;)Lorg/h2/value/Value;

    move-result-object p1

    .line 249
    :goto_0
    sget-object v2, Lorg/h2/value/ValueNull;->INSTANCE:Lorg/h2/value/ValueNull;

    if-ne p1, v2, :cond_3

    .line 250
    sget-object p1, Lorg/h2/value/ValueNull;->INSTANCE:Lorg/h2/value/ValueNull;

    return-object p1

    .line 252
    :cond_3
    invoke-direct {p0, p1}, Lorg/h2/expression/CompareLike;->getEscapeChar(Lorg/h2/value/Value;)Ljava/lang/Character;

    move-result-object p1

    invoke-direct {p0, v1, p1}, Lorg/h2/expression/CompareLike;->initPattern(Ljava/lang/String;Ljava/lang/Character;)V

    .line 254
    :cond_4
    iget-boolean p1, p0, Lorg/h2/expression/CompareLike;->invalidPattern:Z

    if-eqz p1, :cond_5

    .line 255
    sget-object p1, Lorg/h2/value/ValueNull;->INSTANCE:Lorg/h2/value/ValueNull;

    return-object p1

    .line 257
    :cond_5
    invoke-virtual {v0}, Lorg/h2/value/Value;->getString()Ljava/lang/String;

    move-result-object v1

    .line 259
    iget-boolean p1, p0, Lorg/h2/expression/CompareLike;->regexp:Z

    if-eqz p1, :cond_6

    .line 260
    iget-object p1, p0, Lorg/h2/expression/CompareLike;->patternRegexp:Ljava/util/regex/Pattern;

    invoke-virtual {p1, v1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object p1

    invoke-virtual {p1}, Ljava/util/regex/Matcher;->find()Z

    move-result p1

    goto :goto_1

    .line 261
    :cond_6
    iget-boolean p1, p0, Lorg/h2/expression/CompareLike;->shortcutToStartsWith:Z

    if-eqz p1, :cond_7

    .line 262
    iget-boolean p1, p0, Lorg/h2/expression/CompareLike;->ignoreCase:Z

    const/4 v2, 0x0

    iget-object v3, p0, Lorg/h2/expression/CompareLike;->patternString:Ljava/lang/String;

    const/4 v4, 0x0

    iget v0, p0, Lorg/h2/expression/CompareLike;->patternLength:I

    add-int/lit8 v5, v0, -0x1

    move-object v0, v1

    move v1, p1

    invoke-virtual/range {v0 .. v5}, Ljava/lang/String;->regionMatches(ZILjava/lang/String;II)Z

    move-result p1

    goto :goto_1

    :cond_7
    const/4 v2, 0x0

    const/4 v3, 0x0

    .line 264
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v4

    iget-object v5, p0, Lorg/h2/expression/CompareLike;->patternChars:[C

    iget-object v6, p0, Lorg/h2/expression/CompareLike;->patternTypes:[I

    move-object v0, p0

    invoke-direct/range {v0 .. v6}, Lorg/h2/expression/CompareLike;->compareAt(Ljava/lang/String;III[C[I)Z

    move-result p1

    .line 266
    :goto_1
    invoke-static {p1}, Lorg/h2/value/ValueBoolean;->get(Z)Lorg/h2/value/ValueBoolean;

    move-result-object p1

    return-object p1
.end method

.method public isEverything(Lorg/h2/expression/ExpressionVisitor;)Z
    .locals 1

    .line 438
    iget-object v0, p0, Lorg/h2/expression/CompareLike;->left:Lorg/h2/expression/Expression;

    invoke-virtual {v0, p1}, Lorg/h2/expression/Expression;->isEverything(Lorg/h2/expression/ExpressionVisitor;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lorg/h2/expression/CompareLike;->right:Lorg/h2/expression/Expression;

    invoke-virtual {v0, p1}, Lorg/h2/expression/Expression;->isEverything(Lorg/h2/expression/ExpressionVisitor;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lorg/h2/expression/CompareLike;->escape:Lorg/h2/expression/Expression;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/h2/expression/CompareLike;->escape:Lorg/h2/expression/Expression;

    invoke-virtual {v0, p1}, Lorg/h2/expression/Expression;->isEverything(Lorg/h2/expression/ExpressionVisitor;)Z

    move-result p1

    if-eqz p1, :cond_1

    :cond_0
    const/4 p1, 0x1

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public mapColumns(Lorg/h2/table/ColumnResolver;I)V
    .locals 1

    .line 411
    iget-object v0, p0, Lorg/h2/expression/CompareLike;->left:Lorg/h2/expression/Expression;

    invoke-virtual {v0, p1, p2}, Lorg/h2/expression/Expression;->mapColumns(Lorg/h2/table/ColumnResolver;I)V

    .line 412
    iget-object v0, p0, Lorg/h2/expression/CompareLike;->right:Lorg/h2/expression/Expression;

    invoke-virtual {v0, p1, p2}, Lorg/h2/expression/Expression;->mapColumns(Lorg/h2/table/ColumnResolver;I)V

    .line 413
    iget-object v0, p0, Lorg/h2/expression/CompareLike;->escape:Lorg/h2/expression/Expression;

    if-eqz v0, :cond_0

    .line 414
    iget-object v0, p0, Lorg/h2/expression/CompareLike;->escape:Lorg/h2/expression/Expression;

    invoke-virtual {v0, p1, p2}, Lorg/h2/expression/Expression;->mapColumns(Lorg/h2/table/ColumnResolver;I)V

    :cond_0
    return-void
.end method

.method public optimize(Lorg/h2/engine/Session;)Lorg/h2/expression/Expression;
    .locals 5

    .line 89
    iget-object v0, p0, Lorg/h2/expression/CompareLike;->left:Lorg/h2/expression/Expression;

    invoke-virtual {v0, p1}, Lorg/h2/expression/Expression;->optimize(Lorg/h2/engine/Session;)Lorg/h2/expression/Expression;

    move-result-object v0

    iput-object v0, p0, Lorg/h2/expression/CompareLike;->left:Lorg/h2/expression/Expression;

    .line 90
    iget-object v0, p0, Lorg/h2/expression/CompareLike;->right:Lorg/h2/expression/Expression;

    invoke-virtual {v0, p1}, Lorg/h2/expression/Expression;->optimize(Lorg/h2/engine/Session;)Lorg/h2/expression/Expression;

    move-result-object v0

    iput-object v0, p0, Lorg/h2/expression/CompareLike;->right:Lorg/h2/expression/Expression;

    .line 91
    iget-object v0, p0, Lorg/h2/expression/CompareLike;->left:Lorg/h2/expression/Expression;

    invoke-virtual {v0}, Lorg/h2/expression/Expression;->getType()I

    move-result v0

    const/4 v1, 0x1

    const/16 v2, 0xe

    if-ne v0, v2, :cond_0

    .line 92
    iput-boolean v1, p0, Lorg/h2/expression/CompareLike;->ignoreCase:Z

    .line 94
    :cond_0
    iget-object v0, p0, Lorg/h2/expression/CompareLike;->left:Lorg/h2/expression/Expression;

    invoke-virtual {v0}, Lorg/h2/expression/Expression;->isValueSet()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 95
    iget-object v0, p0, Lorg/h2/expression/CompareLike;->left:Lorg/h2/expression/Expression;

    invoke-virtual {v0, p1}, Lorg/h2/expression/Expression;->getValue(Lorg/h2/engine/Session;)Lorg/h2/value/Value;

    move-result-object v0

    .line 96
    sget-object v2, Lorg/h2/value/ValueNull;->INSTANCE:Lorg/h2/value/ValueNull;

    if-ne v0, v2, :cond_1

    .line 98
    invoke-static {}, Lorg/h2/expression/ValueExpression;->getNull()Lorg/h2/expression/ValueExpression;

    move-result-object p1

    return-object p1

    .line 101
    :cond_1
    iget-object v0, p0, Lorg/h2/expression/CompareLike;->escape:Lorg/h2/expression/Expression;

    if-eqz v0, :cond_2

    .line 102
    iget-object v0, p0, Lorg/h2/expression/CompareLike;->escape:Lorg/h2/expression/Expression;

    invoke-virtual {v0, p1}, Lorg/h2/expression/Expression;->optimize(Lorg/h2/engine/Session;)Lorg/h2/expression/Expression;

    move-result-object v0

    iput-object v0, p0, Lorg/h2/expression/CompareLike;->escape:Lorg/h2/expression/Expression;

    .line 104
    :cond_2
    iget-object v0, p0, Lorg/h2/expression/CompareLike;->right:Lorg/h2/expression/Expression;

    invoke-virtual {v0}, Lorg/h2/expression/Expression;->isValueSet()Z

    move-result v0

    if-eqz v0, :cond_b

    iget-object v0, p0, Lorg/h2/expression/CompareLike;->escape:Lorg/h2/expression/Expression;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lorg/h2/expression/CompareLike;->escape:Lorg/h2/expression/Expression;

    invoke-virtual {v0}, Lorg/h2/expression/Expression;->isValueSet()Z

    move-result v0

    if-eqz v0, :cond_b

    .line 105
    :cond_3
    iget-object v0, p0, Lorg/h2/expression/CompareLike;->left:Lorg/h2/expression/Expression;

    invoke-virtual {v0}, Lorg/h2/expression/Expression;->isValueSet()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 106
    invoke-virtual {p0, p1}, Lorg/h2/expression/CompareLike;->getValue(Lorg/h2/engine/Session;)Lorg/h2/value/Value;

    move-result-object p1

    invoke-static {p1}, Lorg/h2/expression/ValueExpression;->get(Lorg/h2/value/Value;)Lorg/h2/expression/ValueExpression;

    move-result-object p1

    return-object p1

    .line 108
    :cond_4
    iget-object v0, p0, Lorg/h2/expression/CompareLike;->right:Lorg/h2/expression/Expression;

    invoke-virtual {v0, p1}, Lorg/h2/expression/Expression;->getValue(Lorg/h2/engine/Session;)Lorg/h2/value/Value;

    move-result-object v0

    .line 109
    sget-object v2, Lorg/h2/value/ValueNull;->INSTANCE:Lorg/h2/value/ValueNull;

    if-ne v0, v2, :cond_5

    .line 111
    invoke-static {}, Lorg/h2/expression/ValueExpression;->getNull()Lorg/h2/expression/ValueExpression;

    move-result-object p1

    return-object p1

    .line 113
    :cond_5
    iget-object v2, p0, Lorg/h2/expression/CompareLike;->escape:Lorg/h2/expression/Expression;

    const/4 v3, 0x0

    if-nez v2, :cond_6

    move-object v2, v3

    goto :goto_0

    :cond_6
    iget-object v2, p0, Lorg/h2/expression/CompareLike;->escape:Lorg/h2/expression/Expression;

    invoke-virtual {v2, p1}, Lorg/h2/expression/Expression;->getValue(Lorg/h2/engine/Session;)Lorg/h2/value/Value;

    move-result-object v2

    .line 114
    :goto_0
    sget-object v4, Lorg/h2/value/ValueNull;->INSTANCE:Lorg/h2/value/ValueNull;

    if-ne v2, v4, :cond_7

    .line 115
    invoke-static {}, Lorg/h2/expression/ValueExpression;->getNull()Lorg/h2/expression/ValueExpression;

    move-result-object p1

    return-object p1

    .line 117
    :cond_7
    invoke-virtual {v0}, Lorg/h2/value/Value;->getString()Ljava/lang/String;

    move-result-object v0

    .line 118
    invoke-direct {p0, v2}, Lorg/h2/expression/CompareLike;->getEscapeChar(Lorg/h2/value/Value;)Ljava/lang/Character;

    move-result-object v2

    invoke-direct {p0, v0, v2}, Lorg/h2/expression/CompareLike;->initPattern(Ljava/lang/String;Ljava/lang/Character;)V

    .line 119
    iget-boolean v2, p0, Lorg/h2/expression/CompareLike;->invalidPattern:Z

    if-eqz v2, :cond_8

    .line 120
    invoke-static {}, Lorg/h2/expression/ValueExpression;->getNull()Lorg/h2/expression/ValueExpression;

    move-result-object p1

    return-object p1

    :cond_8
    const-string v2, "%"

    .line 122
    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_9

    .line 124
    new-instance v0, Lorg/h2/expression/Comparison;

    const/4 v1, 0x7

    iget-object v2, p0, Lorg/h2/expression/CompareLike;->left:Lorg/h2/expression/Expression;

    invoke-direct {v0, p1, v1, v2, v3}, Lorg/h2/expression/Comparison;-><init>(Lorg/h2/engine/Session;ILorg/h2/expression/Expression;Lorg/h2/expression/Expression;)V

    invoke-virtual {v0, p1}, Lorg/h2/expression/Comparison;->optimize(Lorg/h2/engine/Session;)Lorg/h2/expression/Expression;

    move-result-object p1

    return-object p1

    .line 127
    :cond_9
    invoke-direct {p0}, Lorg/h2/expression/CompareLike;->isFullMatch()Z

    move-result v0

    if-eqz v0, :cond_a

    .line 129
    iget-object v0, p0, Lorg/h2/expression/CompareLike;->patternString:Ljava/lang/String;

    invoke-static {v0}, Lorg/h2/value/ValueString;->get(Ljava/lang/String;)Lorg/h2/value/Value;

    move-result-object v0

    .line 130
    invoke-static {v0}, Lorg/h2/expression/ValueExpression;->get(Lorg/h2/value/Value;)Lorg/h2/expression/ValueExpression;

    move-result-object v0

    .line 131
    new-instance v1, Lorg/h2/expression/Comparison;

    const/4 v2, 0x0

    iget-object v3, p0, Lorg/h2/expression/CompareLike;->left:Lorg/h2/expression/Expression;

    invoke-direct {v1, p1, v2, v3, v0}, Lorg/h2/expression/Comparison;-><init>(Lorg/h2/engine/Session;ILorg/h2/expression/Expression;Lorg/h2/expression/Expression;)V

    invoke-virtual {v1, p1}, Lorg/h2/expression/Comparison;->optimize(Lorg/h2/engine/Session;)Lorg/h2/expression/Expression;

    move-result-object p1

    return-object p1

    .line 134
    :cond_a
    iput-boolean v1, p0, Lorg/h2/expression/CompareLike;->isInit:Z

    :cond_b
    return-object p0
.end method

.method public setEvaluatable(Lorg/h2/table/TableFilter;Z)V
    .locals 1

    .line 420
    iget-object v0, p0, Lorg/h2/expression/CompareLike;->left:Lorg/h2/expression/Expression;

    invoke-virtual {v0, p1, p2}, Lorg/h2/expression/Expression;->setEvaluatable(Lorg/h2/table/TableFilter;Z)V

    .line 421
    iget-object v0, p0, Lorg/h2/expression/CompareLike;->right:Lorg/h2/expression/Expression;

    invoke-virtual {v0, p1, p2}, Lorg/h2/expression/Expression;->setEvaluatable(Lorg/h2/table/TableFilter;Z)V

    .line 422
    iget-object v0, p0, Lorg/h2/expression/CompareLike;->escape:Lorg/h2/expression/Expression;

    if-eqz v0, :cond_0

    .line 423
    iget-object v0, p0, Lorg/h2/expression/CompareLike;->escape:Lorg/h2/expression/Expression;

    invoke-virtual {v0, p1, p2}, Lorg/h2/expression/Expression;->setEvaluatable(Lorg/h2/table/TableFilter;Z)V

    :cond_0
    return-void
.end method

.method public test(Ljava/lang/String;Ljava/lang/String;C)Z
    .locals 7

    .line 317
    invoke-static {p3}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object p3

    invoke-direct {p0, p1, p3}, Lorg/h2/expression/CompareLike;->initPattern(Ljava/lang/String;Ljava/lang/Character;)V

    .line 318
    iget-boolean p1, p0, Lorg/h2/expression/CompareLike;->invalidPattern:Z

    if-eqz p1, :cond_0

    const/4 p1, 0x0

    return p1

    :cond_0
    const/4 v2, 0x0

    const/4 v3, 0x0

    .line 321
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v4

    iget-object v5, p0, Lorg/h2/expression/CompareLike;->patternChars:[C

    iget-object v6, p0, Lorg/h2/expression/CompareLike;->patternTypes:[I

    move-object v0, p0

    move-object v1, p2

    invoke-direct/range {v0 .. v6}, Lorg/h2/expression/CompareLike;->compareAt(Ljava/lang/String;III[C[I)Z

    move-result p1

    return p1
.end method

.method public updateAggregate(Lorg/h2/engine/Session;)V
    .locals 1

    .line 429
    iget-object v0, p0, Lorg/h2/expression/CompareLike;->left:Lorg/h2/expression/Expression;

    invoke-virtual {v0, p1}, Lorg/h2/expression/Expression;->updateAggregate(Lorg/h2/engine/Session;)V

    .line 430
    iget-object v0, p0, Lorg/h2/expression/CompareLike;->right:Lorg/h2/expression/Expression;

    invoke-virtual {v0, p1}, Lorg/h2/expression/Expression;->updateAggregate(Lorg/h2/engine/Session;)V

    .line 431
    iget-object v0, p0, Lorg/h2/expression/CompareLike;->escape:Lorg/h2/expression/Expression;

    if-eqz v0, :cond_0

    .line 432
    iget-object v0, p0, Lorg/h2/expression/CompareLike;->escape:Lorg/h2/expression/Expression;

    invoke-virtual {v0, p1}, Lorg/h2/expression/Expression;->updateAggregate(Lorg/h2/engine/Session;)V

    :cond_0
    return-void
.end method
