.class public Lorg/h2/engine/FunctionAlias$JavaMethod;
.super Ljava/lang/Object;
.source "FunctionAlias.java"

# interfaces
.implements Ljava/lang/Comparable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/h2/engine/FunctionAlias;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "JavaMethod"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/lang/Comparable<",
        "Lorg/h2/engine/FunctionAlias$JavaMethod;",
        ">;"
    }
.end annotation


# instance fields
.field private final dataType:I

.field private hasConnectionParam:Z

.field private final id:I

.field private final method:Ljava/lang/reflect/Method;

.field private paramCount:I

.field private varArgClass:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation
.end field

.field private varArgs:Z


# direct methods
.method constructor <init>(Ljava/lang/reflect/Method;I)V
    .locals 3

    .line 352
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 353
    iput-object p1, p0, Lorg/h2/engine/FunctionAlias$JavaMethod;->method:Ljava/lang/reflect/Method;

    .line 354
    iput p2, p0, Lorg/h2/engine/FunctionAlias$JavaMethod;->id:I

    .line 355
    invoke-virtual {p1}, Ljava/lang/reflect/Method;->getParameterTypes()[Ljava/lang/Class;

    move-result-object p2

    .line 356
    array-length v0, p2

    iput v0, p0, Lorg/h2/engine/FunctionAlias$JavaMethod;->paramCount:I

    .line 357
    iget v0, p0, Lorg/h2/engine/FunctionAlias$JavaMethod;->paramCount:I

    const/4 v1, 0x1

    if-lez v0, :cond_0

    const/4 v0, 0x0

    .line 358
    aget-object v0, p2, v0

    .line 359
    const-class v2, Ljava/sql/Connection;

    invoke-virtual {v2, v0}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 360
    iput-boolean v1, p0, Lorg/h2/engine/FunctionAlias$JavaMethod;->hasConnectionParam:Z

    .line 361
    iget v0, p0, Lorg/h2/engine/FunctionAlias$JavaMethod;->paramCount:I

    sub-int/2addr v0, v1

    iput v0, p0, Lorg/h2/engine/FunctionAlias$JavaMethod;->paramCount:I

    .line 364
    :cond_0
    iget v0, p0, Lorg/h2/engine/FunctionAlias$JavaMethod;->paramCount:I

    if-lez v0, :cond_1

    .line 365
    array-length v0, p2

    sub-int/2addr v0, v1

    aget-object p2, p2, v0

    .line 366
    invoke-virtual {p2}, Ljava/lang/Class;->isArray()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-static {p1}, Lorg/h2/engine/FunctionAlias;->isVarArgs(Ljava/lang/reflect/Method;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 367
    iput-boolean v1, p0, Lorg/h2/engine/FunctionAlias$JavaMethod;->varArgs:Z

    .line 368
    invoke-virtual {p2}, Ljava/lang/Class;->getComponentType()Ljava/lang/Class;

    move-result-object p2

    iput-object p2, p0, Lorg/h2/engine/FunctionAlias$JavaMethod;->varArgClass:Ljava/lang/Class;

    .line 371
    :cond_1
    invoke-virtual {p1}, Ljava/lang/reflect/Method;->getReturnType()Ljava/lang/Class;

    move-result-object p1

    .line 372
    invoke-static {p1}, Lorg/h2/value/DataType;->getTypeFromClass(Ljava/lang/Class;)I

    move-result p1

    iput p1, p0, Lorg/h2/engine/FunctionAlias$JavaMethod;->dataType:I

    return-void
.end method


# virtual methods
.method public bridge synthetic compareTo(Ljava/lang/Object;)I
    .locals 0

    .line 343
    check-cast p1, Lorg/h2/engine/FunctionAlias$JavaMethod;

    invoke-virtual {p0, p1}, Lorg/h2/engine/FunctionAlias$JavaMethod;->compareTo(Lorg/h2/engine/FunctionAlias$JavaMethod;)I

    move-result p1

    return p1
.end method

.method public compareTo(Lorg/h2/engine/FunctionAlias$JavaMethod;)I
    .locals 4

    .line 529
    iget-boolean v0, p0, Lorg/h2/engine/FunctionAlias$JavaMethod;->varArgs:Z

    iget-boolean v1, p1, Lorg/h2/engine/FunctionAlias$JavaMethod;->varArgs:Z

    const/4 v2, -0x1

    const/4 v3, 0x1

    if-eq v0, v1, :cond_1

    .line 530
    iget-boolean p1, p0, Lorg/h2/engine/FunctionAlias$JavaMethod;->varArgs:Z

    if-eqz p1, :cond_0

    const/4 v2, 0x1

    :cond_0
    return v2

    .line 532
    :cond_1
    iget v0, p0, Lorg/h2/engine/FunctionAlias$JavaMethod;->paramCount:I

    iget v1, p1, Lorg/h2/engine/FunctionAlias$JavaMethod;->paramCount:I

    if-eq v0, v1, :cond_2

    .line 533
    iget v0, p0, Lorg/h2/engine/FunctionAlias$JavaMethod;->paramCount:I

    iget p1, p1, Lorg/h2/engine/FunctionAlias$JavaMethod;->paramCount:I

    sub-int/2addr v0, p1

    return v0

    .line 535
    :cond_2
    iget-boolean v0, p0, Lorg/h2/engine/FunctionAlias$JavaMethod;->hasConnectionParam:Z

    iget-boolean v1, p1, Lorg/h2/engine/FunctionAlias$JavaMethod;->hasConnectionParam:Z

    if-eq v0, v1, :cond_4

    .line 536
    iget-boolean p1, p0, Lorg/h2/engine/FunctionAlias$JavaMethod;->hasConnectionParam:Z

    if-eqz p1, :cond_3

    const/4 v2, 0x1

    :cond_3
    return v2

    .line 538
    :cond_4
    iget v0, p0, Lorg/h2/engine/FunctionAlias$JavaMethod;->id:I

    iget p1, p1, Lorg/h2/engine/FunctionAlias$JavaMethod;->id:I

    sub-int/2addr v0, p1

    return v0
.end method

.method public getColumnClasses()[Ljava/lang/Class;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()[",
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation

    .line 512
    iget-object v0, p0, Lorg/h2/engine/FunctionAlias$JavaMethod;->method:Ljava/lang/reflect/Method;

    invoke-virtual {v0}, Ljava/lang/reflect/Method;->getParameterTypes()[Ljava/lang/Class;

    move-result-object v0

    return-object v0
.end method

.method public getDataType()I
    .locals 1

    .line 516
    iget v0, p0, Lorg/h2/engine/FunctionAlias$JavaMethod;->dataType:I

    return v0
.end method

.method public getParameterCount()I
    .locals 1

    .line 520
    iget v0, p0, Lorg/h2/engine/FunctionAlias$JavaMethod;->paramCount:I

    return v0
.end method

.method public getValue(Lorg/h2/engine/Session;[Lorg/h2/expression/Expression;Z)Lorg/h2/value/Value;
    .locals 17

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move-object/from16 v0, p2

    move/from16 v3, p3

    .line 400
    iget-object v4, v1, Lorg/h2/engine/FunctionAlias$JavaMethod;->method:Ljava/lang/reflect/Method;

    invoke-virtual {v4}, Ljava/lang/reflect/Method;->getParameterTypes()[Ljava/lang/Class;

    move-result-object v4

    .line 401
    array-length v5, v4

    new-array v5, v5, [Ljava/lang/Object;

    .line 403
    iget-boolean v6, v1, Lorg/h2/engine/FunctionAlias$JavaMethod;->hasConnectionParam:Z

    const/4 v7, 0x0

    const/4 v8, 0x1

    if-eqz v6, :cond_0

    array-length v6, v5

    if-lez v6, :cond_0

    .line 404
    invoke-virtual {v2, v3}, Lorg/h2/engine/Session;->createConnection(Z)Lorg/h2/jdbc/JdbcConnection;

    move-result-object v6

    aput-object v6, v5, v7

    const/4 v6, 0x1

    goto :goto_0

    :cond_0
    const/4 v6, 0x0

    .line 409
    :goto_0
    iget-boolean v9, v1, Lorg/h2/engine/FunctionAlias$JavaMethod;->varArgs:Z

    if-eqz v9, :cond_1

    .line 410
    array-length v9, v0

    array-length v11, v5

    sub-int/2addr v9, v11

    add-int/2addr v9, v8

    iget-boolean v11, v1, Lorg/h2/engine/FunctionAlias$JavaMethod;->hasConnectionParam:Z

    add-int/2addr v9, v11

    .line 412
    iget-object v11, v1, Lorg/h2/engine/FunctionAlias$JavaMethod;->varArgClass:Ljava/lang/Class;

    invoke-static {v11, v9}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;I)Ljava/lang/Object;

    move-result-object v9

    .line 413
    array-length v11, v5

    sub-int/2addr v11, v8

    aput-object v9, v5, v11

    goto :goto_1

    :cond_1
    const/4 v9, 0x0

    .line 416
    :goto_1
    array-length v11, v0

    move v12, v6

    const/4 v6, 0x0

    :goto_2
    if-ge v6, v11, :cond_b

    .line 417
    iget-boolean v13, v1, Lorg/h2/engine/FunctionAlias$JavaMethod;->varArgs:Z

    if-eqz v13, :cond_2

    array-length v13, v4

    sub-int/2addr v13, v8

    if-lt v12, v13, :cond_2

    const/4 v13, 0x1

    goto :goto_3

    :cond_2
    const/4 v13, 0x0

    :goto_3
    if-eqz v13, :cond_3

    .line 421
    iget-object v14, v1, Lorg/h2/engine/FunctionAlias$JavaMethod;->varArgClass:Ljava/lang/Class;

    goto :goto_4

    .line 423
    :cond_3
    aget-object v14, v4, v12

    .line 425
    :goto_4
    invoke-static {v14}, Lorg/h2/value/DataType;->getTypeFromClass(Ljava/lang/Class;)I

    move-result v15

    .line 426
    aget-object v10, v0, v6

    invoke-virtual {v10, v2}, Lorg/h2/expression/Expression;->getValue(Lorg/h2/engine/Session;)Lorg/h2/value/Value;

    move-result-object v10

    .line 428
    const-class v8, Lorg/h2/value/Value;

    invoke-virtual {v8, v14}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v8

    if-eqz v8, :cond_4

    move-object/from16 v16, v4

    move-object v0, v10

    goto :goto_6

    .line 430
    :cond_4
    invoke-virtual {v10}, Lorg/h2/value/Value;->getType()I

    move-result v8

    const/16 v7, 0x11

    if-ne v8, v7, :cond_6

    invoke-virtual {v14}, Ljava/lang/Class;->isArray()Z

    move-result v7

    if-eqz v7, :cond_6

    invoke-virtual {v14}, Ljava/lang/Class;->getComponentType()Ljava/lang/Class;

    move-result-object v7

    const-class v8, Ljava/lang/Object;

    if-eq v7, v8, :cond_6

    .line 433
    move-object v7, v10

    check-cast v7, Lorg/h2/value/ValueArray;

    invoke-virtual {v7}, Lorg/h2/value/ValueArray;->getList()[Lorg/h2/value/Value;

    move-result-object v7

    .line 434
    invoke-virtual {v14}, Ljava/lang/Class;->getComponentType()Ljava/lang/Class;

    move-result-object v8

    array-length v15, v7

    invoke-static {v8, v15}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, [Ljava/lang/Object;

    .line 436
    invoke-virtual {v14}, Ljava/lang/Class;->getComponentType()Ljava/lang/Class;

    move-result-object v15

    invoke-static {v15}, Lorg/h2/value/DataType;->getTypeFromClass(Ljava/lang/Class;)I

    move-result v15

    move-object/from16 v16, v4

    const/4 v0, 0x0

    .line 438
    :goto_5
    array-length v4, v8

    if-ge v0, v4, :cond_5

    .line 439
    aget-object v4, v7, v0

    invoke-virtual {v4, v15}, Lorg/h2/value/Value;->convertTo(I)Lorg/h2/value/Value;

    move-result-object v4

    invoke-virtual {v4}, Lorg/h2/value/Value;->getObject()Ljava/lang/Object;

    move-result-object v4

    aput-object v4, v8, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_5

    :cond_5
    move-object v0, v8

    goto :goto_6

    :cond_6
    move-object/from16 v16, v4

    .line 443
    invoke-virtual {v10, v15}, Lorg/h2/value/Value;->convertTo(I)Lorg/h2/value/Value;

    move-result-object v10

    .line 444
    invoke-virtual {v10}, Lorg/h2/value/Value;->getObject()Ljava/lang/Object;

    move-result-object v0

    :goto_6
    if-nez v0, :cond_8

    .line 447
    invoke-virtual {v14}, Ljava/lang/Class;->isPrimitive()Z

    move-result v4

    if-eqz v4, :cond_9

    if-eqz v3, :cond_7

    .line 452
    invoke-static {v14}, Lorg/h2/value/DataType;->getDefaultForPrimitiveType(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    goto :goto_7

    .line 455
    :cond_7
    sget-object v0, Lorg/h2/value/ValueNull;->INSTANCE:Lorg/h2/value/ValueNull;

    return-object v0

    .line 459
    :cond_8
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    invoke-virtual {v14, v4}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v4

    if-nez v4, :cond_9

    invoke-virtual {v14}, Ljava/lang/Class;->isPrimitive()Z

    move-result v4

    if-nez v4, :cond_9

    const/4 v4, 0x0

    .line 460
    invoke-virtual {v2, v4}, Lorg/h2/engine/Session;->createConnection(Z)Lorg/h2/jdbc/JdbcConnection;

    move-result-object v0

    invoke-static {v0, v10, v14}, Lorg/h2/value/DataType;->convertTo(Lorg/h2/jdbc/JdbcConnection;Lorg/h2/value/Value;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    :cond_9
    :goto_7
    if-eqz v13, :cond_a

    .line 464
    array-length v4, v5

    sub-int v4, v12, v4

    const/4 v7, 0x1

    add-int/2addr v4, v7

    invoke-static {v9, v4, v0}, Ljava/lang/reflect/Array;->set(Ljava/lang/Object;ILjava/lang/Object;)V

    goto :goto_8

    :cond_a
    const/4 v7, 0x1

    .line 466
    aput-object v0, v5, v12

    :goto_8
    add-int/lit8 v6, v6, 0x1

    add-int/lit8 v12, v12, 0x1

    move-object/from16 v4, v16

    move-object/from16 v0, p2

    const/4 v7, 0x0

    const/4 v8, 0x1

    goto/16 :goto_2

    .line 469
    :cond_b
    invoke-virtual/range {p1 .. p1}, Lorg/h2/engine/Session;->getAutoCommit()Z

    move-result v4

    .line 470
    invoke-virtual/range {p1 .. p1}, Lorg/h2/engine/Session;->getLastScopeIdentity()Lorg/h2/value/Value;

    move-result-object v6

    .line 471
    invoke-virtual/range {p1 .. p1}, Lorg/h2/engine/Session;->getDatabase()Lorg/h2/engine/Database;

    move-result-object v0

    invoke-virtual {v0}, Lorg/h2/engine/Database;->getSettings()Lorg/h2/engine/DbSettings;

    move-result-object v0

    iget-boolean v7, v0, Lorg/h2/engine/DbSettings;->defaultConnection:Z

    const/4 v8, 0x0

    .line 474
    :try_start_0
    invoke-virtual {v2, v8}, Lorg/h2/engine/Session;->setAutoCommit(Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v7, :cond_c

    .line 478
    :try_start_1
    invoke-virtual {v2, v3}, Lorg/h2/engine/Session;->createConnection(Z)Lorg/h2/jdbc/JdbcConnection;

    move-result-object v0

    invoke-static {v0}, Lorg/h2/Driver;->setDefaultConnection(Ljava/sql/Connection;)V

    goto :goto_9

    :catch_0
    move-exception v0

    goto :goto_a

    :catch_1
    move-exception v0

    goto :goto_b

    .line 481
    :cond_c
    :goto_9
    iget-object v0, v1, Lorg/h2/engine/FunctionAlias$JavaMethod;->method:Ljava/lang/reflect/Method;

    const/4 v3, 0x0

    invoke-virtual {v0, v3, v5}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_e

    .line 483
    sget-object v0, Lorg/h2/value/ValueNull;->INSTANCE:Lorg/h2/value/ValueNull;
    :try_end_1
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 503
    invoke-virtual {v2, v6}, Lorg/h2/engine/Session;->setLastScopeIdentity(Lorg/h2/value/Value;)V

    .line 504
    invoke-virtual {v2, v4}, Lorg/h2/engine/Session;->setAutoCommit(Z)V

    if-eqz v7, :cond_d

    .line 506
    invoke-static {v3}, Lorg/h2/Driver;->setDefaultConnection(Ljava/sql/Connection;)V

    :cond_d
    return-object v0

    .line 497
    :cond_e
    :try_start_2
    const-class v3, Lorg/h2/value/Value;

    iget-object v5, v1, Lorg/h2/engine/FunctionAlias$JavaMethod;->method:Ljava/lang/reflect/Method;

    invoke-virtual {v5}, Ljava/lang/reflect/Method;->getReturnType()Ljava/lang/Class;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v3

    if-eqz v3, :cond_10

    .line 498
    check-cast v0, Lorg/h2/value/Value;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 503
    invoke-virtual {v2, v6}, Lorg/h2/engine/Session;->setLastScopeIdentity(Lorg/h2/value/Value;)V

    .line 504
    invoke-virtual {v2, v4}, Lorg/h2/engine/Session;->setAutoCommit(Z)V

    if-eqz v7, :cond_f

    const/4 v2, 0x0

    .line 506
    invoke-static {v2}, Lorg/h2/Driver;->setDefaultConnection(Ljava/sql/Connection;)V

    :cond_f
    return-object v0

    .line 500
    :cond_10
    :try_start_3
    iget v3, v1, Lorg/h2/engine/FunctionAlias$JavaMethod;->dataType:I

    invoke-static {v2, v0, v3}, Lorg/h2/value/DataType;->convertToValue(Lorg/h2/engine/SessionInterface;Ljava/lang/Object;I)Lorg/h2/value/Value;

    move-result-object v0

    .line 501
    iget v3, v1, Lorg/h2/engine/FunctionAlias$JavaMethod;->dataType:I

    invoke-virtual {v0, v3}, Lorg/h2/value/Value;->convertTo(I)Lorg/h2/value/Value;

    move-result-object v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 503
    invoke-virtual {v2, v6}, Lorg/h2/engine/Session;->setLastScopeIdentity(Lorg/h2/value/Value;)V

    .line 504
    invoke-virtual {v2, v4}, Lorg/h2/engine/Session;->setAutoCommit(Z)V

    if-eqz v7, :cond_11

    const/4 v2, 0x0

    .line 506
    invoke-static {v2}, Lorg/h2/Driver;->setDefaultConnection(Ljava/sql/Connection;)V

    :cond_11
    return-object v0

    .line 495
    :goto_a
    :try_start_4
    invoke-static {v0}, Lorg/h2/message/DbException;->convert(Ljava/lang/Throwable;)Lorg/h2/message/DbException;

    move-result-object v0

    throw v0

    .line 486
    :goto_b
    new-instance v3, Lorg/h2/util/StatementBuilder;

    iget-object v9, v1, Lorg/h2/engine/FunctionAlias$JavaMethod;->method:Ljava/lang/reflect/Method;

    invoke-virtual {v9}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    move-result-object v9

    invoke-direct {v3, v9}, Lorg/h2/util/StatementBuilder;-><init>(Ljava/lang/String;)V

    const/16 v9, 0x28

    .line 487
    invoke-virtual {v3, v9}, Lorg/h2/util/StatementBuilder;->append(C)Lorg/h2/util/StatementBuilder;

    .line 488
    array-length v9, v5

    :goto_c
    if-ge v8, v9, :cond_13

    aget-object v10, v5, v8

    const-string v11, ", "

    .line 489
    invoke-virtual {v3, v11}, Lorg/h2/util/StatementBuilder;->appendExceptFirst(Ljava/lang/String;)V

    if-nez v10, :cond_12

    const-string v10, "null"

    goto :goto_d

    .line 490
    :cond_12
    invoke-virtual {v10}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v10

    :goto_d
    invoke-virtual {v3, v10}, Lorg/h2/util/StatementBuilder;->append(Ljava/lang/String;)Lorg/h2/util/StatementBuilder;

    add-int/lit8 v8, v8, 0x1

    goto :goto_c

    :cond_13
    const/16 v5, 0x29

    .line 492
    invoke-virtual {v3, v5}, Lorg/h2/util/StatementBuilder;->append(C)Lorg/h2/util/StatementBuilder;

    .line 493
    invoke-virtual {v3}, Lorg/h2/util/StatementBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Lorg/h2/message/DbException;->convertInvocation(Ljava/lang/reflect/InvocationTargetException;Ljava/lang/String;)Lorg/h2/message/DbException;

    move-result-object v0

    throw v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    :catchall_0
    move-exception v0

    .line 503
    invoke-virtual {v2, v6}, Lorg/h2/engine/Session;->setLastScopeIdentity(Lorg/h2/value/Value;)V

    .line 504
    invoke-virtual {v2, v4}, Lorg/h2/engine/Session;->setAutoCommit(Z)V

    if-eqz v7, :cond_14

    const/4 v2, 0x0

    .line 506
    invoke-static {v2}, Lorg/h2/Driver;->setDefaultConnection(Ljava/sql/Connection;)V

    :cond_14
    throw v0
.end method

.method public hasConnectionParam()Z
    .locals 1

    .line 386
    iget-boolean v0, p0, Lorg/h2/engine/FunctionAlias$JavaMethod;->hasConnectionParam:Z

    return v0
.end method

.method public isVarArgs()Z
    .locals 1

    .line 524
    iget-boolean v0, p0, Lorg/h2/engine/FunctionAlias$JavaMethod;->varArgs:Z

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .line 377
    iget-object v0, p0, Lorg/h2/engine/FunctionAlias$JavaMethod;->method:Ljava/lang/reflect/Method;

    invoke-virtual {v0}, Ljava/lang/reflect/Method;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
