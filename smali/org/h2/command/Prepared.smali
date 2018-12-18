.class public abstract Lorg/h2/command/Prepared;
.super Ljava/lang/Object;
.source "Prepared.java"


# instance fields
.field private command:Lorg/h2/command/Command;

.field protected create:Z

.field private currentRowNumber:I

.field private modificationMetaId:J

.field private objectId:I

.field protected parameters:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lorg/h2/expression/Parameter;",
            ">;"
        }
    .end annotation
.end field

.field protected prepareAlways:Z

.field private rowScanCount:I

.field protected session:Lorg/h2/engine/Session;

.field protected sqlStatement:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lorg/h2/engine/Session;)V
    .locals 2

    .line 64
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    .line 39
    iput-boolean v0, p0, Lorg/h2/command/Prepared;->create:Z

    .line 65
    iput-object p1, p0, Lorg/h2/command/Prepared;->session:Lorg/h2/engine/Session;

    .line 66
    invoke-virtual {p1}, Lorg/h2/engine/Session;->getDatabase()Lorg/h2/engine/Database;

    move-result-object p1

    invoke-virtual {p1}, Lorg/h2/engine/Database;->getModificationMetaId()J

    move-result-wide v0

    iput-wide v0, p0, Lorg/h2/command/Prepared;->modificationMetaId:J

    return-void
.end method

