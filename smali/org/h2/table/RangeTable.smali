.class public Lorg/h2/table/RangeTable;
.super Lorg/h2/table/Table;
.source "RangeTable.java"


# static fields
.field public static final ALIAS:Ljava/lang/String; = "GENERATE_SERIES"

.field public static final NAME:Ljava/lang/String; = "SYSTEM_RANGE"


# instance fields
.field private max:Lorg/h2/expression/Expression;

.field private min:Lorg/h2/expression/Expression;

.field private optimized:Z

.field private step:Lorg/h2/expression/Expression;


# direct methods
.method public constructor <init>(Lorg/h2/schema/Schema;Lorg/h2/expression/Expression;Lorg/h2/expression/Expression;Lorg/h2/expression/Expression;Z)V
    .locals 0

    .line 60
    invoke-direct {p0, p1, p2, p3, p5}, Lorg/h2/table/RangeTable;-><init>(Lorg/h2/schema/Schema;Lorg/h2/expression/Expression;Lorg/h2/expression/Expression;Z)V

    .line 61
    iput-object p4, p0, Lorg/h2/table/RangeTable;->step:Lorg/h2/expression/Expression;

    return-void
.end method

.method public constructor <init>(Lorg/h2/schema/Schema;Lorg/h2/expression/Expression;Lorg/h2/expression/Expression;Z)V
    .locals 6

    const-string v3, "SYSTEM_RANGE"

    const/4 v2, 0x0

    const/4 v4, 0x1

    const/4 v5, 0x1

    move-object v0, p0

    move-object v1, p1

    .line 50
    invoke-direct/range {v0 .. v5}, Lorg/h2/table/Table;-><init>(Lorg/h2/schema/Schema;ILjava/lang/String;ZZ)V

    const/4 p1, 0x0

    if-eqz p4, :cond_0

    .line 51
    new-array p1, p1, [Lorg/h2/table/Column;

    goto :goto_0

    :cond_0
    const/4 p4, 0x1

    new-array p4, p4, [Lorg/h2/table/Column;

    new-instance v0, Lorg/h2/table/Column;

    const-string v1, "X"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2}, Lorg/h2/table/Column;-><init>(Ljava/lang/String;I)V

    aput-object v0, p4, p1

    move-object p1, p4

    .line 53
    :goto_0
    iput-object p2, p0, Lorg/h2/table/RangeTable;->min:Lorg/h2/expression/Expression;

    .line 54
    iput-object p3, p0, Lorg/h2/table/RangeTable;->max:Lorg/h2/expression/Expression;

    .line 55
    invoke-virtual {p0, p1}, Lorg/h2/table/RangeTable;->setColumns([Lorg/h2/table/Column;)V

    return-void
.end method

.method private optimize(Lorg/h2/engine/Session;)V
    .locals 1

    .line 196
    iget-boolean v0, p0, Lorg/h2/table/RangeTable;->optimized:Z

    if-nez v0, :cond_1

    .line 197
    iget-object v0, p0, Lorg/h2/table/RangeTable;->min:Lorg/h2/expression/Expression;

    invoke-virtual {v0, p1}, Lorg/h2/expression/Expression;->optimize(Lorg/h2/engine/Session;)Lorg/h2/expression/Expression;

    move-result-object v0

    iput-object v0, p0, Lorg/h2/table/RangeTable;->min:Lorg/h2/expression/Expression;

    .line 198
    iget-object v0, p0, Lorg/h2/table/RangeTable;->max:Lorg/h2/expression/Expression;

    invoke-virtual {v0, p1}, Lorg/h2/expression/Expression;->optimize(Lorg/h2/engine/Session;)Lorg/h2/expression/Expression;

    move-result-object v0

    iput-object v0, p0, Lorg/h2/table/RangeTable;->max:Lorg/h2/expression/Expression;

    .line 199
    iget-object v0, p0, Lorg/h2/table/RangeTable;->step:Lorg/h2/expression/Expression;

    if-eqz v0, :cond_0

    .line 200
    iget-object v0, p0, Lorg/h2/table/RangeTable;->step:Lorg/h2/expression/Expression;

    invoke-virtual {v0, p1}, Lorg/h2/expression/Expression;->optimize(Lorg/h2/engine/Session;)Lorg/h2/expression/Expression;

    move-result-object p1

    iput-object p1, p0, Lorg/h2/table/RangeTable;->step:Lorg/h2/expression/Expression;

    :cond_0
    const/4 p1, 0x1

    .line 202
    iput-boolean p1, p0, Lorg/h2/table/RangeTable;->optimized:Z

    :cond_1
    return-void
.end method


# virtual methods
.method public addIndex(Lorg/h2/engine/Session;Ljava/lang/String;I[Lorg/h2/table/IndexColumn;Lorg/h2/index/IndexType;ZLjava/lang/String;)Lorg/h2/index/Index;
    .locals 0

    const-string p1, "SYSTEM_RANGE"

    .line 108
    invoke-static {p1}, Lorg/h2/message/DbException;->getUnsupportedException(Ljava/lang/String;)Lorg/h2/message/DbException;

    move-result-object p1

    throw p1
.end method

.method public addRow(Lorg/h2/engine/Session;Lorg/h2/result/Row;)V
    .locals 0

    const-string p1, "SYSTEM_RANGE"

    .line 118
    invoke-static {p1}, Lorg/h2/message/DbException;->getUnsupportedException(Ljava/lang/String;)Lorg/h2/message/DbException;

    move-result-object p1

    throw p1
.end method

.method public canDrop()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public canGetRowCount()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public canReference()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public checkRename()V
    .locals 1

    const-string v0, "SYSTEM_RANGE"

    .line 128
    invoke-static {v0}, Lorg/h2/message/DbException;->getUnsupportedException(Ljava/lang/String;)Lorg/h2/message/DbException;

    move-result-object v0

    throw v0
.end method

.method public checkSupportAlter()V
    .locals 1

    const-string v0, "SYSTEM_RANGE"

    .line 123
    invoke-static {v0}, Lorg/h2/message/DbException;->getUnsupportedException(Ljava/lang/String;)Lorg/h2/message/DbException;

    move-result-object v0

    throw v0
.end method

.method public close(Lorg/h2/engine/Session;)V
    .locals 0

    return-void
.end method

.method public getCreateSQL()Ljava/lang/String;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public getDiskSpaceUsed()J
    .locals 2

    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public getDropSQL()Ljava/lang/String;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public getIndexes()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Lorg/h2/index/Index;",
            ">;"
        }
    .end annotation

    const/4 v0, 0x0

    return-object v0
.end method

.method public getMax(Lorg/h2/engine/Session;)J
    .locals 2

    .line 177
    invoke-direct {p0, p1}, Lorg/h2/table/RangeTable;->optimize(Lorg/h2/engine/Session;)V

    .line 178
    iget-object v0, p0, Lorg/h2/table/RangeTable;->max:Lorg/h2/expression/Expression;

    invoke-virtual {v0, p1}, Lorg/h2/expression/Expression;->getValue(Lorg/h2/engine/Session;)Lorg/h2/value/Value;

    move-result-object p1

    invoke-virtual {p1}, Lorg/h2/value/Value;->getLong()J

    move-result-wide v0

    return-wide v0
.end method

.method public getMaxDataModificationId()J
    .locals 2

    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public getMin(Lorg/h2/engine/Session;)J
    .locals 2

    .line 166
    invoke-direct {p0, p1}, Lorg/h2/table/RangeTable;->optimize(Lorg/h2/engine/Session;)V

    .line 167
    iget-object v0, p0, Lorg/h2/table/RangeTable;->min:Lorg/h2/expression/Expression;

    invoke-virtual {v0, p1}, Lorg/h2/expression/Expression;->getValue(Lorg/h2/engine/Session;)Lorg/h2/value/Value;

    move-result-object p1

    invoke-virtual {p1}, Lorg/h2/value/Value;->getLong()J

    move-result-wide v0

    return-wide v0
.end method

.method public getRowCount(Lorg/h2/engine/Session;)J
    .locals 4

    .line 143
    invoke-virtual {p0, p1}, Lorg/h2/table/RangeTable;->getMax(Lorg/h2/engine/Session;)J

    move-result-wide v0

    invoke-virtual {p0, p1}, Lorg/h2/table/RangeTable;->getMin(Lorg/h2/engine/Session;)J

    move-result-wide v2

    sub-long/2addr v0, v2

    const-wide/16 v2, 0x1

    add-long/2addr v0, v2

    const-wide/16 v2, 0x0

    invoke-static {v2, v3, v0, v1}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v0

    return-wide v0
.end method

.method public getRowCountApproximation()J
    .locals 2

    const-wide/16 v0, 0x64

    return-wide v0
.end method

.method public getSQL()Ljava/lang/String;
    .locals 2

    .line 76
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "SYSTEM_RANGE("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lorg/h2/table/RangeTable;->min:Lorg/h2/expression/Expression;

    invoke-virtual {v1}, Lorg/h2/expression/Expression;->getSQL()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lorg/h2/table/RangeTable;->max:Lorg/h2/expression/Expression;

    invoke-virtual {v1}, Lorg/h2/expression/Expression;->getSQL()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 77
    iget-object v1, p0, Lorg/h2/table/RangeTable;->step:Lorg/h2/expression/Expression;

    if-eqz v1, :cond_0

    .line 78
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ", "

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lorg/h2/table/RangeTable;->step:Lorg/h2/expression/Expression;

    invoke-virtual {v0}, Lorg/h2/expression/Expression;->getSQL()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 80
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ")"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getScanIndex(Lorg/h2/engine/Session;)Lorg/h2/index/Index;
    .locals 4

    .line 153
    invoke-virtual {p0, p1}, Lorg/h2/table/RangeTable;->getStep(Lorg/h2/engine/Session;)J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long p1, v0, v2

    if-eqz p1, :cond_0

    .line 156
    new-instance p1, Lorg/h2/index/RangeIndex;

    iget-object v0, p0, Lorg/h2/table/RangeTable;->columns:[Lorg/h2/table/Column;

    invoke-static {v0}, Lorg/h2/table/IndexColumn;->wrap([Lorg/h2/table/Column;)[Lorg/h2/table/IndexColumn;

    move-result-object v0

    invoke-direct {p1, p0, v0}, Lorg/h2/index/RangeIndex;-><init>(Lorg/h2/table/RangeTable;[Lorg/h2/table/IndexColumn;)V

    return-object p1

    :cond_0
    const p1, 0x1601e

    .line 154
    invoke-static {p1}, Lorg/h2/message/DbException;->get(I)Lorg/h2/message/DbException;

    move-result-object p1

    throw p1
.end method

.method public getStep(Lorg/h2/engine/Session;)J
    .locals 2

    .line 188
    invoke-direct {p0, p1}, Lorg/h2/table/RangeTable;->optimize(Lorg/h2/engine/Session;)V

    .line 189
    iget-object v0, p0, Lorg/h2/table/RangeTable;->step:Lorg/h2/expression/Expression;

    if-nez v0, :cond_0

    const-wide/16 v0, 0x1

    return-wide v0

    .line 192
    :cond_0
    iget-object v0, p0, Lorg/h2/table/RangeTable;->step:Lorg/h2/expression/Expression;

    invoke-virtual {v0, p1}, Lorg/h2/expression/Expression;->getValue(Lorg/h2/engine/Session;)Lorg/h2/value/Value;

    move-result-object p1

    invoke-virtual {p1}, Lorg/h2/value/Value;->getLong()J

    move-result-wide v0

    return-wide v0
.end method

.method public getTableType()Ljava/lang/String;
    .locals 1

    .line 148
    invoke-static {}, Lorg/h2/message/DbException;->throwInternalError()Ljava/lang/RuntimeException;

    move-result-object v0

    throw v0
.end method

.method public getUniqueIndex()Lorg/h2/index/Index;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public isDeterministic()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public isLockedExclusively()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public lock(Lorg/h2/engine/Session;ZZ)Z
    .locals 0

    const/4 p1, 0x0

    return p1
.end method

.method public removeRow(Lorg/h2/engine/Session;Lorg/h2/result/Row;)V
    .locals 0

    const-string p1, "SYSTEM_RANGE"

    .line 113
    invoke-static {p1}, Lorg/h2/message/DbException;->getUnsupportedException(Ljava/lang/String;)Lorg/h2/message/DbException;

    move-result-object p1

    throw p1
.end method

.method public truncate(Lorg/h2/engine/Session;)V
    .locals 0

    const-string p1, "SYSTEM_RANGE"

    .line 213
    invoke-static {p1}, Lorg/h2/message/DbException;->getUnsupportedException(Ljava/lang/String;)Lorg/h2/message/DbException;

    move-result-object p1

    throw p1
.end method

.method public unlock(Lorg/h2/engine/Session;)V
    .locals 0

    return-void
.end method
