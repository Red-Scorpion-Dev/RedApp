.class Lorg/briarproject/bramble/reliability/Receiver$SequenceNumberComparator;
.super Ljava/lang/Object;
.source "Receiver.java"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/briarproject/bramble/reliability/Receiver;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "SequenceNumberComparator"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator<",
        "Lorg/briarproject/bramble/reliability/Data;",
        ">;"
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 149
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lorg/briarproject/bramble/reliability/Receiver$1;)V
    .locals 0

    .line 149
    invoke-direct {p0}, Lorg/briarproject/bramble/reliability/Receiver$SequenceNumberComparator;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 0

    .line 149
    check-cast p1, Lorg/briarproject/bramble/reliability/Data;

    check-cast p2, Lorg/briarproject/bramble/reliability/Data;

    invoke-virtual {p0, p1, p2}, Lorg/briarproject/bramble/reliability/Receiver$SequenceNumberComparator;->compare(Lorg/briarproject/bramble/reliability/Data;Lorg/briarproject/bramble/reliability/Data;)I

    move-result p1

    return p1
.end method

.method public compare(Lorg/briarproject/bramble/reliability/Data;Lorg/briarproject/bramble/reliability/Data;)I
    .locals 3

    .line 153
    invoke-virtual {p1}, Lorg/briarproject/bramble/reliability/Data;->getSequenceNumber()J

    move-result-wide v0

    invoke-virtual {p2}, Lorg/briarproject/bramble/reliability/Data;->getSequenceNumber()J

    move-result-wide p1

    cmp-long v2, v0, p1

    if-gez v2, :cond_0

    const/4 p1, -0x1

    return p1

    :cond_0
    cmp-long v2, v0, p1

    if-lez v2, :cond_1

    const/4 p1, 0x1

    return p1

    :cond_1
    const/4 p1, 0x0

    return p1
.end method
