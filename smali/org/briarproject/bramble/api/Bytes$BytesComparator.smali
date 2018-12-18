.class public Lorg/briarproject/bramble/api/Bytes$BytesComparator;
.super Ljava/lang/Object;
.source "Bytes.java"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/briarproject/bramble/api/Bytes;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "BytesComparator"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator<",
        "Lorg/briarproject/bramble/api/Bytes;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 63
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 0

    .line 63
    check-cast p1, Lorg/briarproject/bramble/api/Bytes;

    check-cast p2, Lorg/briarproject/bramble/api/Bytes;

    invoke-virtual {p0, p1, p2}, Lorg/briarproject/bramble/api/Bytes$BytesComparator;->compare(Lorg/briarproject/bramble/api/Bytes;Lorg/briarproject/bramble/api/Bytes;)I

    move-result p1

    return p1
.end method

.method public compare(Lorg/briarproject/bramble/api/Bytes;Lorg/briarproject/bramble/api/Bytes;)I
    .locals 0

    .line 67
    invoke-virtual {p1, p2}, Lorg/briarproject/bramble/api/Bytes;->compareTo(Lorg/briarproject/bramble/api/Bytes;)I

    move-result p1

    return p1
.end method
