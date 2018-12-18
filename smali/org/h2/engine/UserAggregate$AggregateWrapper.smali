.class Lorg/h2/engine/UserAggregate$AggregateWrapper;
.super Ljava/lang/Object;
.source "UserAggregate.java"

# interfaces
.implements Lorg/h2/api/Aggregate;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/h2/engine/UserAggregate;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "AggregateWrapper"
.end annotation


# instance fields
.field private final aggregateFunction:Lorg/h2/api/AggregateFunction;


# direct methods
.method constructor <init>(Lorg/h2/api/AggregateFunction;)V
    .locals 0

    .line 101
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 102
    iput-object p1, p0, Lorg/h2/engine/UserAggregate$AggregateWrapper;->aggregateFunction:Lorg/h2/api/AggregateFunction;

    return-void
.end method


# virtual methods
.method public add(Ljava/lang/Object;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 121
    iget-object v0, p0, Lorg/h2/engine/UserAggregate$AggregateWrapper;->aggregateFunction:Lorg/h2/api/AggregateFunction;

    invoke-interface {v0, p1}, Lorg/h2/api/AggregateFunction;->add(Ljava/lang/Object;)V

    return-void
.end method

.method public getInternalType([I)I
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 112
    array-length v0, p1

    new-array v0, v0, [I

    const/4 v1, 0x0

    .line 113
    :goto_0
    array-length v2, p1

    if-ge v1, v2, :cond_0

    .line 114
    aget v2, p1, v1

    invoke-static {v2}, Lorg/h2/value/DataType;->convertTypeToSQLType(I)I

    move-result v2

    aput v2, v0, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 116
    :cond_0
    iget-object p1, p0, Lorg/h2/engine/UserAggregate$AggregateWrapper;->aggregateFunction:Lorg/h2/api/AggregateFunction;

    invoke-interface {p1, v0}, Lorg/h2/api/AggregateFunction;->getType([I)I

    move-result p1

    invoke-static {p1}, Lorg/h2/value/DataType;->convertSQLTypeToValueType(I)I

    move-result p1

    return p1
.end method

.method public getResult()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 126
    iget-object v0, p0, Lorg/h2/engine/UserAggregate$AggregateWrapper;->aggregateFunction:Lorg/h2/api/AggregateFunction;

    invoke-interface {v0}, Lorg/h2/api/AggregateFunction;->getResult()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public init(Ljava/sql/Connection;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 107
    iget-object v0, p0, Lorg/h2/engine/UserAggregate$AggregateWrapper;->aggregateFunction:Lorg/h2/api/AggregateFunction;

    invoke-interface {v0, p1}, Lorg/h2/api/AggregateFunction;->init(Ljava/sql/Connection;)V

    return-void
.end method
