.class public abstract Lorg/h2/table/Table;
.super Lorg/h2/schema/SchemaObjectBase;
.source "Table.java"


# static fields
.field public static final EXTERNAL_TABLE_ENGINE:Ljava/lang/String; = "EXTERNAL"

.field public static final SYSTEM_TABLE:Ljava/lang/String; = "SYSTEM TABLE"

.field public static final TABLE:Ljava/lang/String; = "TABLE"

.field public static final TABLE_LINK:Ljava/lang/String; = "TABLE LINK"

.field public static final TYPE_CACHED:I = 0x0

.field public static final TYPE_MEMORY:I = 0x1

.field public static final VIEW:Ljava/lang/String; = "VIEW"


# instance fields
.field private checkForeignKeyConstraints:Z

.field private final columnMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Lorg/h2/table/Column;",
            ">;"
        }
    .end annotation
.end field

.field protected columns:[Lorg/h2/table/Column;

.field protected compareMode:Lorg/h2/value/CompareMode;

.field private constraints:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lorg/h2/constraint/Constraint;",
            ">;"
        }
    .end annotation
.end field

.field protected isHidden:Z

.field private volatile nullRow:Lorg/h2/result/Row;

.field private onCommitDrop:Z

.field private onCommitTruncate:Z

.field private final persistData:Z

.field private final persistIndexes:Z

.field private sequences:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lorg/h2/schema/Sequence;",
            ">;"
        }
    .end annotation
.end field

.field private triggers:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lorg/h2/schema/TriggerObject;",
            ">;"
        }
    .end annotation
.end field

.field private views:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lorg/h2/table/TableView;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lorg/h2/schema/Schema;ILjava/lang/String;ZZ)V
    .locals 1

    .line 111
    invoke-direct {p0}, Lorg/h2/schema/SchemaObjectBase;-><init>()V

    const/4 v0, 0x1

    .line 106
    iput-boolean v0, p0, Lorg/h2/table/Table;->checkForeignKeyConstraints:Z

    .line 112
    invoke-virtual {p1}, Lorg/h2/schema/Schema;->getDatabase()Lorg/h2/engine/Database;

    move-result-object v0

    invoke-virtual {v0}, Lorg/h2/engine/Database;->newStringMap()Ljava/util/HashMap;

    move-result-object v0

    iput-object v0, p0, Lorg/h2/table/Table;->columnMap:Ljava/util/HashMap;

    const/16 v0, 0xb

    .line 113
    invoke-virtual {p0, p1, p2, p3, v0}, Lorg/h2/table/Table;->initSchemaObjectBase(Lorg/h2/schema/Schema;ILjava/lang/String;I)V

    .line 114
    iput-boolean p4, p0, Lorg/h2/table/Table;->persistIndexes:Z

    .line 115
    iput-boolean p5, p0, Lorg/h2/table/Table;->persistData:Z

    .line 116
    invoke-virtual {p1}, Lorg/h2/schema/Schema;->getDatabase()Lorg/h2/engine/Database;

    move-result-object p1

    invoke-virtual {p1}, Lorg/h2/engine/Database;->getCompareMode()Lorg/h2/value/CompareMode;

    move-result-object p1

    iput-object p1, p0, Lorg/h2/table/Table;->compareMode:Lorg/h2/value/CompareMode;

    return-void
.end method

.method private static add(Ljava/util/ArrayList;Ljava/lang/Object;)Ljava/util/ArrayList;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/ArrayList<",
            "TT;>;TT;)",
            "Ljava/util/ArrayList<",
            "TT;>;"
        }
    .end annotation

    if-nez p0, :cond_0

    .line 897
    invoke-static {}, Lorg/h2/util/New;->arrayList()Ljava/util/ArrayList;

    move-result-object p0

    .line 900
    :cond_0
    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-object p0
.end method

.method private fireConstraints(Lorg/h2/engine/Session;Lorg/h2/result/Row;Lorg/h2/result/Row;Z)V
    .locals 4

    .line 962
    iget-object v0, p0, Lorg/h2/table/Table;->constraints:Ljava/util/ArrayList;

    if-eqz v0, :cond_1

    const/4 v0, 0x0

    .line 964
    iget-object v1, p0, Lorg/h2/table/Table;->constraints:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    :goto_0
    if-ge v0, v1, :cond_1

    .line 965
    iget-object v2, p0, Lorg/h2/table/Table;->constraints:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/h2/constraint/Constraint;

    .line 966
    invoke-virtual {v2}, Lorg/h2/constraint/Constraint;->isBefore()Z

    move-result v3

    if-ne v3, p4, :cond_0

    .line 967
    invoke-virtual {v2, p1, p0, p2, p3}, Lorg/h2/constraint/Constraint;->checkRow(Lorg/h2/engine/Session;Lorg/h2/table/Table;Lorg/h2/result/Row;Lorg/h2/result/Row;)V

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method private fireRow(Lorg/h2/engine/Session;Lorg/h2/result/Row;Lorg/h2/result/Row;ZZ)Z
    .locals 8

    .line 991
    iget-object v0, p0, Lorg/h2/table/Table;->triggers:Ljava/util/ArrayList;

    if-eqz v0, :cond_1

    .line 992
    iget-object v0, p0, Lorg/h2/table/Table;->triggers:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    move-object v2, v1

    check-cast v2, Lorg/h2/schema/TriggerObject;

    move-object v3, p1

    move-object v4, p2

    move-object v5, p3

    move v6, p4

    move v7, p5

    .line 993
    invoke-virtual/range {v2 .. v7}, Lorg/h2/schema/TriggerObject;->fireRow(Lorg/h2/engine/Session;Lorg/h2/result/Row;Lorg/h2/result/Row;ZZ)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_1
    const/4 p1, 0x0

    return p1
.end method

.method private static remove(Ljava/util/ArrayList;Lorg/h2/engine/DbObject;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "+",
            "Lorg/h2/engine/DbObject;",
            ">;",
            "Lorg/h2/engine/DbObject;",
            ")V"
        }
    .end annotation

    if-eqz p0, :cond_0

    .line 793
    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result p1

    if-ltz p1, :cond_0

    .line 795
    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    :cond_0
    return-void
.end method


# virtual methods
.method public addConstraint(Lorg/h2/constraint/Constraint;)V
    .locals 1

    .line 868
    iget-object v0, p0, Lorg/h2/table/Table;->constraints:Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/h2/table/Table;->constraints:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v0

    if-gez v0, :cond_1

    .line 869
    :cond_0
    iget-object v0, p0, Lorg/h2/table/Table;->constraints:Ljava/util/ArrayList;

    invoke-static {v0, p1}, Lorg/h2/table/Table;->add(Ljava/util/ArrayList;Ljava/lang/Object;)Ljava/util/ArrayList;

    move-result-object p1

    iput-object p1, p0, Lorg/h2/table/Table;->constraints:Ljava/util/ArrayList;

    :cond_1
    return-void
.end method

