.class public abstract Lorg/h2/result/Row;
.super Ljava/lang/Object;
.source "Row.java"

# interfaces
.implements Lorg/h2/result/SearchRow;


# static fields
.field public static final EMPTY_ARRAY:[Lorg/h2/result/Row;

.field public static final MEMORY_CALCULATE:I = -0x1


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    .line 17
    new-array v0, v0, [Lorg/h2/result/Row;

    sput-object v0, Lorg/h2/result/Row;->EMPTY_ARRAY:[Lorg/h2/result/Row;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public abstract commit()V
.end method

.method public abstract getByteCount(Lorg/h2/store/Data;)I
.end method

.method public abstract getCopy()Lorg/h2/result/Row;
.end method

.method public abstract getSessionId()I
.end method

.method public abstract getValueList()[Lorg/h2/value/Value;
.end method

.method public abstract isDeleted()Z
.end method

.method public abstract isEmpty()Z
.end method

.method public abstract setDeleted(Z)V
.end method

.method public abstract setSessionId(I)V
.end method

.method public abstract setVersion(I)V
.end method
