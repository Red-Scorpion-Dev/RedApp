.class public Lorg/briarproject/bramble/api/data/BdfEntry;
.super Ljava/lang/Object;
.source "BdfEntry.java"

# interfaces
.implements Ljava/lang/Comparable;
.implements Ljava/util/Map$Entry;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/lang/Comparable<",
        "Lorg/briarproject/bramble/api/data/BdfEntry;",
        ">;",
        "Ljava/util/Map$Entry<",
        "Ljava/lang/String;",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation

.annotation runtime Lorg/briarproject/bramble/api/nullsafety/NotNullByDefault;
.end annotation


# instance fields
.field private final key:Ljava/lang/String;

.field private final value:Ljava/lang/Object;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/Object;)V
    .locals 0

    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 17
    iput-object p1, p0, Lorg/briarproject/bramble/api/data/BdfEntry;->key:Ljava/lang/String;

    .line 18
    iput-object p2, p0, Lorg/briarproject/bramble/api/data/BdfEntry;->value:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public bridge synthetic compareTo(Ljava/lang/Object;)I
    .locals 0

    .line 9
    check-cast p1, Lorg/briarproject/bramble/api/data/BdfEntry;

    invoke-virtual {p0, p1}, Lorg/briarproject/bramble/api/data/BdfEntry;->compareTo(Lorg/briarproject/bramble/api/data/BdfEntry;)I

    move-result p1

    return p1
.end method

.method public compareTo(Lorg/briarproject/bramble/api/data/BdfEntry;)I
    .locals 1

    if-ne p1, p0, :cond_0

    const/4 p1, 0x0

    return p1

    .line 39
    :cond_0
    iget-object v0, p0, Lorg/briarproject/bramble/api/data/BdfEntry;->key:Ljava/lang/String;

    iget-object p1, p1, Lorg/briarproject/bramble/api/data/BdfEntry;->key:Ljava/lang/String;

    invoke-virtual {v0, p1}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result p1

    return p1
.end method

.method public bridge synthetic getKey()Ljava/lang/Object;
    .locals 1

    .line 9
    invoke-virtual {p0}, Lorg/briarproject/bramble/api/data/BdfEntry;->getKey()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getKey()Ljava/lang/String;
    .locals 1

    .line 23
    iget-object v0, p0, Lorg/briarproject/bramble/api/data/BdfEntry;->key:Ljava/lang/String;

    return-object v0
.end method

.method public getValue()Ljava/lang/Object;
    .locals 1

    .line 28
    iget-object v0, p0, Lorg/briarproject/bramble/api/data/BdfEntry;->value:Ljava/lang/Object;

    return-object v0
.end method

.method public setValue(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 33
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1
.end method
