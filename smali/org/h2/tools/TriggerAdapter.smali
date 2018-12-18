.class public abstract Lorg/h2/tools/TriggerAdapter;
.super Ljava/lang/Object;
.source "TriggerAdapter.java"

# interfaces
.implements Lorg/h2/api/Trigger;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/h2/tools/TriggerAdapter$TriggerRowSource;
    }
.end annotation


# instance fields
.field protected before:Z

.field private newResultSet:Lorg/h2/tools/SimpleResultSet;

.field private newSource:Lorg/h2/tools/TriggerAdapter$TriggerRowSource;

.field private oldResultSet:Lorg/h2/tools/SimpleResultSet;

.field private oldSource:Lorg/h2/tools/TriggerAdapter$TriggerRowSource;

.field protected schemaName:Ljava/lang/String;

.field protected tableName:Ljava/lang/String;

.field protected triggerName:Ljava/lang/String;

.field protected type:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static wrap(Lorg/h2/tools/SimpleResultSet;Lorg/h2/tools/TriggerAdapter$TriggerRowSource;[Ljava/lang/Object;)Lorg/h2/tools/SimpleResultSet;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    if-nez p2, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 173
    :cond_0
    invoke-virtual {p1, p2}, Lorg/h2/tools/TriggerAdapter$TriggerRowSource;->setRow([Ljava/lang/Object;)V

    .line 174
    invoke-virtual {p0}, Lorg/h2/tools/SimpleResultSet;->next()Z

    return-object p0
.end method


# virtual methods
.method public close()V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    return-void
.end method

.method public abstract fire(Ljava/sql/Connection;Ljava/sql/ResultSet;Ljava/sql/ResultSet;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation
.end method

.method public fire(Ljava/sql/Connection;[Ljava/lang/Object;[Ljava/lang/Object;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 144
    iget-object v0, p0, Lorg/h2/tools/TriggerAdapter;->oldResultSet:Lorg/h2/tools/SimpleResultSet;

    iget-object v1, p0, Lorg/h2/tools/TriggerAdapter;->oldSource:Lorg/h2/tools/TriggerAdapter$TriggerRowSource;

    invoke-static {v0, v1, p2}, Lorg/h2/tools/TriggerAdapter;->wrap(Lorg/h2/tools/SimpleResultSet;Lorg/h2/tools/TriggerAdapter$TriggerRowSource;[Ljava/lang/Object;)Lorg/h2/tools/SimpleResultSet;

    move-result-object p2

    iget-object v0, p0, Lorg/h2/tools/TriggerAdapter;->newResultSet:Lorg/h2/tools/SimpleResultSet;

    iget-object v1, p0, Lorg/h2/tools/TriggerAdapter;->newSource:Lorg/h2/tools/TriggerAdapter$TriggerRowSource;

    invoke-static {v0, v1, p3}, Lorg/h2/tools/TriggerAdapter;->wrap(Lorg/h2/tools/SimpleResultSet;Lorg/h2/tools/TriggerAdapter$TriggerRowSource;[Ljava/lang/Object;)Lorg/h2/tools/SimpleResultSet;

    move-result-object p3

    invoke-virtual {p0, p1, p2, p3}, Lorg/h2/tools/TriggerAdapter;->fire(Ljava/sql/Connection;Ljava/sql/ResultSet;Ljava/sql/ResultSet;)V

    return-void
.end method

.method public init(Ljava/sql/Connection;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZI)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 69
    invoke-interface {p1}, Ljava/sql/Connection;->getMetaData()Ljava/sql/DatabaseMetaData;

    move-result-object p1

    const/4 v0, 0x0

    invoke-interface {p1, v0, p2, p4, v0}, Ljava/sql/DatabaseMetaData;->getColumns(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/sql/ResultSet;

    move-result-object p1

    .line 71
    new-instance v0, Lorg/h2/tools/TriggerAdapter$TriggerRowSource;

    invoke-direct {v0}, Lorg/h2/tools/TriggerAdapter$TriggerRowSource;-><init>()V

    iput-object v0, p0, Lorg/h2/tools/TriggerAdapter;->oldSource:Lorg/h2/tools/TriggerAdapter$TriggerRowSource;

    .line 72
    new-instance v0, Lorg/h2/tools/TriggerAdapter$TriggerRowSource;

    invoke-direct {v0}, Lorg/h2/tools/TriggerAdapter$TriggerRowSource;-><init>()V

    iput-object v0, p0, Lorg/h2/tools/TriggerAdapter;->newSource:Lorg/h2/tools/TriggerAdapter$TriggerRowSource;

    .line 73
    new-instance v0, Lorg/h2/tools/SimpleResultSet;

    iget-object v1, p0, Lorg/h2/tools/TriggerAdapter;->oldSource:Lorg/h2/tools/TriggerAdapter$TriggerRowSource;

    invoke-direct {v0, v1}, Lorg/h2/tools/SimpleResultSet;-><init>(Lorg/h2/tools/SimpleRowSource;)V

    iput-object v0, p0, Lorg/h2/tools/TriggerAdapter;->oldResultSet:Lorg/h2/tools/SimpleResultSet;

    .line 74
    new-instance v0, Lorg/h2/tools/SimpleResultSet;

    iget-object v1, p0, Lorg/h2/tools/TriggerAdapter;->newSource:Lorg/h2/tools/TriggerAdapter$TriggerRowSource;

    invoke-direct {v0, v1}, Lorg/h2/tools/SimpleResultSet;-><init>(Lorg/h2/tools/SimpleRowSource;)V

    iput-object v0, p0, Lorg/h2/tools/TriggerAdapter;->newResultSet:Lorg/h2/tools/SimpleResultSet;

    .line 75
    :goto_0
    invoke-interface {p1}, Ljava/sql/ResultSet;->next()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "COLUMN_NAME"

    .line 76
    invoke-interface {p1, v0}, Ljava/sql/ResultSet;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "DATA_TYPE"

    .line 77
    invoke-interface {p1, v1}, Ljava/sql/ResultSet;->getInt(Ljava/lang/String;)I

    move-result v1

    const-string v2, "COLUMN_SIZE"

    .line 78
    invoke-interface {p1, v2}, Ljava/sql/ResultSet;->getInt(Ljava/lang/String;)I

    move-result v2

    const-string v3, "DECIMAL_DIGITS"

    .line 79
    invoke-interface {p1, v3}, Ljava/sql/ResultSet;->getInt(Ljava/lang/String;)I

    move-result v3

    .line 80
    iget-object v4, p0, Lorg/h2/tools/TriggerAdapter;->oldResultSet:Lorg/h2/tools/SimpleResultSet;

    invoke-virtual {v4, v0, v1, v2, v3}, Lorg/h2/tools/SimpleResultSet;->addColumn(Ljava/lang/String;III)V

    .line 81
    iget-object v4, p0, Lorg/h2/tools/TriggerAdapter;->newResultSet:Lorg/h2/tools/SimpleResultSet;

    invoke-virtual {v4, v0, v1, v2, v3}, Lorg/h2/tools/SimpleResultSet;->addColumn(Ljava/lang/String;III)V

    goto :goto_0

    .line 83
    :cond_0
    iput-object p2, p0, Lorg/h2/tools/TriggerAdapter;->schemaName:Ljava/lang/String;

    .line 84
    iput-object p3, p0, Lorg/h2/tools/TriggerAdapter;->triggerName:Ljava/lang/String;

    .line 85
    iput-object p4, p0, Lorg/h2/tools/TriggerAdapter;->tableName:Ljava/lang/String;

    .line 86
    iput-boolean p5, p0, Lorg/h2/tools/TriggerAdapter;->before:Z

    .line 87
    iput p6, p0, Lorg/h2/tools/TriggerAdapter;->type:I

    return-void
.end method

.method public remove()V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    return-void
.end method
