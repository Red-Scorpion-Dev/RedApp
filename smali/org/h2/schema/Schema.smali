.class public Lorg/h2/schema/Schema;
.super Lorg/h2/engine/DbObjectBase;
.source "Schema.java"


# instance fields
.field private final constants:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Lorg/h2/schema/Constant;",
            ">;"
        }
    .end annotation
.end field

.field private final constraints:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Lorg/h2/constraint/Constraint;",
            ">;"
        }
    .end annotation
.end field

.field private final functions:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Lorg/h2/engine/FunctionAlias;",
            ">;"
        }
    .end annotation
.end field

.field private final indexes:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Lorg/h2/index/Index;",
            ">;"
        }
    .end annotation
.end field

.field private owner:Lorg/h2/engine/User;

.field private final sequences:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Lorg/h2/schema/Sequence;",
            ">;"
        }
    .end annotation
.end field

.field private final system:Z

.field private final tablesAndViews:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Lorg/h2/table/Table;",
            ">;"
        }
    .end annotation
.end field

.field private final temporaryUniqueNames:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final triggers:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Lorg/h2/schema/TriggerObject;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lorg/h2/engine/Database;ILjava/lang/String;Lorg/h2/engine/User;Z)V
    .locals 1

    .line 66
    invoke-direct {p0}, Lorg/h2/engine/DbObjectBase;-><init>()V

    .line 53
    invoke-static {}, Lorg/h2/util/New;->hashSet()Ljava/util/HashSet;

    move-result-object v0

    iput-object v0, p0, Lorg/h2/schema/Schema;->temporaryUniqueNames:Ljava/util/HashSet;

    .line 67
    invoke-virtual {p1}, Lorg/h2/engine/Database;->newStringMap()Ljava/util/HashMap;

    move-result-object v0

    iput-object v0, p0, Lorg/h2/schema/Schema;->tablesAndViews:Ljava/util/HashMap;

    .line 68
    invoke-virtual {p1}, Lorg/h2/engine/Database;->newStringMap()Ljava/util/HashMap;

    move-result-object v0

    iput-object v0, p0, Lorg/h2/schema/Schema;->indexes:Ljava/util/HashMap;

    .line 69
    invoke-virtual {p1}, Lorg/h2/engine/Database;->newStringMap()Ljava/util/HashMap;

    move-result-object v0

    iput-object v0, p0, Lorg/h2/schema/Schema;->sequences:Ljava/util/HashMap;

    .line 70
    invoke-virtual {p1}, Lorg/h2/engine/Database;->newStringMap()Ljava/util/HashMap;

    move-result-object v0

    iput-object v0, p0, Lorg/h2/schema/Schema;->triggers:Ljava/util/HashMap;

    .line 71
    invoke-virtual {p1}, Lorg/h2/engine/Database;->newStringMap()Ljava/util/HashMap;

    move-result-object v0

    iput-object v0, p0, Lorg/h2/schema/Schema;->constraints:Ljava/util/HashMap;

    .line 72
    invoke-virtual {p1}, Lorg/h2/engine/Database;->newStringMap()Ljava/util/HashMap;

    move-result-object v0

    iput-object v0, p0, Lorg/h2/schema/Schema;->constants:Ljava/util/HashMap;

    .line 73
    invoke-virtual {p1}, Lorg/h2/engine/Database;->newStringMap()Ljava/util/HashMap;

    move-result-object v0

    iput-object v0, p0, Lorg/h2/schema/Schema;->functions:Ljava/util/HashMap;

    const/16 v0, 0x8

    .line 74
    invoke-virtual {p0, p1, p2, p3, v0}, Lorg/h2/schema/Schema;->initDbObjectBase(Lorg/h2/engine/Database;ILjava/lang/String;I)V

    .line 75
    iput-object p4, p0, Lorg/h2/schema/Schema;->owner:Lorg/h2/engine/User;

    .line 76
    iput-boolean p5, p0, Lorg/h2/schema/Schema;->system:Z

    return-void
.end method

