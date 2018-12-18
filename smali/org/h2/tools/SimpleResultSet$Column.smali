.class Lorg/h2/tools/SimpleResultSet$Column;
.super Ljava/lang/Object;
.source "SimpleResultSet.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/h2/tools/SimpleResultSet;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "Column"
.end annotation


# instance fields
.field name:Ljava/lang/String;

.field precision:I

.field scale:I

.field sqlType:I

.field sqlTypeName:Ljava/lang/String;


# direct methods
.method constructor <init>()V
    .locals 0

    .line 2292
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
