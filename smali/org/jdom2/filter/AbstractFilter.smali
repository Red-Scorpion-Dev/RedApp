.class public abstract Lorg/jdom2/filter/AbstractFilter;
.super Ljava/lang/Object;
.source "AbstractFilter.java"

# interfaces
.implements Lorg/jdom2/filter/Filter;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lorg/jdom2/filter/Filter<",
        "TT;>;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 72
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final matches(Ljava/lang/Object;)Z
    .locals 0

    .line 81
    invoke-virtual {p0, p1}, Lorg/jdom2/filter/AbstractFilter;->filter(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method
