.class public Lorg/h2/engine/MetaRecord;
.super Ljava/lang/Object;
.source "MetaRecord.java"

# interfaces
.implements Ljava/lang/Comparable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/lang/Comparable<",
        "Lorg/h2/engine/MetaRecord;",
        ">;"
    }
.end annotation


# instance fields
.field private final id:I

.field private final objectType:I

.field private final sql:Ljava/lang/String;


# direct methods
.method constructor <init>(Lorg/h2/engine/DbObject;)V
    .locals 1

    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 34
    invoke-interface {p1}, Lorg/h2/engine/DbObject;->getId()I

    move-result v0

    iput v0, p0, Lorg/h2/engine/MetaRecord;->id:I

    .line 35
    invoke-interface {p1}, Lorg/h2/engine/DbObject;->getType()I

    move-result v0

    iput v0, p0, Lorg/h2/engine/MetaRecord;->objectType:I

    .line 36
    invoke-interface {p1}, Lorg/h2/engine/DbObject;->getCreateSQL()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lorg/h2/engine/MetaRecord;->sql:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lorg/h2/result/SearchRow;)V
    .locals 1

    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 28
    invoke-interface {p1, v0}, Lorg/h2/result/SearchRow;->getValue(I)Lorg/h2/value/Value;

    move-result-object v0

    invoke-virtual {v0}, Lorg/h2/value/Value;->getInt()I

    move-result v0

    iput v0, p0, Lorg/h2/engine/MetaRecord;->id:I

    const/4 v0, 0x2

    .line 29
    invoke-interface {p1, v0}, Lorg/h2/result/SearchRow;->getValue(I)Lorg/h2/value/Value;

    move-result-object v0

    invoke-virtual {v0}, Lorg/h2/value/Value;->getInt()I

    move-result v0

    iput v0, p0, Lorg/h2/engine/MetaRecord;->objectType:I

    const/4 v0, 0x3

    .line 30
    invoke-interface {p1, v0}, Lorg/h2/result/SearchRow;->getValue(I)Lorg/h2/value/Value;

    move-result-object p1

    invoke-virtual {p1}, Lorg/h2/value/Value;->getString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lorg/h2/engine/MetaRecord;->sql:Ljava/lang/String;

    return-void
.end method

.method private getCreateOrder()I
    .locals 2

    .line 107
    iget v0, p0, Lorg/h2/engine/MetaRecord;->objectType:I

    packed-switch v0, :pswitch_data_0

    .line 139
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "type="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lorg/h2/engine/MetaRecord;->objectType:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lorg/h2/message/DbException;->throwInternalError(Ljava/lang/String;)Ljava/lang/RuntimeException;

    move-result-object v0

    throw v0

    :pswitch_0
    const/16 v0, 0xd

    return v0

    :pswitch_1
    const/16 v0, 0xe

    return v0

    :pswitch_2
    const/4 v0, 0x4

    return v0

    :pswitch_3
    const/4 v0, 0x6

    return v0

    :pswitch_4
    const/4 v0, 0x2

    return v0

    :pswitch_5
    const/4 v0, 0x3

    return v0

    :pswitch_6
    const/16 v0, 0xc

    return v0

    :pswitch_7
    const/16 v0, 0xb

    return v0

    :pswitch_8
    const/4 v0, 0x0

    return v0

    :pswitch_9
    const/16 v0, 0x9

    return v0

    :pswitch_a
    const/16 v0, 0xa

    return v0

    :pswitch_b
    const/4 v0, 0x5

    return v0

    :pswitch_c
    const/4 v0, 0x1

    return v0

    :pswitch_d
    const/16 v0, 0x8

    return v0

    :pswitch_e
    const/4 v0, 0x7

    return v0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method


# virtual methods
.method public bridge synthetic compareTo(Ljava/lang/Object;)I
    .locals 0

    .line 21
    check-cast p1, Lorg/h2/engine/MetaRecord;

    invoke-virtual {p0, p1}, Lorg/h2/engine/MetaRecord;->compareTo(Lorg/h2/engine/MetaRecord;)I

    move-result p1

    return p1
.end method

.method public compareTo(Lorg/h2/engine/MetaRecord;)I
    .locals 2

    .line 92
    invoke-direct {p0}, Lorg/h2/engine/MetaRecord;->getCreateOrder()I

    move-result v0

    .line 93
    invoke-direct {p1}, Lorg/h2/engine/MetaRecord;->getCreateOrder()I

    move-result v1

    if-eq v0, v1, :cond_0

    sub-int/2addr v0, v1

    return v0

    .line 97
    :cond_0
    invoke-virtual {p0}, Lorg/h2/engine/MetaRecord;->getId()I

    move-result v0

    invoke-virtual {p1}, Lorg/h2/engine/MetaRecord;->getId()I

    move-result p1

    sub-int/2addr v0, p1

    return v0
