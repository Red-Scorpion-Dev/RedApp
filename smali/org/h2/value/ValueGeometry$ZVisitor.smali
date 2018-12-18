.class Lorg/h2/value/ValueGeometry$ZVisitor;
.super Ljava/lang/Object;
.source "ValueGeometry.java"

# interfaces
.implements Lcom/vividsolutions/jts/geom/CoordinateSequenceFilter;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/h2/value/ValueGeometry;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "ZVisitor"
.end annotation


# instance fields
.field foundZ:Z


# direct methods
.method constructor <init>()V
    .locals 0

    .line 285
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public filter(Lcom/vividsolutions/jts/geom/CoordinateSequence;I)V
    .locals 1

    const/4 v0, 0x2

    .line 294
    invoke-interface {p1, p2, v0}, Lcom/vividsolutions/jts/geom/CoordinateSequence;->getOrdinate(II)D

    move-result-wide p1

    invoke-static {p1, p2}, Ljava/lang/Double;->isNaN(D)Z

    move-result p1

    if-nez p1, :cond_0

    const/4 p1, 0x1

    .line 295
    iput-boolean p1, p0, Lorg/h2/value/ValueGeometry$ZVisitor;->foundZ:Z

    :cond_0
    return-void
.end method

.method public isDone()Z
    .locals 1

    .line 301
    iget-boolean v0, p0, Lorg/h2/value/ValueGeometry$ZVisitor;->foundZ:Z

    return v0
.end method

.method public isFoundZ()Z
    .locals 1

    .line 289
    iget-boolean v0, p0, Lorg/h2/value/ValueGeometry$ZVisitor;->foundZ:Z

    return v0
.end method

.method public isGeometryChanged()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method
