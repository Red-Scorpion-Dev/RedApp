.class public abstract Lorg/h2/result/RowFactory;
.super Ljava/lang/Object;
.source "RowFactory.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/h2/result/RowFactory$DefaultRowFactory;
    }
.end annotation


# static fields
.field public static final DEFAULT:Lorg/h2/result/RowFactory;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 19
    new-instance v0, Lorg/h2/result/RowFactory$DefaultRowFactory;

    invoke-direct {v0}, Lorg/h2/result/RowFactory$DefaultRowFactory;-><init>()V

    sput-object v0, Lorg/h2/result/RowFactory;->DEFAULT:Lorg/h2/result/RowFactory;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public abstract createRow([Lorg/h2/value/Value;I)Lorg/h2/result/Row;
.end method
