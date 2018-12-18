.class final Lorg/h2/table/JoinBatch$1;
.super Ljava/lang/Object;
.source "JoinBatch.java"

# interfaces
.implements Lorg/h2/index/Cursor;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/h2/table/JoinBatch;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 44
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public get()Lorg/h2/result/Row;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public getSearchRow()Lorg/h2/result/SearchRow;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public next()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public previous()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    const-string v0, "EMPTY_CURSOR"

    return-object v0
.end method