.method public addDependencies(Ljava/util/HashSet;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashSet<",
            "Lorg/h2/engine/DbObject;",
            ">;)V"
        }
    .end annotation

    .line 366
    invoke-virtual {p1, p0}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 370
    :cond_0
    iget-object v0, p0, Lorg/h2/table/Table;->sequences:Ljava/util/ArrayList;

    if-eqz v0, :cond_1

    .line 371
    iget-object v0, p0, Lorg/h2/table/Table;->sequences:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/h2/schema/Sequence;

    .line 372
    invoke-virtual {p1, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 375
    :cond_1
    invoke-static {p1}, Lorg/h2/expression/ExpressionVisitor;->getDependenciesVisitor(Ljava/util/HashSet;)Lorg/h2/expression/ExpressionVisitor;

    move-result-object v0

    .line 377
    iget-object v1, p0, Lorg/h2/table/Table;->columns:[Lorg/h2/table/Column;

    array-length v2, v1

    const/4 v3, 0x0

    :goto_1
    if-ge v3, v2, :cond_2

    aget-object v4, v1, v3

    .line 378
    invoke-virtual {v4, v0}, Lorg/h2/table/Column;->isEverything(Lorg/h2/expression/ExpressionVisitor;)Z

    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 380
    :cond_2
    iget-object v1, p0, Lorg/h2/table/Table;->constraints:Ljava/util/ArrayList;

    if-eqz v1, :cond_3

    .line 381
    iget-object v1, p0, Lorg/h2/table/Table;->constraints:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/h2/constraint/Constraint;

    .line 382
    invoke-virtual {v2, v0}, Lorg/h2/constraint/Constraint;->isEverything(Lorg/h2/expression/ExpressionVisitor;)Z

    goto :goto_2

    .line 385
    :cond_3
    invoke-virtual {p1, p0}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public abstract addIndex(Lorg/h2/engine/Session;Ljava/lang/String;I[Lorg/h2/table/IndexColumn;Lorg/h2/index/IndexType;ZLjava/lang/String;)Lorg/h2/index/Index;
.end method

.method public abstract addRow(Lorg/h2/engine/Session;Lorg/h2/result/Row;)V
.end method

.method public addSequence(Lorg/h2/schema/Sequence;)V
    .locals 1

    .line 883
    iget-object v0, p0, Lorg/h2/table/Table;->sequences:Ljava/util/ArrayList;

    invoke-static {v0, p1}, Lorg/h2/table/Table;->add(Ljava/util/ArrayList;Ljava/lang/Object;)Ljava/util/ArrayList;

    move-result-object p1

    iput-object p1, p0, Lorg/h2/table/Table;->sequences:Ljava/util/ArrayList;

    return-void
.end method

.method public addTrigger(Lorg/h2/schema/TriggerObject;)V
    .locals 1

    .line 892
    iget-object v0, p0, Lorg/h2/table/Table;->triggers:Ljava/util/ArrayList;

    invoke-static {v0, p1}, Lorg/h2/table/Table;->add(Ljava/util/ArrayList;Ljava/lang/Object;)Ljava/util/ArrayList;

    move-result-object p1

    iput-object p1, p0, Lorg/h2/table/Table;->triggers:Ljava/util/ArrayList;

    return-void
.end method

.method public addView(Lorg/h2/table/TableView;)V
    .locals 1

    .line 859
    iget-object v0, p0, Lorg/h2/table/Table;->views:Ljava/util/ArrayList;

    invoke-static {v0, p1}, Lorg/h2/table/Table;->add(Ljava/util/ArrayList;Ljava/lang/Object;)Ljava/util/ArrayList;

    move-result-object p1

    iput-object p1, p0, Lorg/h2/table/Table;->views:Ljava/util/ArrayList;

    return-void
.end method

.method public abstract canDrop()Z
.end method

.method public abstract canGetRowCount()Z
.end method

.method public canReference()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public canTruncate()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public checkDeadlock(Lorg/h2/engine/Session;Lorg/h2/engine/Session;Ljava/util/Set;)Ljava/util/ArrayList;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/h2/engine/Session;",
            "Lorg/h2/engine/Session;",
            "Ljava/util/Set<",
            "Lorg/h2/engine/Session;",
            ">;)",
            "Ljava/util/ArrayList<",
            "Lorg/h2/engine/Session;",
            ">;"
        }
    .end annotation

    const/4 p1, 0x0

    return-object p1
.end method

.method public abstract checkSupportAlter()V
.end method

.method public checkWritingAllowed()V
    .locals 1

    .line 1159
    iget-object v0, p0, Lorg/h2/table/Table;->database:Lorg/h2/engine/Database;

    invoke-virtual {v0}, Lorg/h2/engine/Database;->checkWritingAllowed()V

    return-void
.end method

.method public abstract close(Lorg/h2/engine/Session;)V
.end method

.method public commit(SLorg/h2/result/Row;)V
    .locals 0

    return-void
.end method

.method public compareTypeSafe(Lorg/h2/value/Value;Lorg/h2/value/Value;)I
    .locals 2

    if-ne p1, p2, :cond_0

    const/4 p1, 0x0

    return p1

    .line 1143
    :cond_0
    invoke-virtual {p1}, Lorg/h2/value/Value;->getType()I

    move-result v0

    invoke-virtual {p2}, Lorg/h2/value/Value;->getType()I

    move-result v1

    invoke-static {v0, v1}, Lorg/h2/value/Value;->getHigherOrder(II)I

    move-result v0

    .line 1144
    invoke-virtual {p1, v0}, Lorg/h2/value/Value;->convertTo(I)Lorg/h2/value/Value;

    move-result-object p1

    .line 1145
    invoke-virtual {p2, v0}, Lorg/h2/value/Value;->convertTo(I)Lorg/h2/value/Value;

    move-result-object p2

    .line 1146
    iget-object v0, p0, Lorg/h2/table/Table;->compareMode:Lorg/h2/value/CompareMode;

    invoke-virtual {p1, p2, v0}, Lorg/h2/value/Value;->compareTypeSafe(Lorg/h2/value/Value;Lorg/h2/value/CompareMode;)I

    move-result p1

    return p1
.end method

.method public doesColumnExist(Ljava/lang/String;)Z
    .locals 1

    .line 694
    iget-object v0, p0, Lorg/h2/table/Table;->columnMap:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public dropMultipleColumnsConstraintsAndIndexes(Lorg/h2/engine/Session;Ljava/util/ArrayList;)V
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/h2/engine/Session;",
            "Ljava/util/ArrayList<",
            "Lorg/h2/table/Column;",
            ">;)V"
        }
    .end annotation

    .line 573
    invoke-static {}, Lorg/h2/util/New;->hashSet()Ljava/util/HashSet;

    move-result-object v0

    .line 574
    iget-object v1, p0, Lorg/h2/table/Table;->constraints:Ljava/util/ArrayList;

    const v2, 0x15fe3

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-eqz v1, :cond_3

    .line 575
    invoke-virtual {p2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lorg/h2/table/Column;

    .line 576
    iget-object v6, p0, Lorg/h2/table/Table;->constraints:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v6

    const/4 v7, 0x0

    :goto_0
    if-ge v7, v6, :cond_0

    .line 577
    iget-object v8, p0, Lorg/h2/table/Table;->constraints:Ljava/util/ArrayList;

    invoke-virtual {v8, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lorg/h2/constraint/Constraint;

    .line 578
    invoke-virtual {v8, p0}, Lorg/h2/constraint/Constraint;->getReferencedColumns(Lorg/h2/table/Table;)Ljava/util/HashSet;

    move-result-object v9

    .line 579
    invoke-virtual {v9, v5}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_1

    goto :goto_1

    .line 582
    :cond_1
    invoke-virtual {v9}, Ljava/util/HashSet;->size()I

    move-result v9

    if-ne v9, v4, :cond_2

    .line 583
    invoke-virtual {v0, v8}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    :goto_1
    add-int/lit8 v7, v7, 0x1

    goto :goto_0

    .line 585
    :cond_2
    invoke-virtual {v8}, Lorg/h2/constraint/Constraint;->getSQL()Ljava/lang/String;

    move-result-object p1

    invoke-static {v2, p1}, Lorg/h2/message/DbException;->get(ILjava/lang/String;)Lorg/h2/message/DbException;

    move-result-object p1

    throw p1

    .line 591
    :cond_3
    invoke-static {}, Lorg/h2/util/New;->hashSet()Ljava/util/HashSet;

    move-result-object v1

    .line 592
    invoke-virtual {p0}, Lorg/h2/table/Table;->getIndexes()Ljava/util/ArrayList;

    move-result-object v5

    if-eqz v5, :cond_8

    .line 594
    invoke-virtual {p2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :cond_4
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_8

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lorg/h2/table/Column;

    .line 595
    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v7

    const/4 v8, 0x0

    :goto_2
    if-ge v8, v7, :cond_4

    .line 596
    invoke-virtual {v5, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lorg/h2/index/Index;

    .line 597
    invoke-interface {v9}, Lorg/h2/index/Index;->getCreateSQL()Ljava/lang/String;

    move-result-object v10

    if-nez v10, :cond_5

    goto :goto_3

    .line 600
    :cond_5
    invoke-interface {v9, v6}, Lorg/h2/index/Index;->getColumnIndex(Lorg/h2/table/Column;)I

    move-result v10

    if-gez v10, :cond_6

    goto :goto_3

    .line 603
    :cond_6
    invoke-interface {v9}, Lorg/h2/index/Index;->getColumns()[Lorg/h2/table/Column;

    move-result-object v10

    array-length v10, v10

    if-ne v10, v4, :cond_7

    .line 604
    invoke-virtual {v1, v9}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    :goto_3
    add-int/lit8 v8, v8, 0x1

    goto :goto_2

    .line 606
    :cond_7
    invoke-interface {v9}, Lorg/h2/index/Index;->getSQL()Ljava/lang/String;

    move-result-object p1

    invoke-static {v2, p1}, Lorg/h2/message/DbException;->get(ILjava/lang/String;)Lorg/h2/message/DbException;

    move-result-object p1

    throw p1

    .line 612
    :cond_8
    invoke-virtual {v0}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_4
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_9

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/h2/constraint/Constraint;

    .line 613
    invoke-virtual {p1}, Lorg/h2/engine/Session;->getDatabase()Lorg/h2/engine/Database;

    move-result-object v2

    invoke-virtual {v2, p1, v0}, Lorg/h2/engine/Database;->removeSchemaObject(Lorg/h2/engine/Session;Lorg/h2/schema/SchemaObject;)V

    goto :goto_4

    .line 615
    :cond_9
    invoke-virtual {v1}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :cond_a
    :goto_5
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_b

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/h2/index/Index;

    .line 618
    invoke-virtual {p0}, Lorg/h2/table/Table;->getIndexes()Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_a

    .line 619
    invoke-virtual {p1}, Lorg/h2/engine/Session;->getDatabase()Lorg/h2/engine/Database;

    move-result-object v1

    invoke-virtual {v1, p1, v0}, Lorg/h2/engine/Database;->removeSchemaObject(Lorg/h2/engine/Session;Lorg/h2/schema/SchemaObject;)V

    goto :goto_5

    :cond_b
    return-void
.end method

.method public findPrimaryKey()Lorg/h2/index/Index;
    .locals 5

    .line 745
    invoke-virtual {p0}, Lorg/h2/table/Table;->getIndexes()Ljava/util/ArrayList;

    move-result-object v0

    if-eqz v0, :cond_1

    const/4 v1, 0x0

    .line 747
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v2

    :goto_0
    if-ge v1, v2, :cond_1

    .line 748
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/h2/index/Index;

    .line 749
    invoke-interface {v3}, Lorg/h2/index/Index;->getIndexType()Lorg/h2/index/IndexType;

    move-result-object v4

    invoke-virtual {v4}, Lorg/h2/index/IndexType;->isPrimaryKey()Z

    move-result v4

    if-eqz v4, :cond_0

    return-object v3

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    return-object v0
.end method

.method public fire(Lorg/h2/engine/Session;IZ)V
    .locals 2

    .line 912
    iget-object v0, p0, Lorg/h2/table/Table;->triggers:Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    .line 913
    iget-object v0, p0, Lorg/h2/table/Table;->triggers:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/h2/schema/TriggerObject;

    .line 914
    invoke-virtual {v1, p1, p2, p3}, Lorg/h2/schema/TriggerObject;->fire(Lorg/h2/engine/Session;IZ)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public fireAfterRow(Lorg/h2/engine/Session;Lorg/h2/result/Row;Lorg/h2/result/Row;Z)V
    .locals 6

    const/4 v4, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move v5, p4

    .line 983
    invoke-direct/range {v0 .. v5}, Lorg/h2/table/Table;->fireRow(Lorg/h2/engine/Session;Lorg/h2/result/Row;Lorg/h2/result/Row;ZZ)Z

    if-nez p4, :cond_0

    const/4 p4, 0x0

    .line 985
    invoke-direct {p0, p1, p2, p3, p4}, Lorg/h2/table/Table;->fireConstraints(Lorg/h2/engine/Session;Lorg/h2/result/Row;Lorg/h2/result/Row;Z)V

    :cond_0
    return-void
.end method

.method public fireBeforeRow(Lorg/h2/engine/Session;Lorg/h2/result/Row;Lorg/h2/result/Row;)Z
    .locals 6

    const/4 v4, 0x1

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    .line 955
    invoke-direct/range {v0 .. v5}, Lorg/h2/table/Table;->fireRow(Lorg/h2/engine/Session;Lorg/h2/result/Row;Lorg/h2/result/Row;ZZ)Z

    move-result v0

    const/4 v1, 0x1

    .line 956
    invoke-direct {p0, p1, p2, p3, v1}, Lorg/h2/table/Table;->fireConstraints(Lorg/h2/engine/Session;Lorg/h2/result/Row;Lorg/h2/result/Row;Z)V

    return v0
.end method

.method public fireRow()Z
    .locals 1

    .line 942
    iget-object v0, p0, Lorg/h2/table/Table;->constraints:Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/h2/table/Table;->constraints:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-gtz v0, :cond_1

    :cond_0
    iget-object v0, p0, Lorg/h2/table/Table;->triggers:Ljava/util/ArrayList;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lorg/h2/table/Table;->triggers:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_2

    :cond_1
    const/4 v0, 0x1

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public getBestPlanItem(Lorg/h2/engine/Session;[I[Lorg/h2/table/TableFilter;ILorg/h2/result/SortOrder;Ljava/util/HashSet;)Lorg/h2/table/PlanItem;
    .locals 16
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/h2/engine/Session;",
            "[I[",
            "Lorg/h2/table/TableFilter;",
            "I",
            "Lorg/h2/result/SortOrder;",
            "Ljava/util/HashSet<",
            "Lorg/h2/table/Column;",
            ">;)",
            "Lorg/h2/table/PlanItem;"
        }
    .end annotation

    .line 712
    new-instance v0, Lorg/h2/table/PlanItem;

    invoke-direct {v0}, Lorg/h2/table/PlanItem;-><init>()V

    .line 713
    invoke-virtual/range {p0 .. p1}, Lorg/h2/table/Table;->getScanIndex(Lorg/h2/engine/Session;)Lorg/h2/index/Index;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/h2/table/PlanItem;->setIndex(Lorg/h2/index/Index;)V

    .line 714
    invoke-virtual {v0}, Lorg/h2/table/PlanItem;->getIndex()Lorg/h2/index/Index;

    move-result-object v2

    const/4 v4, 0x0

    const/4 v7, 0x0

    move-object/from16 v3, p1

    move-object/from16 v5, p3

    move/from16 v6, p4

    move-object/from16 v8, p6

    invoke-interface/range {v2 .. v8}, Lorg/h2/index/Index;->getCost(Lorg/h2/engine/Session;[I[Lorg/h2/table/TableFilter;ILorg/h2/result/SortOrder;Ljava/util/HashSet;)D

    move-result-wide v1

    iput-wide v1, v0, Lorg/h2/table/PlanItem;->cost:D

    .line 715
    invoke-virtual/range {p1 .. p1}, Lorg/h2/engine/Session;->getTrace()Lorg/h2/message/Trace;

    move-result-object v1

    .line 716
    invoke-virtual {v1}, Lorg/h2/message/Trace;->isDebugEnabled()Z

    move-result v2

    const/4 v3, 0x0

    const/4 v4, 0x2

    const/4 v5, 0x1

    if-eqz v2, :cond_0

    const-string v2, "Table      :     potential plan item cost {0} index {1}"

    .line 717
    new-array v6, v4, [Ljava/lang/Object;

    iget-wide v7, v0, Lorg/h2/table/PlanItem;->cost:D

    invoke-static {v7, v8}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v7

    aput-object v7, v6, v3

    invoke-virtual {v0}, Lorg/h2/table/PlanItem;->getIndex()Lorg/h2/index/Index;

    move-result-object v7

    invoke-interface {v7}, Lorg/h2/index/Index;->getPlanSQL()Ljava/lang/String;

    move-result-object v7

    aput-object v7, v6, v5

    invoke-virtual {v1, v2, v6}, Lorg/h2/message/Trace;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 720
    :cond_0
    invoke-virtual/range {p0 .. p0}, Lorg/h2/table/Table;->getIndexes()Ljava/util/ArrayList;

    move-result-object v2

    if-eqz v2, :cond_3

    if-eqz p2, :cond_3

    .line 722
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v13

    const/4 v14, 0x1

    :goto_0
    if-ge v14, v13, :cond_3

    .line 723
    invoke-virtual {v2, v14}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    move-object v12, v6

    check-cast v12, Lorg/h2/index/Index;

    move-object v6, v12

    move-object/from16 v7, p1

    move-object/from16 v8, p2

    move-object/from16 v9, p3

    move/from16 v10, p4

    move-object/from16 v11, p5

    move-object v15, v12

    move-object/from16 v12, p6

    .line 724
    invoke-interface/range {v6 .. v12}, Lorg/h2/index/Index;->getCost(Lorg/h2/engine/Session;[I[Lorg/h2/table/TableFilter;ILorg/h2/result/SortOrder;Ljava/util/HashSet;)D

    move-result-wide v6

    .line 726
    invoke-virtual {v1}, Lorg/h2/message/Trace;->isDebugEnabled()Z

    move-result v8

    if-eqz v8, :cond_1

    const-string v8, "Table      :     potential plan item cost {0} index {1}"

    .line 727
    new-array v9, v4, [Ljava/lang/Object;

    invoke-static {v6, v7}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v10

    aput-object v10, v9, v3

    invoke-interface {v15}, Lorg/h2/index/Index;->getPlanSQL()Ljava/lang/String;

    move-result-object v10

    aput-object v10, v9, v5

    invoke-virtual {v1, v8, v9}, Lorg/h2/message/Trace;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 730
    :cond_1
    iget-wide v8, v0, Lorg/h2/table/PlanItem;->cost:D

    cmpg-double v10, v6, v8

    if-gez v10, :cond_2

    .line 731
    iput-wide v6, v0, Lorg/h2/table/PlanItem;->cost:D

    move-object v6, v15

    .line 732
    invoke-virtual {v0, v6}, Lorg/h2/table/PlanItem;->setIndex(Lorg/h2/index/Index;)V

    :cond_2
    add-int/lit8 v14, v14, 0x1

    goto :goto_0

    :cond_3
    return-object v0
.end method

.method public getCheckForeignKeyConstraints()Z
    .locals 1

    .line 1036
    iget-boolean v0, p0, Lorg/h2/table/Table;->checkForeignKeyConstraints:Z

    return v0
.end method

.method public getChildren()Ljava/util/ArrayList;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Lorg/h2/engine/DbObject;",
            ">;"
        }
    .end annotation

    .line 390
    invoke-static {}, Lorg/h2/util/New;->arrayList()Ljava/util/ArrayList;

    move-result-object v0

    .line 391
    invoke-virtual {p0}, Lorg/h2/table/Table;->getIndexes()Ljava/util/ArrayList;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 393
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 395
    :cond_0
    iget-object v1, p0, Lorg/h2/table/Table;->constraints:Ljava/util/ArrayList;

    if-eqz v1, :cond_1

    .line 396
    iget-object v1, p0, Lorg/h2/table/Table;->constraints:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 398
    :cond_1
    iget-object v1, p0, Lorg/h2/table/Table;->triggers:Ljava/util/ArrayList;

    if-eqz v1, :cond_2

    .line 399
    iget-object v1, p0, Lorg/h2/table/Table;->triggers:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 401
    :cond_2
    iget-object v1, p0, Lorg/h2/table/Table;->sequences:Ljava/util/ArrayList;

    if-eqz v1, :cond_3

    .line 402
    iget-object v1, p0, Lorg/h2/table/Table;->sequences:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 404
    :cond_3
    iget-object v1, p0, Lorg/h2/table/Table;->views:Ljava/util/ArrayList;

    if-eqz v1, :cond_4

    .line 405
    iget-object v1, p0, Lorg/h2/table/Table;->views:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 407
    :cond_4
    iget-object v1, p0, Lorg/h2/table/Table;->database:Lorg/h2/engine/Database;

    invoke-virtual {v1}, Lorg/h2/engine/Database;->getAllRights()Ljava/util/ArrayList;

    move-result-object v1

    .line 408
    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_5
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_6

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/h2/engine/Right;

    .line 409
    invoke-virtual {v2}, Lorg/h2/engine/Right;->getGrantedObject()Lorg/h2/engine/DbObject;

    move-result-object v3

    if-ne v3, p0, :cond_5

    .line 410
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_6
    return-object v0
.end method

.method public getColumn(I)Lorg/h2/table/Column;
    .locals 1

    .line 669
    iget-object v0, p0, Lorg/h2/table/Table;->columns:[Lorg/h2/table/Column;

    aget-object p1, v0, p1

    return-object p1
.end method

.method public getColumn(Ljava/lang/String;)Lorg/h2/table/Column;
    .locals 1

    .line 680
    iget-object v0, p0, Lorg/h2/table/Table;->columnMap:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/h2/table/Column;

    if-eqz v0, :cond_0

    return-object v0

    :cond_0
    const v0, 0xa48a

    .line 682
    invoke-static {v0, p1}, Lorg/h2/message/DbException;->get(ILjava/lang/String;)Lorg/h2/message/DbException;

    move-result-object p1

    throw p1
.end method

.method public getColumns()[Lorg/h2/table/Column;
    .locals 1

    .line 654
    iget-object v0, p0, Lorg/h2/table/Table;->columns:[Lorg/h2/table/Column;

    return-object v0
.end method

.method public getCompareMode()Lorg/h2/value/CompareMode;
    .locals 1

    .line 1150
    iget-object v0, p0, Lorg/h2/table/Table;->compareMode:Lorg/h2/value/CompareMode;

    return-object v0
.end method

.method public getConstraints()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Lorg/h2/constraint/Constraint;",
            ">;"
        }
    .end annotation

    .line 874
    iget-object v0, p0, Lorg/h2/table/Table;->constraints:Ljava/util/ArrayList;

    return-object v0
.end method

.method public getCreateSQLForCopy(Lorg/h2/table/Table;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 346
    invoke-static {}, Lorg/h2/message/DbException;->throwInternalError()Ljava/lang/RuntimeException;

    move-result-object p1

    throw p1
.end method

.method public getDefaultValue(Lorg/h2/engine/Session;Lorg/h2/table/Column;)Lorg/h2/value/Value;
    .locals 1

    .line 1170
    invoke-virtual {p2}, Lorg/h2/table/Column;->getDefaultExpression()Lorg/h2/expression/Expression;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    .line 1173
    invoke-virtual {p2, p1, v0}, Lorg/h2/table/Column;->validateConvertUpdateSequence(Lorg/h2/engine/Session;Lorg/h2/value/Value;)Lorg/h2/value/Value;

    move-result-object p1

    goto :goto_0

    .line 1175
    :cond_0
    invoke-virtual {v0, p1}, Lorg/h2/expression/Expression;->getValue(Lorg/h2/engine/Session;)Lorg/h2/value/Value;

    move-result-object p1

    .line 1177
    :goto_0
    invoke-virtual {p2, p1}, Lorg/h2/table/Column;->convert(Lorg/h2/value/Value;)Lorg/h2/value/Value;

    move-result-object p1

    return-object p1
.end method

.method public abstract getDiskSpaceUsed()J
.end method

.method public getIndexForColumn(Lorg/h2/table/Column;)Lorg/h2/index/Index;
    .locals 5

    .line 1047
    invoke-virtual {p0}, Lorg/h2/table/Table;->getIndexes()Ljava/util/ArrayList;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 1049
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    const/4 v2, 0x1

    :goto_0
    if-ge v2, v1, :cond_1

    .line 1050
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/h2/index/Index;

    .line 1051
    invoke-interface {v3}, Lorg/h2/index/Index;->canGetFirstOrLast()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 1052
    invoke-interface {v3, p1}, Lorg/h2/index/Index;->getColumnIndex(Lorg/h2/table/Column;)I

    move-result v4

    if-nez v4, :cond_0

    return-object v3

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    return-object p1
.end method

.method public abstract getIndexes()Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Lorg/h2/index/Index;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getMaxDataModificationId()J
.end method

.method getNullRow()Lorg/h2/result/Row;
    .locals 3

    .line 642
    iget-object v0, p0, Lorg/h2/table/Table;->nullRow:Lorg/h2/result/Row;

    if-nez v0, :cond_0

    .line 646
    iget-object v0, p0, Lorg/h2/table/Table;->columns:[Lorg/h2/table/Column;

    array-length v0, v0

    new-array v0, v0, [Lorg/h2/value/Value;

    .line 647
    sget-object v1, Lorg/h2/value/ValueNull;->INSTANCE:Lorg/h2/value/ValueNull;

    invoke-static {v0, v1}, Ljava/util/Arrays;->fill([Ljava/lang/Object;Ljava/lang/Object;)V

    .line 648
    iget-object v1, p0, Lorg/h2/table/Table;->database:Lorg/h2/engine/Database;

    const/4 v2, 0x1

    invoke-virtual {v1, v0, v2}, Lorg/h2/engine/Database;->createRow([Lorg/h2/value/Value;I)Lorg/h2/result/Row;

    move-result-object v0

    iput-object v0, p0, Lorg/h2/table/Table;->nullRow:Lorg/h2/result/Row;

    :cond_0
    return-object v0
.end method

.method public getOnCommitDrop()Z
    .locals 1

    .line 1063
    iget-boolean v0, p0, Lorg/h2/table/Table;->onCommitDrop:Z

    return v0
.end method

.method public getOnCommitTruncate()Z
    .locals 1

    .line 1071
    iget-boolean v0, p0, Lorg/h2/table/Table;->onCommitTruncate:Z

    return v0
.end method

.method public getPrimaryKey()Lorg/h2/index/Index;
    .locals 2

    .line 758
    invoke-virtual {p0}, Lorg/h2/table/Table;->findPrimaryKey()Lorg/h2/index/Index;

    move-result-object v0

    if-eqz v0, :cond_0

    return-object v0

    :cond_0
    const v0, 0xa480

    const-string v1, "PRIMARY_KEY_"

    .line 762
    invoke-static {v0, v1}, Lorg/h2/message/DbException;->get(ILjava/lang/String;)Lorg/h2/message/DbException;

    move-result-object v0

    throw v0
.end method

.method public getRow(Lorg/h2/engine/Session;J)Lorg/h2/result/Row;
    .locals 0

    const/4 p1, 0x0

    return-object p1
.end method

.method public abstract getRowCount(Lorg/h2/engine/Session;)J
.end method

.method public abstract getRowCountApproximation()J
.end method

.method public getRowIdColumn()Lorg/h2/table/Column;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public abstract getScanIndex(Lorg/h2/engine/Session;)Lorg/h2/index/Index;
.end method

.method public getScanIndex(Lorg/h2/engine/Session;[I[Lorg/h2/table/TableFilter;ILorg/h2/result/SortOrder;Ljava/util/HashSet;)Lorg/h2/index/Index;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/h2/engine/Session;",
            "[I[",
            "Lorg/h2/table/TableFilter;",
            "I",
            "Lorg/h2/result/SortOrder;",
            "Ljava/util/HashSet<",
            "Lorg/h2/table/Column;",
            ">;)",
            "Lorg/h2/index/Index;"
        }
    .end annotation

    .line 257
    invoke-virtual {p0, p1}, Lorg/h2/table/Table;->getScanIndex(Lorg/h2/engine/Session;)Lorg/h2/index/Index;

    move-result-object p1

    return-object p1
.end method

.method public abstract getTableType()Ljava/lang/String;
.end method

.method public getTemplateRow()Lorg/h2/result/Row;
    .locals 3

    .line 625
    iget-object v0, p0, Lorg/h2/table/Table;->database:Lorg/h2/engine/Database;

    iget-object v1, p0, Lorg/h2/table/Table;->columns:[Lorg/h2/table/Column;

    array-length v1, v1

    new-array v1, v1, [Lorg/h2/value/Value;

    const/4 v2, -0x1

    invoke-virtual {v0, v1, v2}, Lorg/h2/engine/Database;->createRow([Lorg/h2/value/Value;I)Lorg/h2/result/Row;

    move-result-object v0

    return-object v0
.end method

.method public getTemplateSimpleRow(Z)Lorg/h2/result/SearchRow;
    .locals 1

    if-eqz p1, :cond_0

    .line 636
    new-instance p1, Lorg/h2/result/SimpleRowValue;

    iget-object v0, p0, Lorg/h2/table/Table;->columns:[Lorg/h2/table/Column;

    array-length v0, v0

    invoke-direct {p1, v0}, Lorg/h2/result/SimpleRowValue;-><init>(I)V

    return-object p1

    .line 638
    :cond_0
    new-instance p1, Lorg/h2/result/SimpleRow;

    iget-object v0, p0, Lorg/h2/table/Table;->columns:[Lorg/h2/table/Column;

    array-length v0, v0

    new-array v0, v0, [Lorg/h2/value/Value;

    invoke-direct {p1, v0}, Lorg/h2/result/SimpleRow;-><init>([Lorg/h2/value/Value;)V

    return-object p1
.end method

.method public getType()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public abstract getUniqueIndex()Lorg/h2/index/Index;
.end method

.method public getViews()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Lorg/h2/table/TableView;",
            ">;"
        }
    .end annotation

    .line 522
    iget-object v0, p0, Lorg/h2/table/Table;->views:Ljava/util/ArrayList;

    return-object v0
.end method

.method public hasSelectTrigger()Z
    .locals 2

    .line 925
    iget-object v0, p0, Lorg/h2/table/Table;->triggers:Ljava/util/ArrayList;

    if-eqz v0, :cond_1

    .line 926
    iget-object v0, p0, Lorg/h2/table/Table;->triggers:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/h2/schema/TriggerObject;

    .line 927
    invoke-virtual {v1}, Lorg/h2/schema/TriggerObject;->isSelectTrigger()Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_1
    const/4 v0, 0x0

    return v0
.end method

.method public abstract isDeterministic()Z
.end method

.method public isGlobalTemporary()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public isHidden()Z
    .locals 1

    .line 1182
    iget-boolean v0, p0, Lorg/h2/table/Table;->isHidden:Z

    return v0
.end method

.method public abstract isLockedExclusively()Z
.end method

.method public isLockedExclusivelyBy(Lorg/h2/engine/Session;)Z
    .locals 0

    const/4 p1, 0x0

    return p1
.end method

.method public isMVStore()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public isPersistData()Z
    .locals 1

    .line 1127
    iget-boolean v0, p0, Lorg/h2/table/Table;->persistData:Z

    return v0
.end method

.method public isPersistIndexes()Z
    .locals 1

    .line 1123
    iget-boolean v0, p0, Lorg/h2/table/Table;->persistIndexes:Z

    return v0
.end method

.method public isQueryComparable()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public isView()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public abstract lock(Lorg/h2/engine/Session;ZZ)Z
.end method

.method public removeChildrenAndResources(Lorg/h2/engine/Session;)V
    .locals 4

    .line 527
    :goto_0
    iget-object v0, p0, Lorg/h2/table/Table;->views:Ljava/util/ArrayList;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/h2/table/Table;->views:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_0

    .line 528
    iget-object v0, p0, Lorg/h2/table/Table;->views:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/h2/table/TableView;

    .line 529
    iget-object v2, p0, Lorg/h2/table/Table;->views:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 530
    iget-object v1, p0, Lorg/h2/table/Table;->database:Lorg/h2/engine/Database;

    invoke-virtual {v1, p1, v0}, Lorg/h2/engine/Database;->removeSchemaObject(Lorg/h2/engine/Session;Lorg/h2/schema/SchemaObject;)V

    goto :goto_0

    .line 532
    :cond_0
    :goto_1
    iget-object v0, p0, Lorg/h2/table/Table;->triggers:Ljava/util/ArrayList;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lorg/h2/table/Table;->triggers:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_1

    .line 533
    iget-object v0, p0, Lorg/h2/table/Table;->triggers:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/h2/schema/TriggerObject;

    .line 534
    iget-object v2, p0, Lorg/h2/table/Table;->triggers:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 535
    iget-object v2, p0, Lorg/h2/table/Table;->database:Lorg/h2/engine/Database;

    invoke-virtual {v2, p1, v0}, Lorg/h2/engine/Database;->removeSchemaObject(Lorg/h2/engine/Session;Lorg/h2/schema/SchemaObject;)V

    goto :goto_1

    .line 537
    :cond_1
    :goto_2
    iget-object v0, p0, Lorg/h2/table/Table;->constraints:Ljava/util/ArrayList;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lorg/h2/table/Table;->constraints:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_2

    .line 538
    iget-object v0, p0, Lorg/h2/table/Table;->constraints:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/h2/constraint/Constraint;

    .line 539
    iget-object v2, p0, Lorg/h2/table/Table;->constraints:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 540
    iget-object v2, p0, Lorg/h2/table/Table;->database:Lorg/h2/engine/Database;

    invoke-virtual {v2, p1, v0}, Lorg/h2/engine/Database;->removeSchemaObject(Lorg/h2/engine/Session;Lorg/h2/schema/SchemaObject;)V

    goto :goto_2

    .line 542
    :cond_2
    iget-object v0, p0, Lorg/h2/table/Table;->database:Lorg/h2/engine/Database;

    invoke-virtual {v0}, Lorg/h2/engine/Database;->getAllRights()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_3
    :goto_3
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_4

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/h2/engine/Right;

    .line 543
    invoke-virtual {v2}, Lorg/h2/engine/Right;->getGrantedObject()Lorg/h2/engine/DbObject;

    move-result-object v3

    if-ne v3, p0, :cond_3

    .line 544
    iget-object v3, p0, Lorg/h2/table/Table;->database:Lorg/h2/engine/Database;

    invoke-virtual {v3, p1, v2}, Lorg/h2/engine/Database;->removeDatabaseObject(Lorg/h2/engine/Session;Lorg/h2/engine/DbObject;)V

    goto :goto_3

    .line 547
    :cond_4
    iget-object v0, p0, Lorg/h2/table/Table;->database:Lorg/h2/engine/Database;

    invoke-virtual {p0}, Lorg/h2/table/Table;->getId()I

    move-result v2

    invoke-virtual {v0, p1, v2}, Lorg/h2/engine/Database;->removeMeta(Lorg/h2/engine/Session;I)V

    .line 550
    :cond_5
    :goto_4
    iget-object v0, p0, Lorg/h2/table/Table;->sequences:Ljava/util/ArrayList;

    if-eqz v0, :cond_6

    iget-object v0, p0, Lorg/h2/table/Table;->sequences:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_6

    .line 551
    iget-object v0, p0, Lorg/h2/table/Table;->sequences:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/h2/schema/Sequence;

    .line 552
    iget-object v2, p0, Lorg/h2/table/Table;->sequences:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 555
    iget-object v2, p0, Lorg/h2/table/Table;->database:Lorg/h2/engine/Database;

    invoke-virtual {v2, v0, p0}, Lorg/h2/engine/Database;->getDependentTable(Lorg/h2/schema/SchemaObject;Lorg/h2/table/Table;)Lorg/h2/table/Table;

    move-result-object v2

    if-nez v2, :cond_5

    .line 556
    iget-object v2, p0, Lorg/h2/table/Table;->database:Lorg/h2/engine/Database;

    invoke-virtual {v2, p1, v0}, Lorg/h2/engine/Database;->removeSchemaObject(Lorg/h2/engine/Session;Lorg/h2/schema/SchemaObject;)V

    goto :goto_4

    :cond_6
    return-void
.end method

.method public removeConstraint(Lorg/h2/constraint/Constraint;)V
    .locals 1

    .line 832
    iget-object v0, p0, Lorg/h2/table/Table;->constraints:Ljava/util/ArrayList;

    invoke-static {v0, p1}, Lorg/h2/table/Table;->remove(Ljava/util/ArrayList;Lorg/h2/engine/DbObject;)V

    return-void
.end method

.method public removeIndex(Lorg/h2/index/Index;)V
    .locals 4

    .line 806
    invoke-virtual {p0}, Lorg/h2/table/Table;->getIndexes()Ljava/util/ArrayList;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 808
    invoke-static {v0, p1}, Lorg/h2/table/Table;->remove(Ljava/util/ArrayList;Lorg/h2/engine/DbObject;)V

    .line 809
    invoke-interface {p1}, Lorg/h2/index/Index;->getIndexType()Lorg/h2/index/IndexType;

    move-result-object v0

    invoke-virtual {v0}, Lorg/h2/index/IndexType;->isPrimaryKey()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 810
    invoke-interface {p1}, Lorg/h2/index/Index;->getColumns()[Lorg/h2/table/Column;

    move-result-object p1

    array-length v0, p1

    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_0

    aget-object v3, p1, v2

    .line 811
    invoke-virtual {v3, v1}, Lorg/h2/table/Column;->setPrimaryKey(Z)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public removeIndexOrTransferOwnership(Lorg/h2/engine/Session;Lorg/h2/index/Index;)V
    .locals 4

    .line 1087
    iget-object v0, p0, Lorg/h2/table/Table;->constraints:Ljava/util/ArrayList;

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    .line 1088
    iget-object v0, p0, Lorg/h2/table/Table;->constraints:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/h2/constraint/Constraint;

    .line 1089
    invoke-virtual {v2, p2}, Lorg/h2/constraint/Constraint;->usesIndex(Lorg/h2/index/Index;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 1090
    invoke-virtual {v2, p2}, Lorg/h2/constraint/Constraint;->setIndexOwner(Lorg/h2/index/Index;)V

    .line 1091
    iget-object v1, p0, Lorg/h2/table/Table;->database:Lorg/h2/engine/Database;

    invoke-virtual {v1, p1, v2}, Lorg/h2/engine/Database;->updateMeta(Lorg/h2/engine/Session;Lorg/h2/engine/DbObject;)V

    const/4 v1, 0x1

    goto :goto_0

    :cond_1
    if-nez v1, :cond_2

    .line 1097
    iget-object v0, p0, Lorg/h2/table/Table;->database:Lorg/h2/engine/Database;

    invoke-virtual {v0, p1, p2}, Lorg/h2/engine/Database;->removeSchemaObject(Lorg/h2/engine/Session;Lorg/h2/schema/SchemaObject;)V

    :cond_2
    return-void
.end method

.method public abstract removeRow(Lorg/h2/engine/Session;Lorg/h2/result/Row;)V
.end method

.method public final removeSequence(Lorg/h2/schema/Sequence;)V
    .locals 1

    .line 841
    iget-object v0, p0, Lorg/h2/table/Table;->sequences:Ljava/util/ArrayList;

    invoke-static {v0, p1}, Lorg/h2/table/Table;->remove(Ljava/util/ArrayList;Lorg/h2/engine/DbObject;)V

    return-void
.end method

.method public removeTrigger(Lorg/h2/schema/TriggerObject;)V
    .locals 1

    .line 850
    iget-object v0, p0, Lorg/h2/table/Table;->triggers:Ljava/util/ArrayList;

    invoke-static {v0, p1}, Lorg/h2/table/Table;->remove(Ljava/util/ArrayList;Lorg/h2/engine/DbObject;)V

    return-void
.end method

.method public removeView(Lorg/h2/table/TableView;)V
    .locals 1

    .line 823
    iget-object v0, p0, Lorg/h2/table/Table;->views:Ljava/util/ArrayList;

    invoke-static {v0, p1}, Lorg/h2/table/Table;->remove(Ljava/util/ArrayList;Lorg/h2/engine/DbObject;)V

    return-void
.end method

.method public rename(Ljava/lang/String;)V
    .locals 2

    .line 121
    invoke-super {p0, p1}, Lorg/h2/schema/SchemaObjectBase;->rename(Ljava/lang/String;)V

    .line 122
    iget-object p1, p0, Lorg/h2/table/Table;->constraints:Ljava/util/ArrayList;

    if-eqz p1, :cond_0

    const/4 p1, 0x0

    .line 123
    iget-object v0, p0, Lorg/h2/table/Table;->constraints:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    :goto_0
    if-ge p1, v0, :cond_0

    .line 124
    iget-object v1, p0, Lorg/h2/table/Table;->constraints:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/h2/constraint/Constraint;

    .line 125
    invoke-virtual {v1}, Lorg/h2/constraint/Constraint;->rebuild()V

    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public renameColumn(Lorg/h2/table/Column;Ljava/lang/String;)V
    .locals 4

    .line 445
    iget-object v0, p0, Lorg/h2/table/Table;->columns:[Lorg/h2/table/Column;

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_2

    aget-object v3, v0, v2

    if-ne v3, p1, :cond_0

    goto :goto_1

    .line 449
    :cond_0
    invoke-virtual {v3}, Lorg/h2/table/Column;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_1

    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    const p1, 0xa489

    .line 450
    invoke-static {p1, p2}, Lorg/h2/message/DbException;->get(ILjava/lang/String;)Lorg/h2/message/DbException;

    move-result-object p1

    throw p1

    .line 454
    :cond_2
    iget-object v0, p0, Lorg/h2/table/Table;->columnMap:Ljava/util/HashMap;

    invoke-virtual {p1}, Lorg/h2/table/Column;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 455
    invoke-virtual {p1, p2}, Lorg/h2/table/Column;->rename(Ljava/lang/String;)V

    .line 456
    iget-object v0, p0, Lorg/h2/table/Table;->columnMap:Ljava/util/HashMap;

    invoke-virtual {v0, p2, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public setCheckForeignKeyConstraints(Lorg/h2/engine/Session;ZZ)V
    .locals 1

    if-eqz p2, :cond_0

    if-eqz p3, :cond_0

    .line 1026
    iget-object p3, p0, Lorg/h2/table/Table;->constraints:Ljava/util/ArrayList;

    if-eqz p3, :cond_0

    .line 1027
    iget-object p3, p0, Lorg/h2/table/Table;->constraints:Ljava/util/ArrayList;

    invoke-virtual {p3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p3

    :goto_0
    invoke-interface {p3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/h2/constraint/Constraint;

    .line 1028
    invoke-virtual {v0, p1}, Lorg/h2/constraint/Constraint;->checkExistingData(Lorg/h2/engine/Session;)V

    goto :goto_0

    .line 1032
    :cond_0
    iput-boolean p2, p0, Lorg/h2/table/Table;->checkForeignKeyConstraints:Z

    return-void
.end method

.method protected setColumns([Lorg/h2/table/Column;)V
    .locals 4

    .line 417
    iput-object p1, p0, Lorg/h2/table/Table;->columns:[Lorg/h2/table/Column;

    .line 418
    iget-object v0, p0, Lorg/h2/table/Table;->columnMap:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->size()I

    move-result v0

    if-lez v0, :cond_0

    .line 419
    iget-object v0, p0, Lorg/h2/table/Table;->columnMap:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    :cond_0
    const/4 v0, 0x0

    .line 421
    :goto_0
    array-length v1, p1

    if-ge v0, v1, :cond_3

    .line 422
    aget-object v1, p1, v0

    .line 423
    invoke-virtual {v1}, Lorg/h2/table/Column;->getType()I

    move-result v2

    const/4 v3, -0x1

    if-eq v2, v3, :cond_2

    .line 428
    invoke-virtual {v1, p0, v0}, Lorg/h2/table/Column;->setTable(Lorg/h2/table/Table;I)V

    .line 429
    invoke-virtual {v1}, Lorg/h2/table/Column;->getName()Ljava/lang/String;

    move-result-object v2

    .line 430
    iget-object v3, p0, Lorg/h2/table/Table;->columnMap:Ljava/util/HashMap;

    invoke-virtual {v3, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    if-nez v3, :cond_1

    .line 434
    iget-object v3, p0, Lorg/h2/table/Table;->columnMap:Ljava/util/HashMap;

    invoke-virtual {v3, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    const p1, 0xa489

    .line 431
    invoke-static {p1, v2}, Lorg/h2/message/DbException;->get(ILjava/lang/String;)Lorg/h2/message/DbException;

    move-result-object p1

    throw p1

    :cond_2
    const p1, 0xc354

    .line 425
    invoke-virtual {v1}, Lorg/h2/table/Column;->getSQL()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lorg/h2/message/DbException;->get(ILjava/lang/String;)Lorg/h2/message/DbException;

    move-result-object p1

    throw p1

    :cond_3
    return-void
.end method

.method public setHidden(Z)V
    .locals 0

    .line 1186
    iput-boolean p1, p0, Lorg/h2/table/Table;->isHidden:Z

    return-void
.end method

.method public setOnCommitDrop(Z)V
    .locals 0

    .line 1067
    iput-boolean p1, p0, Lorg/h2/table/Table;->onCommitDrop:Z

    return-void
.end method

.method public setOnCommitTruncate(Z)V
    .locals 0

    .line 1075
    iput-boolean p1, p0, Lorg/h2/table/Table;->onCommitTruncate:Z

    return-void
.end method

.method public abstract truncate(Lorg/h2/engine/Session;)V
.end method

.method public abstract unlock(Lorg/h2/engine/Session;)V
.end method

.method public updateRows(Lorg/h2/command/Prepared;Lorg/h2/engine/Session;Lorg/h2/result/RowList;)V
    .locals 6

    .line 479
    invoke-virtual {p2}, Lorg/h2/engine/Session;->setSavepoint()Lorg/h2/engine/Session$Savepoint;

    move-result-object v0

    .line 482
    invoke-virtual {p3}, Lorg/h2/result/RowList;->reset()V

    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_0
    invoke-virtual {p3}, Lorg/h2/result/RowList;->hasNext()Z

    move-result v3

    const v4, 0x16013

    const/4 v5, 0x1

    if-eqz v3, :cond_2

    add-int/lit8 v2, v2, 0x1

    and-int/lit8 v3, v2, 0x7f

    if-nez v3, :cond_0

    .line 484
    invoke-virtual {p1}, Lorg/h2/command/Prepared;->checkCanceled()V

    .line 486
    :cond_0
    invoke-virtual {p3}, Lorg/h2/result/RowList;->next()Lorg/h2/result/Row;

    move-result-object v3

    .line 487
    invoke-virtual {p3}, Lorg/h2/result/RowList;->next()Lorg/h2/result/Row;

    .line 489
    :try_start_0
    invoke-virtual {p0, p2, v3}, Lorg/h2/table/Table;->removeRow(Lorg/h2/engine/Session;Lorg/h2/result/Row;)V
    :try_end_0
    .catch Lorg/h2/message/DbException; {:try_start_0 .. :try_end_0} :catch_0

    .line 498
    invoke-virtual {p2, p0, v5, v3}, Lorg/h2/engine/Session;->log(Lorg/h2/table/Table;SLorg/h2/result/Row;)V

    goto :goto_0

    :catch_0
    move-exception p1

    .line 491
    invoke-virtual {p1}, Lorg/h2/message/DbException;->getErrorCode()I

    move-result p3

    if-ne p3, v4, :cond_1

    .line 492
    invoke-virtual {p2, v0, v1}, Lorg/h2/engine/Session;->rollbackTo(Lorg/h2/engine/Session$Savepoint;Z)V

    .line 493
    invoke-virtual {p2}, Lorg/h2/engine/Session;->startStatementWithinTransaction()V

    .line 494
    invoke-virtual {p2}, Lorg/h2/engine/Session;->setSavepoint()Lorg/h2/engine/Session$Savepoint;

    .line 496
    :cond_1
    throw p1

    .line 501
    :cond_2
    invoke-virtual {p3}, Lorg/h2/result/RowList;->reset()V

    :goto_1
    invoke-virtual {p3}, Lorg/h2/result/RowList;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_5

    add-int/2addr v2, v5

    and-int/lit8 v3, v2, 0x7f

    if-nez v3, :cond_3

    .line 503
    invoke-virtual {p1}, Lorg/h2/command/Prepared;->checkCanceled()V

    .line 505
    :cond_3
    invoke-virtual {p3}, Lorg/h2/result/RowList;->next()Lorg/h2/result/Row;

    .line 506
    invoke-virtual {p3}, Lorg/h2/result/RowList;->next()Lorg/h2/result/Row;

    move-result-object v3

    .line 508
    :try_start_1
    invoke-virtual {p0, p2, v3}, Lorg/h2/table/Table;->addRow(Lorg/h2/engine/Session;Lorg/h2/result/Row;)V
    :try_end_1
    .catch Lorg/h2/message/DbException; {:try_start_1 .. :try_end_1} :catch_1

    .line 517
    invoke-virtual {p2, p0, v1, v3}, Lorg/h2/engine/Session;->log(Lorg/h2/table/Table;SLorg/h2/result/Row;)V

    goto :goto_1

    :catch_1
    move-exception p1

    .line 510
    invoke-virtual {p1}, Lorg/h2/message/DbException;->getErrorCode()I

    move-result p3

    if-ne p3, v4, :cond_4

    .line 511
    invoke-virtual {p2, v0, v1}, Lorg/h2/engine/Session;->rollbackTo(Lorg/h2/engine/Session$Savepoint;Z)V

    .line 512
    invoke-virtual {p2}, Lorg/h2/engine/Session;->startStatementWithinTransaction()V

    .line 513
    invoke-virtual {p2}, Lorg/h2/engine/Session;->setSavepoint()Lorg/h2/engine/Session$Savepoint;

    .line 515
    :cond_4
    throw p1

    :cond_5
    return-void
.end method

.method public validateConvertUpdateSequence(Lorg/h2/engine/Session;Lorg/h2/result/Row;)V
    .locals 4

    const/4 v0, 0x0

    .line 775
    :goto_0
    iget-object v1, p0, Lorg/h2/table/Table;->columns:[Lorg/h2/table/Column;

    array-length v1, v1

    if-ge v0, v1, :cond_2

    .line 776
    invoke-virtual {p2, v0}, Lorg/h2/result/Row;->getValue(I)Lorg/h2/value/Value;

    move-result-object v1

    .line 777
    iget-object v2, p0, Lorg/h2/table/Table;->columns:[Lorg/h2/table/Column;

    aget-object v2, v2, v0

    .line 779
    invoke-virtual {v2}, Lorg/h2/table/Column;->getComputed()Z

    move-result v3

    if-eqz v3, :cond_0

    const/4 v1, 0x0

    .line 782
    invoke-virtual {v2, p1, p2}, Lorg/h2/table/Column;->computeValue(Lorg/h2/engine/Session;Lorg/h2/result/Row;)Lorg/h2/value/Value;

    .line 784
    :cond_0
    invoke-virtual {v2, p1, v1}, Lorg/h2/table/Column;->validateConvertUpdateSequence(Lorg/h2/engine/Session;Lorg/h2/value/Value;)Lorg/h2/value/Value;

    move-result-object v2

    if-eq v2, v1, :cond_1

    .line 786
    invoke-virtual {p2, v0, v2}, Lorg/h2/result/Row;->setValue(ILorg/h2/value/Value;)V

    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    return-void
.end method
