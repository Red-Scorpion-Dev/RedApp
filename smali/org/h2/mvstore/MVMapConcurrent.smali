.class public Lorg/h2/mvstore/MVMapConcurrent;
.super Lorg/h2/mvstore/MVMap;
.source "MVMapConcurrent.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/h2/mvstore/MVMapConcurrent$Builder;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<K:",
        "Ljava/lang/Object;",
        "V:",
        "Ljava/lang/Object;",
        ">",
        "Lorg/h2/mvstore/MVMap<",
        "TK;TV;>;"
    }
.end annotation


# direct methods
.method public constructor <init>(Lorg/h2/mvstore/type/DataType;Lorg/h2/mvstore/type/DataType;)V
    .locals 0

    .line 20
    invoke-direct {p0, p1, p2}, Lorg/h2/mvstore/MVMap;-><init>(Lorg/h2/mvstore/type/DataType;Lorg/h2/mvstore/type/DataType;)V

    return-void
.end method