.end method

.method execute(Lorg/h2/engine/Database;Lorg/h2/engine/Session;Lorg/h2/api/DatabaseEventListener;)V
    .locals 2

    .line 56
    :try_start_0
    iget-object v0, p0, Lorg/h2/engine/MetaRecord;->sql:Ljava/lang/String;

    invoke-virtual {p2, v0}, Lorg/h2/engine/Session;->prepare(Ljava/lang/String;)Lorg/h2/command/Prepared;

    move-result-object p2

    .line 57
    iget v0, p0, Lorg/h2/engine/MetaRecord;->id:I

    invoke-virtual {p2, v0}, Lorg/h2/command/Prepared;->setObjectId(I)V

    .line 58
    invoke-virtual {p2}, Lorg/h2/command/Prepared;->update()I
    :try_end_0
    .catch Lorg/h2/message/DbException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p2

    .line 60
    iget-object v0, p0, Lorg/h2/engine/MetaRecord;->sql:Ljava/lang/String;

    invoke-virtual {p2, v0}, Lorg/h2/message/DbException;->addSQL(Ljava/lang/String;)Lorg/h2/message/DbException;

    move-result-object p2

    .line 61
    invoke-virtual {p2}, Lorg/h2/message/DbException;->getSQLException()Ljava/sql/SQLException;

    move-result-object v0

    const/4 v1, 0x2

    .line 62
    invoke-virtual {p1, v1}, Lorg/h2/engine/Database;->getTrace(I)Lorg/h2/message/Trace;

    move-result-object p1

    iget-object v1, p0, Lorg/h2/engine/MetaRecord;->sql:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Lorg/h2/message/Trace;->error(Ljava/lang/Throwable;Ljava/lang/String;)V

    if-eqz p3, :cond_0

    .line 64
    iget-object p1, p0, Lorg/h2/engine/MetaRecord;->sql:Ljava/lang/String;

    invoke-interface {p3, v0, p1}, Lorg/h2/api/DatabaseEventListener;->exceptionThrown(Ljava/sql/SQLException;Ljava/lang/String;)V

    :goto_0
    return-void

    .line 67
    :cond_0
    throw p2
.end method

.method public getId()I
    .locals 1

    .line 73
    iget v0, p0, Lorg/h2/engine/MetaRecord;->id:I

    return v0
.end method

.method public getObjectType()I
    .locals 1

    .line 77
    iget v0, p0, Lorg/h2/engine/MetaRecord;->objectType:I

    return v0
.end method

.method public getSQL()Ljava/lang/String;
    .locals 1

    .line 81
    iget-object v0, p0, Lorg/h2/engine/MetaRecord;->sql:Ljava/lang/String;

    return-object v0
.end method

.method setRecord(Lorg/h2/result/SearchRow;)V
    .locals 2

    .line 40
    iget v0, p0, Lorg/h2/engine/MetaRecord;->id:I

    invoke-static {v0}, Lorg/h2/value/ValueInt;->get(I)Lorg/h2/value/ValueInt;

    move-result-object v0

    const/4 v1, 0x0

    invoke-interface {p1, v1, v0}, Lorg/h2/result/SearchRow;->setValue(ILorg/h2/value/Value;)V

    .line 41
    invoke-static {v1}, Lorg/h2/value/ValueInt;->get(I)Lorg/h2/value/ValueInt;

    move-result-object v0

    const/4 v1, 0x1

    invoke-interface {p1, v1, v0}, Lorg/h2/result/SearchRow;->setValue(ILorg/h2/value/Value;)V

    .line 42
    iget v0, p0, Lorg/h2/engine/MetaRecord;->objectType:I

    invoke-static {v0}, Lorg/h2/value/ValueInt;->get(I)Lorg/h2/value/ValueInt;

    move-result-object v0

    const/4 v1, 0x2

    invoke-interface {p1, v1, v0}, Lorg/h2/result/SearchRow;->setValue(ILorg/h2/value/Value;)V

    .line 43
    iget-object v0, p0, Lorg/h2/engine/MetaRecord;->sql:Ljava/lang/String;

    invoke-static {v0}, Lorg/h2/value/ValueString;->get(Ljava/lang/String;)Lorg/h2/value/Value;

    move-result-object v0

    const/4 v1, 0x3

    invoke-interface {p1, v1, v0}, Lorg/h2/result/SearchRow;->setValue(ILorg/h2/value/Value;)V

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 145
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "MetaRecord [id="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lorg/h2/engine/MetaRecord;->id:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", objectType="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lorg/h2/engine/MetaRecord;->objectType:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", sql="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lorg/h2/engine/MetaRecord;->sql:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
