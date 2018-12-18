.class public interface abstract Lorg/h2/result/SearchRow;
.super Ljava/lang/Object;
.source "SearchRow.java"


# static fields
.field public static final EMPTY_ARRAY:[Lorg/h2/result/SearchRow;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    .line 19
    new-array v0, v0, [Lorg/h2/result/SearchRow;

    sput-object v0, Lorg/h2/result/SearchRow;->EMPTY_ARRAY:[Lorg/h2/result/SearchRow;

    return-void
.end method


# virtual methods
.method public abstract getColumnCount()I
.end method

.method public abstract getKey()J
.end method

.method public abstract getMemory()I
.end method

.method public abstract getValue(I)Lorg/h2/value/Value;
.end method

.method public abstract getVersion()I
.end method

.method public abstract setKey(J)V
.end method

.method public abstract setKeyAndVersion(Lorg/h2/result/SearchRow;)V
.end method

.method public abstract setValue(ILorg/h2/value/Value;)V
.end method
