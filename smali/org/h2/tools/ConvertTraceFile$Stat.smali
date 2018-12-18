.class Lorg/h2/tools/ConvertTraceFile$Stat;
.super Ljava/lang/Object;
.source "ConvertTraceFile.java"

# interfaces
.implements Ljava/lang/Comparable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/h2/tools/ConvertTraceFile;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "Stat"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/lang/Comparable<",
        "Lorg/h2/tools/ConvertTraceFile$Stat;",
        ">;"
    }
.end annotation


# instance fields
.field executeCount:I

.field resultCount:J

.field sql:Ljava/lang/String;

.field time:J


# direct methods
.method constructor <init>()V
    .locals 0

    .line 38
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic compareTo(Ljava/lang/Object;)I
    .locals 0

    .line 38
    check-cast p1, Lorg/h2/tools/ConvertTraceFile$Stat;

    invoke-virtual {p0, p1}, Lorg/h2/tools/ConvertTraceFile$Stat;->compareTo(Lorg/h2/tools/ConvertTraceFile$Stat;)I

    move-result p1

    return p1
.end method

.method public compareTo(Lorg/h2/tools/ConvertTraceFile$Stat;)I
    .locals 4

    if-ne p1, p0, :cond_0

    const/4 p1, 0x0

    return p1

    .line 49
    :cond_0
    iget-wide v0, p1, Lorg/h2/tools/ConvertTraceFile$Stat;->time:J

    iget-wide v2, p0, Lorg/h2/tools/ConvertTraceFile$Stat;->time:J

    invoke-static {v0, v1, v2, v3}, Lorg/h2/util/MathUtils;->compareLong(JJ)I

    move-result v0

    if-nez v0, :cond_1

    .line 51
    iget v0, p1, Lorg/h2/tools/ConvertTraceFile$Stat;->executeCount:I

    iget v1, p0, Lorg/h2/tools/ConvertTraceFile$Stat;->executeCount:I

    invoke-static {v0, v1}, Lorg/h2/util/MathUtils;->compareInt(II)I

    move-result v0

    if-nez v0, :cond_1

    .line 53
    iget-object v0, p0, Lorg/h2/tools/ConvertTraceFile$Stat;->sql:Ljava/lang/String;

    iget-object p1, p1, Lorg/h2/tools/ConvertTraceFile$Stat;->sql:Ljava/lang/String;

    invoke-virtual {v0, p1}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v0

    :cond_1
    return v0
.end method