.method private getMap(I)Ljava/util/HashMap;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Lorg/h2/schema/SchemaObject;",
            ">;"
        }
    .end annotation

    packed-switch p1, :pswitch_data_0

    .line 203
    :pswitch_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "type="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lorg/h2/message/DbException;->throwInternalError(Ljava/lang/String;)Ljava/lang/RuntimeException;

    move-result-object p1

    throw p1

    .line 197
    :pswitch_1
    iget-object p1, p0, Lorg/h2/schema/Schema;->constants:Ljava/util/HashMap;

    goto :goto_0

    .line 200
    :pswitch_2
    iget-object p1, p0, Lorg/h2/schema/Schema;->functions:Ljava/util/HashMap;

    goto :goto_0

    .line 194
    :pswitch_3
    iget-object p1, p0, Lorg/h2/schema/Schema;->constraints:Ljava/util/HashMap;

    goto :goto_0

    .line 191
    :pswitch_4
    iget-object p1, p0, Lorg/h2/schema/Schema;->triggers:Ljava/util/HashMap;

    goto :goto_0

    .line 185
    :pswitch_5
    iget-object p1, p0, Lorg/h2/schema/Schema;->sequences:Ljava/util/HashMap;

    goto :goto_0

    .line 188
    :pswitch_6
    iget-object p1, p0, Lorg/h2/schema/Schema;->indexes:Ljava/util/HashMap;

    goto :goto_0

    .line 182
    :pswitch_7
    iget-object p1, p0, Lorg/h2/schema/Schema;->tablesAndViews:Ljava/util/HashMap;

    :goto_0
    return-object p1

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_7
        :pswitch_6
        :pswitch_0
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_2
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private getUniqueName(Lorg/h2/engine/DbObject;Ljava/util/HashMap;Ljava/lang/String;)Ljava/lang/String;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/h2/engine/DbObject;",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "+",
            "Lorg/h2/schema/SchemaObject;",
            ">;",
            "Ljava/lang/String;",
            ")",
            "Ljava/lang/String;"
        }
    .end annotation

    .line 361
    invoke-interface {p1}, Lorg/h2/engine/DbObject;->getName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object p1

    .line 363
    iget-object v0, p0, Lorg/h2/schema/Schema;->temporaryUniqueNames:Ljava/util/HashSet;

    monitor-enter v0

    .line 364
    :try_start_0
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    const/4 v2, 0x1

    :goto_0
    const/4 v3, 0x0

    const/4 v4, 0x0

    if-ge v2, v1, :cond_1

    .line 365
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v4, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 366
    invoke-virtual {p2, v3}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_0

    iget-object v5, p0, Lorg/h2/schema/Schema;->temporaryUniqueNames:Ljava/util/HashSet;

    invoke-virtual {v5, v3}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_0

    goto :goto_1

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    :goto_1
    if-nez v3, :cond_3

    .line 372
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "_"

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 374
    :goto_2
    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 375
    invoke-virtual {p2, v3}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result p3

    if-nez p3, :cond_2

    iget-object p3, p0, Lorg/h2/schema/Schema;->temporaryUniqueNames:Ljava/util/HashSet;

    invoke-virtual {p3, v3}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result p3

    if-nez p3, :cond_2

    goto :goto_3

    :cond_2
    add-int/lit8 v4, v4, 0x1

    goto :goto_2

    .line 380
    :cond_3
    :goto_3
    iget-object p1, p0, Lorg/h2/schema/Schema;->temporaryUniqueNames:Ljava/util/HashSet;

    invoke-virtual {p1, v3}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 381
    monitor-exit v0

    return-object v3

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method