.method protected static getSQL([Lorg/h2/expression/Expression;)Ljava/lang/String;
    .locals 5

    .line 398
    new-instance v0, Lorg/h2/util/StatementBuilder;

    invoke-direct {v0}, Lorg/h2/util/StatementBuilder;-><init>()V

    .line 399
    array-length v1, p0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    aget-object v3, p0, v2

    const-string v4, ", "

    .line 400
    invoke-virtual {v0, v4}, Lorg/h2/util/StatementBuilder;->appendExceptFirst(Ljava/lang/String;)V

    if-eqz v3, :cond_0

    .line 402
    invoke-virtual {v3}, Lorg/h2/expression/Expression;->getSQL()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Lorg/h2/util/StatementBuilder;->append(Ljava/lang/String;)Lorg/h2/util/StatementBuilder;

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 405
    :cond_1
    invoke-virtual {v0}, Lorg/h2/util/StatementBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method protected static getSQL([Lorg/h2/value/Value;)Ljava/lang/String;
    .locals 5

    .line 381
    new-instance v0, Lorg/h2/util/StatementBuilder;

    invoke-direct {v0}, Lorg/h2/util/StatementBuilder;-><init>()V

    .line 382
    array-length v1, p0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    aget-object v3, p0, v2

    const-string v4, ", "

    .line 383
    invoke-virtual {v0, v4}, Lorg/h2/util/StatementBuilder;->appendExceptFirst(Ljava/lang/String;)V

    if-eqz v3, :cond_0

    .line 385
    invoke-virtual {v3}, Lorg/h2/value/Value;->getSQL()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Lorg/h2/util/StatementBuilder;->append(Ljava/lang/String;)Lorg/h2/util/StatementBuilder;

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 388
    :cond_1
    invoke-virtual {v0}, Lorg/h2/util/StatementBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private setProgress()V
    .locals 5

    .line 357
    iget v0, p0, Lorg/h2/command/Prepared;->currentRowNumber:I

    and-int/lit8 v0, v0, 0x7f

    if-nez v0, :cond_0

    .line 358
    iget-object v0, p0, Lorg/h2/command/Prepared;->session:Lorg/h2/engine/Session;

    invoke-virtual {v0}, Lorg/h2/engine/Session;->getDatabase()Lorg/h2/engine/Database;

    move-result-object v0

    const/4 v1, 0x7

    iget-object v2, p0, Lorg/h2/command/Prepared;->sqlStatement:Ljava/lang/String;

    iget v3, p0, Lorg/h2/command/Prepared;->currentRowNumber:I

    const/4 v4, 0x0

    invoke-virtual {v0, v1, v2, v3, v4}, Lorg/h2/engine/Database;->setProgress(ILjava/lang/String;II)V

    :cond_0
    return-void
.end method


# virtual methods
.method public checkCanceled()V
    .locals 1

    .line 275
    iget-object v0, p0, Lorg/h2/command/Prepared;->session:Lorg/h2/engine/Session;

    invoke-virtual {v0}, Lorg/h2/engine/Session;->checkCanceled()V

    .line 276
    iget-object v0, p0, Lorg/h2/command/Prepared;->command:Lorg/h2/command/Command;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/h2/command/Prepared;->command:Lorg/h2/command/Command;

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lorg/h2/command/Prepared;->session:Lorg/h2/engine/Session;

    invoke-virtual {v0}, Lorg/h2/engine/Session;->getCurrentCommand()Lorg/h2/command/Command;

    move-result-object v0

    :goto_0
    if-eqz v0, :cond_1

    .line 278
    invoke-virtual {v0}, Lorg/h2/command/Command;->checkCanceled()V

    :cond_1
    return-void
.end method

.method protected checkParameters()V
    .locals 3

    .line 161
    iget-object v0, p0, Lorg/h2/command/Prepared;->parameters:Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    .line 162
    iget-object v1, p0, Lorg/h2/command/Prepared;->parameters:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    :goto_0
    if-ge v0, v1, :cond_0

    .line 163
    iget-object v2, p0, Lorg/h2/command/Prepared;->parameters:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/h2/expression/Parameter;

    .line 164
    invoke-virtual {v2}, Lorg/h2/expression/Parameter;->checkSet()V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method protected getCurrentObjectId()I
    .locals 1

    .line 241
    iget v0, p0, Lorg/h2/command/Prepared;->objectId:I

    return v0
.end method

.method public getCurrentRowNumber()I
    .locals 1

    .line 350
    iget v0, p0, Lorg/h2/command/Prepared;->currentRowNumber:I

    return v0
.end method

.method getModificationMetaId()J
    .locals 2

    .line 125
    iget-wide v0, p0, Lorg/h2/command/Prepared;->modificationMetaId:J

    return-wide v0
.end method

.method protected getObjectId()I
    .locals 2

    .line 251
    iget v0, p0, Lorg/h2/command/Prepared;->objectId:I

    if-nez v0, :cond_0

    .line 253
    iget-object v0, p0, Lorg/h2/command/Prepared;->session:Lorg/h2/engine/Session;

    invoke-virtual {v0}, Lorg/h2/engine/Session;->getDatabase()Lorg/h2/engine/Database;

    move-result-object v0

    invoke-virtual {v0}, Lorg/h2/engine/Database;->allocateObjectId()I

    move-result v0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    .line 255
    iput v1, p0, Lorg/h2/command/Prepared;->objectId:I

    :goto_0
    return v0
.end method

.method public getParameters()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Lorg/h2/expression/Parameter;",
            ">;"
        }
    .end annotation

    .line 152
    iget-object v0, p0, Lorg/h2/command/Prepared;->parameters:Ljava/util/ArrayList;

    return-object v0
.end method

.method public getPlanSQL()Ljava/lang/String;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public getSQL()Ljava/lang/String;
    .locals 1

    .line 230
    iget-object v0, p0, Lorg/h2/command/Prepared;->sqlStatement:Ljava/lang/String;

    return-object v0
.end method

.method public abstract getType()I
.end method

.method public isCacheable()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public isQuery()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public isReadOnly()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public abstract isTransactional()Z
.end method

.method public needRecompile()Z
    .locals 6

    .line 107
    iget-object v0, p0, Lorg/h2/command/Prepared;->session:Lorg/h2/engine/Session;

    invoke-virtual {v0}, Lorg/h2/engine/Session;->getDatabase()Lorg/h2/engine/Database;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 113
    iget-boolean v1, p0, Lorg/h2/command/Prepared;->prepareAlways:Z

    if-nez v1, :cond_1

    iget-wide v1, p0, Lorg/h2/command/Prepared;->modificationMetaId:J

    invoke-virtual {v0}, Lorg/h2/engine/Database;->getModificationMetaId()J

    move-result-wide v3

    cmp-long v5, v1, v3

    if-ltz v5, :cond_1

    invoke-virtual {v0}, Lorg/h2/engine/Database;->getSettings()Lorg/h2/engine/DbSettings;

    move-result-object v0

    iget-boolean v0, v0, Lorg/h2/engine/DbSettings;->recompileAlways:Z

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0

    :cond_2
    const v0, 0x15fd3

    const-string v1, "database closed"

    .line 109
    invoke-static {v0, v1}, Lorg/h2/message/DbException;->get(ILjava/lang/String;)Lorg/h2/message/DbException;

    move-result-object v0

    throw v0
.end method

.method public prepare()V
    .locals 0

    return-void
.end method

.method public query(I)Lorg/h2/result/ResultInterface;
    .locals 0

    const p1, 0x15f92

    .line 212
    invoke-static {p1}, Lorg/h2/message/DbException;->get(I)Lorg/h2/message/DbException;

    move-result-object p1

    throw p1
.end method

.method public abstract queryMeta()Lorg/h2/result/ResultInterface;
.end method

.method public setCommand(Lorg/h2/command/Command;)V
    .locals 0

    .line 175
    iput-object p1, p0, Lorg/h2/command/Prepared;->command:Lorg/h2/command/Command;

    return-void
.end method

.method protected setCurrentRowNumber(I)V
    .locals 1

    .line 337
    iget v0, p0, Lorg/h2/command/Prepared;->rowScanCount:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lorg/h2/command/Prepared;->rowScanCount:I

    and-int/lit8 v0, v0, 0x7f

    if-nez v0, :cond_0

    .line 338
    invoke-virtual {p0}, Lorg/h2/command/Prepared;->checkCanceled()V

    .line 340
    :cond_0
    iput p1, p0, Lorg/h2/command/Prepared;->currentRowNumber:I

    .line 341
    invoke-direct {p0}, Lorg/h2/command/Prepared;->setProgress()V

    return-void
.end method

.method setModificationMetaId(J)V
    .locals 0

    .line 134
    iput-wide p1, p0, Lorg/h2/command/Prepared;->modificationMetaId:J

    return-void
.end method

.method public setObjectId(I)V
    .locals 0

    .line 288
    iput p1, p0, Lorg/h2/command/Prepared;->objectId:I

    const/4 p1, 0x0

    .line 289
    iput-boolean p1, p0, Lorg/h2/command/Prepared;->create:Z

    return-void
.end method

.method public setParameterList(Ljava/util/ArrayList;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lorg/h2/expression/Parameter;",
            ">;)V"
        }
    .end annotation

    .line 143
    iput-object p1, p0, Lorg/h2/command/Prepared;->parameters:Ljava/util/ArrayList;

    return-void
.end method

.method public setPrepareAlways(Z)V
    .locals 0

    .line 328
    iput-boolean p1, p0, Lorg/h2/command/Prepared;->prepareAlways:Z

    return-void
.end method

.method protected setRow(Lorg/h2/message/DbException;ILjava/lang/String;)Lorg/h2/message/DbException;
    .locals 2

    .line 417
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 418
    iget-object v1, p0, Lorg/h2/command/Prepared;->sqlStatement:Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 419
    iget-object v1, p0, Lorg/h2/command/Prepared;->sqlStatement:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_0
    const-string v1, " -- "

    .line 421
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-lez p2, :cond_1

    const-string v1, "row #"

    .line 423
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 p2, p2, 0x1

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const/16 p2, 0x20

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    :cond_1
    const/16 p2, 0x28

    .line 425
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 p2, 0x29

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 426
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Lorg/h2/message/DbException;->addSQL(Ljava/lang/String;)Lorg/h2/message/DbException;

    move-result-object p1

    return-object p1
.end method

.method public setSQL(Ljava/lang/String;)V
    .locals 0

    .line 221
    iput-object p1, p0, Lorg/h2/command/Prepared;->sqlStatement:Ljava/lang/String;

    return-void
.end method

.method public setSession(Lorg/h2/engine/Session;)V
    .locals 0

    .line 298
    iput-object p1, p0, Lorg/h2/command/Prepared;->session:Lorg/h2/engine/Session;

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .line 371
    iget-object v0, p0, Lorg/h2/command/Prepared;->sqlStatement:Ljava/lang/String;

    return-object v0
.end method

.method trace(JI)V
    .locals 8

    .line 309
    iget-object v0, p0, Lorg/h2/command/Prepared;->session:Lorg/h2/engine/Session;

    invoke-virtual {v0}, Lorg/h2/engine/Session;->getTrace()Lorg/h2/message/Trace;

    move-result-object v0

    invoke-virtual {v0}, Lorg/h2/message/Trace;->isInfoEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    const-wide/16 v0, 0x0

    cmp-long v2, p1, v0

    if-lez v2, :cond_0

    .line 310
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    sub-long v6, v0, p1

    .line 311
    iget-object v0, p0, Lorg/h2/command/Prepared;->parameters:Ljava/util/ArrayList;

    invoke-static {v0}, Lorg/h2/message/Trace;->formatParams(Ljava/util/ArrayList;)Ljava/lang/String;

    move-result-object v4

    .line 312
    iget-object v0, p0, Lorg/h2/command/Prepared;->session:Lorg/h2/engine/Session;

    invoke-virtual {v0}, Lorg/h2/engine/Session;->getTrace()Lorg/h2/message/Trace;

    move-result-object v2

    iget-object v3, p0, Lorg/h2/command/Prepared;->sqlStatement:Ljava/lang/String;

    move v5, p3

    invoke-virtual/range {v2 .. v7}, Lorg/h2/message/Trace;->infoSQL(Ljava/lang/String;Ljava/lang/String;IJ)V

    .line 314
    :cond_0
    iget-object v0, p0, Lorg/h2/command/Prepared;->session:Lorg/h2/engine/Session;

    invoke-virtual {v0}, Lorg/h2/engine/Session;->getDatabase()Lorg/h2/engine/Database;

    move-result-object v0

    invoke-virtual {v0}, Lorg/h2/engine/Database;->getQueryStatistics()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 315
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    sub-long/2addr v0, p1

    .line 316
    iget-object p1, p0, Lorg/h2/command/Prepared;->session:Lorg/h2/engine/Session;

    invoke-virtual {p1}, Lorg/h2/engine/Session;->getDatabase()Lorg/h2/engine/Database;

    move-result-object p1

    invoke-virtual {p1}, Lorg/h2/engine/Database;->getQueryStatisticsData()Lorg/h2/engine/QueryStatisticsData;

    move-result-object p1

    invoke-virtual {p0}, Lorg/h2/command/Prepared;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2, v0, v1, p3}, Lorg/h2/engine/QueryStatisticsData;->update(Ljava/lang/String;JI)V

    :cond_1
    return-void
.end method

.method public update()I
    .locals 1

    const v0, 0x15f91

    .line 201
    invoke-static {v0}, Lorg/h2/message/DbException;->get(I)Lorg/h2/message/DbException;

    move-result-object v0

    throw v0
.end method
