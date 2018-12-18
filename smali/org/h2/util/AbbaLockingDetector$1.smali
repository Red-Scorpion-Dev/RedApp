.class final Lorg/h2/util/AbbaLockingDetector$1;
.super Ljava/lang/Object;
.source "AbbaLockingDetector.java"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/h2/util/AbbaLockingDetector;->generateOrdering(Ljava/util/List;Ljava/lang/management/ThreadInfo;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator<",
        "Ljava/lang/management/MonitorInfo;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 125
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 0

    .line 125
    check-cast p1, Ljava/lang/management/MonitorInfo;

    check-cast p2, Ljava/lang/management/MonitorInfo;

    invoke-virtual {p0, p1, p2}, Lorg/h2/util/AbbaLockingDetector$1;->compare(Ljava/lang/management/MonitorInfo;Ljava/lang/management/MonitorInfo;)I

    move-result p1

    return p1
.end method

.method public compare(Ljava/lang/management/MonitorInfo;Ljava/lang/management/MonitorInfo;)I
    .locals 0

    .line 128
    invoke-virtual {p2}, Ljava/lang/management/MonitorInfo;->getLockedStackDepth()I

    move-result p2

    invoke-virtual {p1}, Ljava/lang/management/MonitorInfo;->getLockedStackDepth()I

    move-result p1

    sub-int/2addr p2, p1

    return p2
.end method