# virtual methods
.method public add(Lorg/h2/schema/SchemaObject;)V
    .locals 4

    .line 216
    sget-boolean v0, Lorg/h2/engine/SysProperties;->CHECK:Z

    if-eqz v0, :cond_0

    invoke-interface {p1}, Lorg/h2/schema/SchemaObject;->getSchema()Lorg/h2/schema/Schema;

    move-result-object v0

    if-eq v0, p0, :cond_0

    const-string v0, "wrong schema"

    .line 217
    invoke-static {v0}, Lorg/h2/message/DbException;->throwInternalError(Ljava/lang/String;)Ljava/lang/RuntimeException;

    .line 219
    :cond_0
    invoke-interface {p1}, Lorg/h2/schema/SchemaObject;->getName()Ljava/lang/String;

    move-result-object v0

    .line 220
    invoke-interface {p1}, Lorg/h2/schema/SchemaObject;->getType()I

    move-result v1

    invoke-direct {p0, v1}, Lorg/h2/schema/Schema;->getMap(I)Ljava/util/HashMap;

    move-result-object v1

    .line 221
    sget-boolean v2, Lorg/h2/engine/SysProperties;->CHECK:Z

    if-eqz v2, :cond_1

    invoke-virtual {v1, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 222
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "object already exists: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lorg/h2/message/DbException;->throwInternalError(Ljava/lang/String;)Ljava/lang/RuntimeException;

    .line 224
    :cond_1
    invoke-virtual {v1, v0, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 225
    invoke-virtual {p0, v0}, Lorg/h2/schema/Schema;->freeUniqueName(Ljava/lang/String;)V

    return-void
.end method

.method public canDrop()Z
    .locals 1

    .line 85
    iget-boolean v0, p0, Lorg/h2/schema/Schema;->system:Z

    xor-int/lit8 v0, v0, 0x1

    return v0
.end method

.method public checkRename()V
    .locals 0

    return-void
.end method

.method public createTable(Lorg/h2/command/ddl/CreateTableData;)Lorg/h2/table/Table;
    .locals 3

    .line 575
    iget-object v0, p0, Lorg/h2/schema/Schema;->database:Lorg/h2/engine/Database;

    monitor-enter v0

    .line 576
    :try_start_0
    iget-boolean v1, p1, Lorg/h2/command/ddl/CreateTableData;->temporary:Z

    if-eqz v1, :cond_0

    iget-boolean v1, p1, Lorg/h2/command/ddl/CreateTableData;->globalTemporary:Z

    if-eqz v1, :cond_1

    .line 577
    :cond_0
    iget-object v1, p0, Lorg/h2/schema/Schema;->database:Lorg/h2/engine/Database;

    iget-object v2, p1, Lorg/h2/command/ddl/CreateTableData;->session:Lorg/h2/engine/Session;

    invoke-virtual {v1, v2}, Lorg/h2/engine/Database;->lockMeta(Lorg/h2/engine/Session;)Z

    .line 579
    :cond_1
    iput-object p0, p1, Lorg/h2/command/ddl/CreateTableData;->schema:Lorg/h2/schema/Schema;

    .line 580
    iget-object v1, p1, Lorg/h2/command/ddl/CreateTableData;->tableEngine:Ljava/lang/String;

    if-nez v1, :cond_3

    .line 581
    iget-object v1, p0, Lorg/h2/schema/Schema;->database:Lorg/h2/engine/Database;

    invoke-virtual {v1}, Lorg/h2/engine/Database;->getSettings()Lorg/h2/engine/DbSettings;

    move-result-object v1

    .line 582
    iget-object v2, v1, Lorg/h2/engine/DbSettings;->defaultTableEngine:Ljava/lang/String;

    if-eqz v2, :cond_2

    .line 583
    iget-object v1, v1, Lorg/h2/engine/DbSettings;->defaultTableEngine:Ljava/lang/String;

    iput-object v1, p1, Lorg/h2/command/ddl/CreateTableData;->tableEngine:Ljava/lang/String;

    goto :goto_0

    .line 584
    :cond_2
    iget-boolean v1, v1, Lorg/h2/engine/DbSettings;->mvStore:Z

    if-eqz v1, :cond_3

    .line 585
    const-class v1, Lorg/h2/mvstore/db/MVTableEngine;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p1, Lorg/h2/command/ddl/CreateTableData;->tableEngine:Ljava/lang/String;

    .line 588
    :cond_3
    :goto_0
    iget-object v1, p1, Lorg/h2/command/ddl/CreateTableData;->tableEngine:Ljava/lang/String;

    if-eqz v1, :cond_4

    .line 589
    iget-object v1, p0, Lorg/h2/schema/Schema;->database:Lorg/h2/engine/Database;

    iget-object v2, p1, Lorg/h2/command/ddl/CreateTableData;->tableEngine:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lorg/h2/engine/Database;->getTableEngine(Ljava/lang/String;)Lorg/h2/api/TableEngine;

    move-result-object v1

    invoke-interface {v1, p1}, Lorg/h2/api/TableEngine;->createTable(Lorg/h2/command/ddl/CreateTableData;)Lorg/h2/table/Table;

    move-result-object p1

    monitor-exit v0

    return-object p1

    .line 591
    :cond_4
    new-instance v1, Lorg/h2/table/RegularTable;

    invoke-direct {v1, p1}, Lorg/h2/table/RegularTable;-><init>(Lorg/h2/command/ddl/CreateTableData;)V

    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception p1

    .line 592
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public createTableLink(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZZ)Lorg/h2/table/TableLink;
    .locals 15

    move-object v13, p0

    .line 613
    iget-object v14, v13, Lorg/h2/schema/Schema;->database:Lorg/h2/engine/Database;

    monitor-enter v14

    .line 614
    :try_start_0
    new-instance v0, Lorg/h2/table/TableLink;

    move-object v1, v0

    move-object v2, p0

    move/from16 v3, p1

    move-object/from16 v4, p2

    move-object/from16 v5, p3

    move-object/from16 v6, p4

    move-object/from16 v7, p5

    move-object/from16 v8, p6

    move-object/from16 v9, p7

    move-object/from16 v10, p8

    move/from16 v11, p9

    move/from16 v12, p10

    invoke-direct/range {v1 .. v12}, Lorg/h2/table/TableLink;-><init>(Lorg/h2/schema/Schema;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZZ)V

    monitor-exit v14

    return-object v0

    :catchall_0
    move-exception v0

    .line 617
    monitor-exit v14
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public findConstant(Ljava/lang/String;)Lorg/h2/schema/Constant;
    .locals 1

    .line 332
    iget-object v0, p0, Lorg/h2/schema/Schema;->constants:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/h2/schema/Constant;

    return-object p1
.end method

.method public findConstraint(Lorg/h2/engine/Session;Ljava/lang/String;)Lorg/h2/constraint/Constraint;
    .locals 1

    .line 317
    iget-object v0, p0, Lorg/h2/schema/Schema;->constraints:Ljava/util/HashMap;

    invoke-virtual {v0, p2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/h2/constraint/Constraint;

    if-nez v0, :cond_0

    .line 319
    invoke-virtual {p1, p2}, Lorg/h2/engine/Session;->findLocalTempTableConstraint(Ljava/lang/String;)Lorg/h2/constraint/Constraint;

    move-result-object v0

    :cond_0
    return-object v0
.end method

.method public findFunction(Ljava/lang/String;)Lorg/h2/engine/FunctionAlias;
    .locals 1

    .line 343
    iget-object v0, p0, Lorg/h2/schema/Schema;->functions:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/h2/engine/FunctionAlias;

    return-object p1
.end method

.method public findIndex(Lorg/h2/engine/Session;Ljava/lang/String;)Lorg/h2/index/Index;
    .locals 1

    .line 279
    iget-object v0, p0, Lorg/h2/schema/Schema;->indexes:Ljava/util/HashMap;

    invoke-virtual {v0, p2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/h2/index/Index;

    if-nez v0, :cond_0

    .line 281
    invoke-virtual {p1, p2}, Lorg/h2/engine/Session;->findLocalTempTableIndex(Ljava/lang/String;)Lorg/h2/index/Index;

    move-result-object v0

    :cond_0
    return-object v0
.end method

.method public findSequence(Ljava/lang/String;)Lorg/h2/schema/Sequence;
    .locals 1

    .line 305
    iget-object v0, p0, Lorg/h2/schema/Schema;->sequences:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/h2/schema/Sequence;

    return-object p1
.end method

.method public findTableOrView(Lorg/h2/engine/Session;Ljava/lang/String;)Lorg/h2/table/Table;
    .locals 1

    .line 263
    iget-object v0, p0, Lorg/h2/schema/Schema;->tablesAndViews:Ljava/util/HashMap;

    invoke-virtual {v0, p2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/h2/table/Table;

    if-nez v0, :cond_0

    if-eqz p1, :cond_0

    .line 265
    invoke-virtual {p1, p2}, Lorg/h2/engine/Session;->findLocalTempTable(Ljava/lang/String;)Lorg/h2/table/Table;

    move-result-object v0

    :cond_0
    return-object v0
.end method

.method public findTrigger(Ljava/lang/String;)Lorg/h2/schema/TriggerObject;
    .locals 1

    .line 294
    iget-object v0, p0, Lorg/h2/schema/Schema;->triggers:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/h2/schema/TriggerObject;

    return-object p1
.end method

.method public freeUniqueName(Ljava/lang/String;)V
    .locals 2

    if-eqz p1, :cond_0

    .line 353
    iget-object v0, p0, Lorg/h2/schema/Schema;->temporaryUniqueNames:Ljava/util/HashSet;

    monitor-enter v0

    .line 354
    :try_start_0
    iget-object v1, p0, Lorg/h2/schema/Schema;->temporaryUniqueNames:Ljava/util/HashSet;

    invoke-virtual {v1, p1}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z

    .line 355
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1

    :cond_0
    :goto_0
    return-void
.end method

.method public getAll()Ljava/util/ArrayList;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Lorg/h2/schema/SchemaObject;",
            ">;"
        }
    .end annotation

    .line 508
    invoke-static {}, Lorg/h2/util/New;->arrayList()Ljava/util/ArrayList;

    move-result-object v0

    const/4 v1, 0x0

    .line 509
    invoke-direct {p0, v1}, Lorg/h2/schema/Schema;->getMap(I)Ljava/util/HashMap;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    const/4 v1, 0x3

    .line 510
    invoke-direct {p0, v1}, Lorg/h2/schema/Schema;->getMap(I)Ljava/util/HashMap;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    const/4 v1, 0x1

    .line 511
    invoke-direct {p0, v1}, Lorg/h2/schema/Schema;->getMap(I)Ljava/util/HashMap;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    const/4 v1, 0x4

    .line 512
    invoke-direct {p0, v1}, Lorg/h2/schema/Schema;->getMap(I)Ljava/util/HashMap;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    const/4 v1, 0x5

    .line 513
    invoke-direct {p0, v1}, Lorg/h2/schema/Schema;->getMap(I)Ljava/util/HashMap;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    const/16 v1, 0xb

    .line 514
    invoke-direct {p0, v1}, Lorg/h2/schema/Schema;->getMap(I)Ljava/util/HashMap;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    const/16 v1, 0x9

    .line 515
    invoke-direct {p0, v1}, Lorg/h2/schema/Schema;->getMap(I)Ljava/util/HashMap;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    return-object v0
.end method

.method public getAll(I)Ljava/util/ArrayList;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/ArrayList<",
            "Lorg/h2/schema/SchemaObject;",
            ">;"
        }
    .end annotation

    .line 526
    invoke-direct {p0, p1}, Lorg/h2/schema/Schema;->getMap(I)Ljava/util/HashMap;

    move-result-object p1

    .line 527
    invoke-virtual {p1}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object p1

    invoke-static {p1}, Lorg/h2/util/New;->arrayList(Ljava/util/Collection;)Ljava/util/ArrayList;

    move-result-object p1

    return-object p1
.end method

.method public getAllTablesAndViews()Ljava/util/ArrayList;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Lorg/h2/table/Table;",
            ">;"
        }
    .end annotation

    .line 536
    iget-object v0, p0, Lorg/h2/schema/Schema;->database:Lorg/h2/engine/Database;

    monitor-enter v0

    .line 537
    :try_start_0
    iget-object v1, p0, Lorg/h2/schema/Schema;->tablesAndViews:Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-static {v1}, Lorg/h2/util/New;->arrayList(Ljava/util/Collection;)Ljava/util/ArrayList;

    move-result-object v1

    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception v1

    .line 538
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public getConstant(Ljava/lang/String;)Lorg/h2/schema/Constant;
    .locals 1

    .line 480
    iget-object v0, p0, Lorg/h2/schema/Schema;->constants:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/h2/schema/Constant;

    if-eqz v0, :cond_0

    return-object v0

    :cond_0
    const v0, 0x16003

    .line 482
    invoke-static {v0, p1}, Lorg/h2/message/DbException;->get(ILjava/lang/String;)Lorg/h2/message/DbException;

    move-result-object p1

    throw p1
.end method

.method public getConstraint(Ljava/lang/String;)Lorg/h2/constraint/Constraint;
    .locals 1

    .line 465
    iget-object v0, p0, Lorg/h2/schema/Schema;->constraints:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/h2/constraint/Constraint;

    if-eqz v0, :cond_0

    return-object v0

    :cond_0
    const v0, 0x15fc9

    .line 467
    invoke-static {v0, p1}, Lorg/h2/message/DbException;->get(ILjava/lang/String;)Lorg/h2/message/DbException;

    move-result-object p1

    throw p1
.end method

.method public getCreateSQL()Ljava/lang/String;
    .locals 2

    .line 100
    iget-boolean v0, p0, Lorg/h2/schema/Schema;->system:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    return-object v0

    .line 103
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "CREATE SCHEMA IF NOT EXISTS "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lorg/h2/schema/Schema;->getSQL()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " AUTHORIZATION "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lorg/h2/schema/Schema;->owner:Lorg/h2/engine/User;

    invoke-virtual {v1}, Lorg/h2/engine/User;->getSQL()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getCreateSQLForCopy(Lorg/h2/table/Table;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 90
    invoke-static {}, Lorg/h2/message/DbException;->throwInternalError()Ljava/lang/RuntimeException;

    move-result-object p1

    throw p1
.end method

.method public getDropSQL()Ljava/lang/String;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public getIndex(Ljava/lang/String;)Lorg/h2/index/Index;
    .locals 1

    .line 450
    iget-object v0, p0, Lorg/h2/schema/Schema;->indexes:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/h2/index/Index;

    if-eqz v0, :cond_0

    return-object v0

    :cond_0
    const v0, 0xa480

    .line 452
    invoke-static {v0, p1}, Lorg/h2/message/DbException;->get(ILjava/lang/String;)Lorg/h2/message/DbException;

    move-result-object p1

    throw p1
.end method

.method public getOwner()Lorg/h2/engine/User;
    .locals 1

    .line 174
    iget-object v0, p0, Lorg/h2/schema/Schema;->owner:Lorg/h2/engine/User;

    return-object v0
.end method

.method public getSequence(Ljava/lang/String;)Lorg/h2/schema/Sequence;
    .locals 1

    .line 495
    iget-object v0, p0, Lorg/h2/schema/Schema;->sequences:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/h2/schema/Sequence;

    if-eqz v0, :cond_0

    return-object v0

    :cond_0
    const v0, 0x15fb4

    .line 497
    invoke-static {v0, p1}, Lorg/h2/message/DbException;->get(ILjava/lang/String;)Lorg/h2/message/DbException;

    move-result-object p1

    throw p1
.end method

.method public getTableOrView(Lorg/h2/engine/Session;Ljava/lang/String;)Lorg/h2/table/Table;
    .locals 1

    .line 430
    iget-object v0, p0, Lorg/h2/schema/Schema;->tablesAndViews:Ljava/util/HashMap;

    invoke-virtual {v0, p2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/h2/table/Table;

    if-nez v0, :cond_2

    if-eqz p1, :cond_0

    .line 433
    invoke-virtual {p1, p2}, Lorg/h2/engine/Session;->findLocalTempTable(Ljava/lang/String;)Lorg/h2/table/Table;

    move-result-object v0

    :cond_0
    if-eqz v0, :cond_1

    goto :goto_0

    :cond_1
    const p1, 0xa476

    .line 436
    invoke-static {p1, p2}, Lorg/h2/message/DbException;->get(ILjava/lang/String;)Lorg/h2/message/DbException;

    move-result-object p1

    throw p1

    :cond_2
    :goto_0
    return-object v0
.end method

.method public getTableOrViewByName(Ljava/lang/String;)Lorg/h2/table/Table;
    .locals 2

    .line 548
    iget-object v0, p0, Lorg/h2/schema/Schema;->database:Lorg/h2/engine/Database;

    monitor-enter v0

    .line 549
    :try_start_0
    iget-object v1, p0, Lorg/h2/schema/Schema;->tablesAndViews:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/h2/table/Table;

    monitor-exit v0

    return-object p1

    :catchall_0
    move-exception p1

    .line 550
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public getType()I
    .locals 1

    const/16 v0, 0xa

    return v0
.end method

.method public getUniqueConstraintName(Lorg/h2/engine/Session;Lorg/h2/table/Table;)Ljava/lang/String;
    .locals 1

    .line 394
    invoke-virtual {p2}, Lorg/h2/table/Table;->isTemporary()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p2}, Lorg/h2/table/Table;->isGlobalTemporary()Z

    move-result v0

    if-nez v0, :cond_0

    .line 395
    invoke-virtual {p1}, Lorg/h2/engine/Session;->getLocalTempTableConstraints()Ljava/util/HashMap;

    move-result-object p1

    goto :goto_0

    .line 397
    :cond_0
    iget-object p1, p0, Lorg/h2/schema/Schema;->constraints:Ljava/util/HashMap;

    :goto_0
    const-string v0, "CONSTRAINT_"

    .line 399
    invoke-direct {p0, p2, p1, v0}, Lorg/h2/schema/Schema;->getUniqueName(Lorg/h2/engine/DbObject;Ljava/util/HashMap;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public getUniqueIndexName(Lorg/h2/engine/Session;Lorg/h2/table/Table;Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .line 412
    invoke-virtual {p2}, Lorg/h2/table/Table;->isTemporary()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p2}, Lorg/h2/table/Table;->isGlobalTemporary()Z

    move-result v0

    if-nez v0, :cond_0

    .line 413
    invoke-virtual {p1}, Lorg/h2/engine/Session;->getLocalTempTableIndexes()Ljava/util/HashMap;

    move-result-object p1

    goto :goto_0

    .line 415
    :cond_0
    iget-object p1, p0, Lorg/h2/schema/Schema;->indexes:Ljava/util/HashMap;

    .line 417
    :goto_0
    invoke-direct {p0, p2, p1, p3}, Lorg/h2/schema/Schema;->getUniqueName(Lorg/h2/engine/DbObject;Ljava/util/HashMap;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public remove(Lorg/h2/schema/SchemaObject;)V
    .locals 3

    .line 559
    invoke-interface {p1}, Lorg/h2/schema/SchemaObject;->getName()Ljava/lang/String;

    move-result-object v0

    .line 560
    invoke-interface {p1}, Lorg/h2/schema/SchemaObject;->getType()I

    move-result p1

    invoke-direct {p0, p1}, Lorg/h2/schema/Schema;->getMap(I)Ljava/util/HashMap;

    move-result-object p1

    .line 561
    sget-boolean v1, Lorg/h2/engine/SysProperties;->CHECK:Z

    if-eqz v1, :cond_0

    invoke-virtual {p1, v0}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 562
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "not found: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lorg/h2/message/DbException;->throwInternalError(Ljava/lang/String;)Ljava/lang/RuntimeException;

    .line 564
    :cond_0
    invoke-virtual {p1, v0}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 565
    invoke-virtual {p0, v0}, Lorg/h2/schema/Schema;->freeUniqueName(Ljava/lang/String;)V

    return-void
.end method

.method public removeChildrenAndResources(Lorg/h2/engine/Session;)V
    .locals 5

    .line 114
    :goto_0
    iget-object v0, p0, Lorg/h2/schema/Schema;->triggers:Ljava/util/HashMap;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/h2/schema/Schema;->triggers:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->size()I

    move-result v0

    if-lez v0, :cond_0

    .line 115
    iget-object v0, p0, Lorg/h2/schema/Schema;->triggers:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->toArray()[Ljava/lang/Object;

    move-result-object v0

    aget-object v0, v0, v1

    check-cast v0, Lorg/h2/schema/TriggerObject;

    .line 116
    iget-object v1, p0, Lorg/h2/schema/Schema;->database:Lorg/h2/engine/Database;

    invoke-virtual {v1, p1, v0}, Lorg/h2/engine/Database;->removeSchemaObject(Lorg/h2/engine/Session;Lorg/h2/schema/SchemaObject;)V

    goto :goto_0

    .line 118
    :cond_0
    :goto_1
    iget-object v0, p0, Lorg/h2/schema/Schema;->constraints:Ljava/util/HashMap;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lorg/h2/schema/Schema;->constraints:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->size()I

    move-result v0

    if-lez v0, :cond_1

    .line 119
    iget-object v0, p0, Lorg/h2/schema/Schema;->constraints:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->toArray()[Ljava/lang/Object;

    move-result-object v0

    aget-object v0, v0, v1

    check-cast v0, Lorg/h2/constraint/Constraint;

    .line 120
    iget-object v2, p0, Lorg/h2/schema/Schema;->database:Lorg/h2/engine/Database;

    invoke-virtual {v2, p1, v0}, Lorg/h2/engine/Database;->removeSchemaObject(Lorg/h2/engine/Session;Lorg/h2/schema/SchemaObject;)V

    goto :goto_1

    .line 127
    :cond_1
    iget-object v0, p0, Lorg/h2/schema/Schema;->tablesAndViews:Ljava/util/HashMap;

    if-eqz v0, :cond_4

    .line 129
    iget-object v0, p0, Lorg/h2/schema/Schema;->tablesAndViews:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-static {v0}, Lorg/h2/util/New;->arrayList(Ljava/util/Collection;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    const/4 v2, 0x0

    :cond_2
    :goto_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_5

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/h2/table/Table;

    .line 132
    invoke-virtual {v3}, Lorg/h2/table/Table;->getName()Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_2

    .line 133
    iget-object v4, p0, Lorg/h2/schema/Schema;->database:Lorg/h2/engine/Database;

    invoke-virtual {v4, v3, v3}, Lorg/h2/engine/Database;->getDependentTable(Lorg/h2/schema/SchemaObject;Lorg/h2/table/Table;)Lorg/h2/table/Table;

    move-result-object v4

    if-nez v4, :cond_3

    .line 134
    iget-object v4, p0, Lorg/h2/schema/Schema;->database:Lorg/h2/engine/Database;

    invoke-virtual {v4, p1, v3}, Lorg/h2/engine/Database;->removeSchemaObject(Lorg/h2/engine/Session;Lorg/h2/schema/SchemaObject;)V

    goto :goto_2

    :cond_3
    const/4 v2, 0x1

    goto :goto_2

    :cond_4
    const/4 v2, 0x0

    :cond_5
    if-nez v2, :cond_1

    .line 142
    :goto_3
    iget-object v0, p0, Lorg/h2/schema/Schema;->indexes:Ljava/util/HashMap;

    if-eqz v0, :cond_6

    iget-object v0, p0, Lorg/h2/schema/Schema;->indexes:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->size()I

    move-result v0

    if-lez v0, :cond_6

    .line 143
    iget-object v0, p0, Lorg/h2/schema/Schema;->indexes:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->toArray()[Ljava/lang/Object;

    move-result-object v0

    aget-object v0, v0, v1

    check-cast v0, Lorg/h2/index/Index;

    .line 144
    iget-object v2, p0, Lorg/h2/schema/Schema;->database:Lorg/h2/engine/Database;

    invoke-virtual {v2, p1, v0}, Lorg/h2/engine/Database;->removeSchemaObject(Lorg/h2/engine/Session;Lorg/h2/schema/SchemaObject;)V

    goto :goto_3

    .line 146
    :cond_6
    :goto_4
    iget-object v0, p0, Lorg/h2/schema/Schema;->sequences:Ljava/util/HashMap;

    if-eqz v0, :cond_7

    iget-object v0, p0, Lorg/h2/schema/Schema;->sequences:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->size()I

    move-result v0

    if-lez v0, :cond_7

    .line 147
    iget-object v0, p0, Lorg/h2/schema/Schema;->sequences:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->toArray()[Ljava/lang/Object;

    move-result-object v0

    aget-object v0, v0, v1

    check-cast v0, Lorg/h2/schema/Sequence;

    .line 148
    iget-object v2, p0, Lorg/h2/schema/Schema;->database:Lorg/h2/engine/Database;

    invoke-virtual {v2, p1, v0}, Lorg/h2/engine/Database;->removeSchemaObject(Lorg/h2/engine/Session;Lorg/h2/schema/SchemaObject;)V

    goto :goto_4

    .line 150
    :cond_7
    :goto_5
    iget-object v0, p0, Lorg/h2/schema/Schema;->constants:Ljava/util/HashMap;

    if-eqz v0, :cond_8

    iget-object v0, p0, Lorg/h2/schema/Schema;->constants:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->size()I

    move-result v0

    if-lez v0, :cond_8

    .line 151
    iget-object v0, p0, Lorg/h2/schema/Schema;->constants:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->toArray()[Ljava/lang/Object;

    move-result-object v0

    aget-object v0, v0, v1

    check-cast v0, Lorg/h2/schema/Constant;

    .line 152
    iget-object v2, p0, Lorg/h2/schema/Schema;->database:Lorg/h2/engine/Database;

    invoke-virtual {v2, p1, v0}, Lorg/h2/engine/Database;->removeSchemaObject(Lorg/h2/engine/Session;Lorg/h2/schema/SchemaObject;)V

    goto :goto_5

    .line 154
    :cond_8
    :goto_6
    iget-object v0, p0, Lorg/h2/schema/Schema;->functions:Ljava/util/HashMap;

    if-eqz v0, :cond_9

    iget-object v0, p0, Lorg/h2/schema/Schema;->functions:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->size()I

    move-result v0

    if-lez v0, :cond_9

    .line 155
    iget-object v0, p0, Lorg/h2/schema/Schema;->functions:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->toArray()[Ljava/lang/Object;

    move-result-object v0

    aget-object v0, v0, v1

    check-cast v0, Lorg/h2/engine/FunctionAlias;

    .line 156
    iget-object v2, p0, Lorg/h2/schema/Schema;->database:Lorg/h2/engine/Database;

    invoke-virtual {v2, p1, v0}, Lorg/h2/engine/Database;->removeSchemaObject(Lorg/h2/engine/Session;Lorg/h2/schema/SchemaObject;)V

    goto :goto_6

    .line 158
    :cond_9
    iget-object v0, p0, Lorg/h2/schema/Schema;->database:Lorg/h2/engine/Database;

    invoke-virtual {p0}, Lorg/h2/schema/Schema;->getId()I

    move-result v1

    invoke-virtual {v0, p1, v1}, Lorg/h2/engine/Database;->removeMeta(Lorg/h2/engine/Session;I)V

    const/4 p1, 0x0

    .line 159
    iput-object p1, p0, Lorg/h2/schema/Schema;->owner:Lorg/h2/engine/User;

    .line 160
    invoke-virtual {p0}, Lorg/h2/schema/Schema;->invalidate()V

    return-void
.end method

.method public rename(Lorg/h2/schema/SchemaObject;Ljava/lang/String;)V
    .locals 3

    .line 235
    invoke-interface {p1}, Lorg/h2/schema/SchemaObject;->getType()I

    move-result v0

    .line 236
    invoke-direct {p0, v0}, Lorg/h2/schema/Schema;->getMap(I)Ljava/util/HashMap;

    move-result-object v0

    .line 237
    sget-boolean v1, Lorg/h2/engine/SysProperties;->CHECK:Z

    if-eqz v1, :cond_2

    .line 238
    invoke-interface {p1}, Lorg/h2/schema/SchemaObject;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 239
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "not found: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {p1}, Lorg/h2/schema/SchemaObject;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lorg/h2/message/DbException;->throwInternalError(Ljava/lang/String;)Ljava/lang/RuntimeException;

    .line 241
    :cond_0
    invoke-interface {p1}, Lorg/h2/schema/SchemaObject;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    invoke-virtual {v0, p2}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 242
    :cond_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "object already exists: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lorg/h2/message/DbException;->throwInternalError(Ljava/lang/String;)Ljava/lang/RuntimeException;

    .line 245
    :cond_2
    invoke-interface {p1}, Lorg/h2/schema/SchemaObject;->checkRename()V

    .line 246
    invoke-interface {p1}, Lorg/h2/schema/SchemaObject;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 247
    invoke-interface {p1}, Lorg/h2/schema/SchemaObject;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lorg/h2/schema/Schema;->freeUniqueName(Ljava/lang/String;)V

    .line 248
    invoke-interface {p1, p2}, Lorg/h2/schema/SchemaObject;->rename(Ljava/lang/String;)V

    .line 249
    invoke-virtual {v0, p2, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 250
    invoke-virtual {p0, p2}, Lorg/h2/schema/Schema;->freeUniqueName(Ljava/lang/String;)V

    return-void
.end method
