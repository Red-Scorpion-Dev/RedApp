.class final Lorg/h2/result/RowFactory$DefaultRowFactory;
.super Lorg/h2/result/RowFactory;
.source "RowFactory.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/h2/result/RowFactory;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "DefaultRowFactory"
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 33
    invoke-direct {p0}, Lorg/h2/result/RowFactory;-><init>()V

    return-void
.end method


# virtual methods
.method public createRow([Lorg/h2/value/Value;I)Lorg/h2/result/Row;
    .locals 1

    .line 36
    new-instance v0, Lorg/h2/result/RowImpl;

    invoke-direct {v0, p1, p2}, Lorg/h2/result/RowImpl;-><init>([Lorg/h2/value/Value;I)V

    return-object v0
.end method
