.class public Lorg/h2/value/ValueGeometry;
.super Lorg/h2/value/Value;
.source "ValueGeometry.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/h2/value/ValueGeometry$ZVisitor;
    }
.end annotation


# instance fields
.field private final bytes:[B

.field private geometry:Lcom/vividsolutions/jts/geom/Geometry;

.field private final hashCode:I


# direct methods
.method private constructor <init>([BLcom/vividsolutions/jts/geom/Geometry;)V
    .locals 0

    .line 59
    invoke-direct {p0}, Lorg/h2/value/Value;-><init>()V

    .line 60
    iput-object p1, p0, Lorg/h2/value/ValueGeometry;->bytes:[B

    .line 61
    iput-object p2, p0, Lorg/h2/value/ValueGeometry;->geometry:Lcom/vividsolutions/jts/geom/Geometry;

    .line 62
    invoke-static {p1}, Ljava/util/Arrays;->hashCode([B)I

    move-result p1

    iput p1, p0, Lorg/h2/value/ValueGeometry;->hashCode:I

    return-void
.end method

.method private static convertToWKB(Lcom/vividsolutions/jts/geom/Geometry;)[B
    .locals 3

    .line 82
    invoke-virtual {p0}, Lcom/vividsolutions/jts/geom/Geometry;->getSRID()I

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 83
    :goto_0
    invoke-static {p0}, Lorg/h2/value/ValueGeometry;->getDimensionCount(Lcom/vividsolutions/jts/geom/Geometry;)I

    move-result v1

    .line 84
    new-instance v2, Lcom/vividsolutions/jts/io/WKBWriter;

    invoke-direct {v2, v1, v0}, Lcom/vividsolutions/jts/io/WKBWriter;-><init>(IZ)V

    .line 85
    invoke-virtual {v2, p0}, Lcom/vividsolutions/jts/io/WKBWriter;->write(Lcom/vividsolutions/jts/geom/Geometry;)[B

    move-result-object p0

    return-object p0
.end method

.method private static get(Lcom/vividsolutions/jts/geom/Geometry;)Lorg/h2/value/ValueGeometry;
    .locals 2

    .line 77
    invoke-static {p0}, Lorg/h2/value/ValueGeometry;->convertToWKB(Lcom/vividsolutions/jts/geom/Geometry;)[B

    move-result-object v0

    .line 78
    new-instance v1, Lorg/h2/value/ValueGeometry;

    invoke-direct {v1, v0, p0}, Lorg/h2/value/ValueGeometry;-><init>([BLcom/vividsolutions/jts/geom/Geometry;)V

    invoke-static {v1}, Lorg/h2/value/Value;->cache(Lorg/h2/value/Value;)Lorg/h2/value/Value;

    move-result-object p0

    check-cast p0, Lorg/h2/value/ValueGeometry;

    return-object p0
.end method

.method public static get(Ljava/lang/String;)Lorg/h2/value/ValueGeometry;
    .locals 1

    .line 102
    :try_start_0
    new-instance v0, Lcom/vividsolutions/jts/io/WKTReader;

    invoke-direct {v0}, Lcom/vividsolutions/jts/io/WKTReader;-><init>()V

    invoke-virtual {v0, p0}, Lcom/vividsolutions/jts/io/WKTReader;->read(Ljava/lang/String;)Lcom/vividsolutions/jts/geom/Geometry;

    move-result-object p0

    .line 103
    invoke-static {p0}, Lorg/h2/value/ValueGeometry;->get(Lcom/vividsolutions/jts/geom/Geometry;)Lorg/h2/value/ValueGeometry;

    move-result-object p0
    :try_end_0
    .catch Lcom/vividsolutions/jts/io/ParseException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    .line 105
    invoke-static {p0}, Lorg/h2/message/DbException;->convert(Ljava/lang/Throwable;)Lorg/h2/message/DbException;

    move-result-object p0

    throw p0
.end method

.method public static get(Ljava/lang/String;I)Lorg/h2/value/ValueGeometry;
    .locals 2

    .line 118
    :try_start_0
    new-instance v0, Lcom/vividsolutions/jts/geom/GeometryFactory;

    new-instance v1, Lcom/vividsolutions/jts/geom/PrecisionModel;

    invoke-direct {v1}, Lcom/vividsolutions/jts/geom/PrecisionModel;-><init>()V

    invoke-direct {v0, v1, p1}, Lcom/vividsolutions/jts/geom/GeometryFactory;-><init>(Lcom/vividsolutions/jts/geom/PrecisionModel;I)V

    .line 119
    new-instance p1, Lcom/vividsolutions/jts/io/WKTReader;

    invoke-direct {p1, v0}, Lcom/vividsolutions/jts/io/WKTReader;-><init>(Lcom/vividsolutions/jts/geom/GeometryFactory;)V

    invoke-virtual {p1, p0}, Lcom/vividsolutions/jts/io/WKTReader;->read(Ljava/lang/String;)Lcom/vividsolutions/jts/geom/Geometry;

    move-result-object p0

    .line 120
    invoke-static {p0}, Lorg/h2/value/ValueGeometry;->get(Lcom/vividsolutions/jts/geom/Geometry;)Lorg/h2/value/ValueGeometry;

    move-result-object p0
    :try_end_0
    .catch Lcom/vividsolutions/jts/io/ParseException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    .line 122
    invoke-static {p0}, Lorg/h2/message/DbException;->convert(Ljava/lang/Throwable;)Lorg/h2/message/DbException;

    move-result-object p0

    throw p0
.end method

.method public static get([B)Lorg/h2/value/ValueGeometry;
    .locals 2

    .line 133
    new-instance v0, Lorg/h2/value/ValueGeometry;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lorg/h2/value/ValueGeometry;-><init>([BLcom/vividsolutions/jts/geom/Geometry;)V

    invoke-static {v0}, Lorg/h2/value/Value;->cache(Lorg/h2/value/Value;)Lorg/h2/value/Value;

    move-result-object p0

    check-cast p0, Lorg/h2/value/ValueGeometry;

    return-object p0
.end method

.method private static getDimensionCount(Lcom/vividsolutions/jts/geom/Geometry;)I
    .locals 1

    .line 89
    new-instance v0, Lorg/h2/value/ValueGeometry$ZVisitor;

    invoke-direct {v0}, Lorg/h2/value/ValueGeometry$ZVisitor;-><init>()V

    .line 90
    invoke-virtual {p0, v0}, Lcom/vividsolutions/jts/geom/Geometry;->apply(Lcom/vividsolutions/jts/geom/CoordinateSequenceFilter;)V

    .line 91
    invoke-virtual {v0}, Lorg/h2/value/ValueGeometry$ZVisitor;->isFoundZ()Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x3

    goto :goto_0

    :cond_0
    const/4 p0, 0x2

    :goto_0
    return p0
.end method

.method public static getFromGeometry(Ljava/lang/Object;)Lorg/h2/value/ValueGeometry;
    .locals 0

    .line 73
    check-cast p0, Lcom/vividsolutions/jts/geom/Geometry;

    invoke-static {p0}, Lorg/h2/value/ValueGeometry;->get(Lcom/vividsolutions/jts/geom/Geometry;)Lorg/h2/value/ValueGeometry;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method protected compareSecure(Lorg/h2/value/Value;Lorg/h2/value/CompareMode;)I
    .locals 0

    .line 198
    check-cast p1, Lorg/h2/value/ValueGeometry;

    invoke-virtual {p1}, Lorg/h2/value/ValueGeometry;->getGeometryNoCopy()Lcom/vividsolutions/jts/geom/Geometry;

    move-result-object p1

    .line 199
    invoke-virtual {p0}, Lorg/h2/value/ValueGeometry;->getGeometryNoCopy()Lcom/vividsolutions/jts/geom/Geometry;

    move-result-object p2

    invoke-virtual {p2, p1}, Lcom/vividsolutions/jts/geom/Geometry;->compareTo(Ljava/lang/Object;)I

    move-result p1

    return p1
.end method

.method public convertTo(I)Lorg/h2/value/Value;
    .locals 1

    const/16 v0, 0x13

    if-ne p1, v0, :cond_0

    return-object p0

    .line 279
    :cond_0
    invoke-super {p0, p1}, Lorg/h2/value/Value;->convertTo(I)Lorg/h2/value/Value;

    move-result-object p1

    return-object p1
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 1

    .line 252
    instance-of v0, p1, Lorg/h2/value/ValueGeometry;

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lorg/h2/value/ValueGeometry;->getWKB()[B

    move-result-object v0

    check-cast p1, Lorg/h2/value/ValueGeometry;

    invoke-virtual {p1}, Lorg/h2/value/ValueGeometry;->getWKB()[B

    move-result-object p1

    invoke-static {v0, p1}, Ljava/util/Arrays;->equals([B[B)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public getBytes()[B
    .locals 1

    .line 224
    invoke-virtual {p0}, Lorg/h2/value/ValueGeometry;->getWKB()[B

    move-result-object v0

    return-object v0
.end method

.method public getBytesNoCopy()[B
    .locals 1

    .line 229
    invoke-virtual {p0}, Lorg/h2/value/ValueGeometry;->getWKB()[B

    move-result-object v0

    return-object v0
.end method

.method public getDisplaySize()I
    .locals 1

    .line 240
    invoke-virtual {p0}, Lorg/h2/value/ValueGeometry;->getWKT()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    return v0
.end method

.method public getEnvelopeUnion(Lorg/h2/value/ValueGeometry;)Lorg/h2/value/Value;
    .locals 3

    .line 177
    new-instance v0, Lcom/vividsolutions/jts/geom/GeometryFactory;

    invoke-direct {v0}, Lcom/vividsolutions/jts/geom/GeometryFactory;-><init>()V

    .line 178
    new-instance v1, Lcom/vividsolutions/jts/geom/Envelope;

    invoke-virtual {p0}, Lorg/h2/value/ValueGeometry;->getGeometryNoCopy()Lcom/vividsolutions/jts/geom/Geometry;

    move-result-object v2

    invoke-virtual {v2}, Lcom/vividsolutions/jts/geom/Geometry;->getEnvelopeInternal()Lcom/vividsolutions/jts/geom/Envelope;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/vividsolutions/jts/geom/Envelope;-><init>(Lcom/vividsolutions/jts/geom/Envelope;)V

    .line 179
    invoke-virtual {p1}, Lorg/h2/value/ValueGeometry;->getGeometryNoCopy()Lcom/vividsolutions/jts/geom/Geometry;

    move-result-object p1

    invoke-virtual {p1}, Lcom/vividsolutions/jts/geom/Geometry;->getEnvelopeInternal()Lcom/vividsolutions/jts/geom/Envelope;

    move-result-object p1

    invoke-virtual {v1, p1}, Lcom/vividsolutions/jts/geom/Envelope;->expandToInclude(Lcom/vividsolutions/jts/geom/Envelope;)V

    .line 180
    invoke-virtual {v0, v1}, Lcom/vividsolutions/jts/geom/GeometryFactory;->toGeometry(Lcom/vividsolutions/jts/geom/Envelope;)Lcom/vividsolutions/jts/geom/Geometry;

    move-result-object p1

    invoke-static {p1}, Lorg/h2/value/ValueGeometry;->get(Lcom/vividsolutions/jts/geom/Geometry;)Lorg/h2/value/ValueGeometry;

    move-result-object p1

    return-object p1
.end method

.method public getGeometry()Lcom/vividsolutions/jts/geom/Geometry;
    .locals 1

    .line 143
    invoke-virtual {p0}, Lorg/h2/value/ValueGeometry;->getGeometryNoCopy()Lcom/vividsolutions/jts/geom/Geometry;

    move-result-object v0

    invoke-virtual {v0}, Lcom/vividsolutions/jts/geom/Geometry;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/vividsolutions/jts/geom/Geometry;

    return-object v0
.end method

.method public getGeometryNoCopy()Lcom/vividsolutions/jts/geom/Geometry;
    .locals 2

    .line 147
    iget-object v0, p0, Lorg/h2/value/ValueGeometry;->geometry:Lcom/vividsolutions/jts/geom/Geometry;

    if-nez v0, :cond_0

    .line 149
    :try_start_0
    new-instance v0, Lcom/vividsolutions/jts/io/WKBReader;

    invoke-direct {v0}, Lcom/vividsolutions/jts/io/WKBReader;-><init>()V

    iget-object v1, p0, Lorg/h2/value/ValueGeometry;->bytes:[B

    invoke-virtual {v0, v1}, Lcom/vividsolutions/jts/io/WKBReader;->read([B)Lcom/vividsolutions/jts/geom/Geometry;

    move-result-object v0

    iput-object v0, p0, Lorg/h2/value/ValueGeometry;->geometry:Lcom/vividsolutions/jts/geom/Geometry;
    :try_end_0
    .catch Lcom/vividsolutions/jts/io/ParseException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 151
    invoke-static {v0}, Lorg/h2/message/DbException;->convert(Ljava/lang/Throwable;)Lorg/h2/message/DbException;

    move-result-object v0

    throw v0

    .line 154
    :cond_0
    :goto_0
    iget-object v0, p0, Lorg/h2/value/ValueGeometry;->geometry:Lcom/vividsolutions/jts/geom/Geometry;

    return-object v0
.end method

.method public getMemory()I
    .locals 1

    .line 245
    invoke-virtual {p0}, Lorg/h2/value/ValueGeometry;->getWKB()[B

    move-result-object v0

    array-length v0, v0

    mul-int/lit8 v0, v0, 0x14

    add-int/lit8 v0, v0, 0x18

    return v0
.end method

.method public getObject()Ljava/lang/Object;
    .locals 1

    .line 219
    invoke-virtual {p0}, Lorg/h2/value/ValueGeometry;->getGeometry()Lcom/vividsolutions/jts/geom/Geometry;

    move-result-object v0

    return-object v0
.end method

.method public getPrecision()J
    .locals 2

    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public getSQL()Ljava/lang/String;
    .locals 2

    .line 193
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "X\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lorg/h2/value/ValueGeometry;->getBytesNoCopy()[B

    move-result-object v1

    invoke-static {v1}, Lorg/h2/util/StringUtils;->convertBytesToHex([B)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\'::Geometry"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getString()Ljava/lang/String;
    .locals 1

    .line 204
    invoke-virtual {p0}, Lorg/h2/value/ValueGeometry;->getWKT()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getType()I
    .locals 1

    const/16 v0, 0x16

    return v0
.end method

.method public getWKB()[B
    .locals 1

    .line 271
    iget-object v0, p0, Lorg/h2/value/ValueGeometry;->bytes:[B

    return-object v0
.end method

.method public getWKT()Ljava/lang/String;
    .locals 2

    .line 262
    new-instance v0, Lcom/vividsolutions/jts/io/WKTWriter;

    const/4 v1, 0x3

    invoke-direct {v0, v1}, Lcom/vividsolutions/jts/io/WKTWriter;-><init>(I)V

    invoke-virtual {p0}, Lorg/h2/value/ValueGeometry;->getGeometryNoCopy()Lcom/vividsolutions/jts/geom/Geometry;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/vividsolutions/jts/io/WKTWriter;->write(Lcom/vividsolutions/jts/geom/Geometry;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public hashCode()I
    .locals 1

    .line 214
    iget v0, p0, Lorg/h2/value/ValueGeometry;->hashCode:I

    return v0
.end method

.method public intersectsBoundingBox(Lorg/h2/value/ValueGeometry;)Z
    .locals 1

    .line 166
    invoke-virtual {p0}, Lorg/h2/value/ValueGeometry;->getGeometryNoCopy()Lcom/vividsolutions/jts/geom/Geometry;

    move-result-object v0

    invoke-virtual {v0}, Lcom/vividsolutions/jts/geom/Geometry;->getEnvelopeInternal()Lcom/vividsolutions/jts/geom/Envelope;

    move-result-object v0

    invoke-virtual {p1}, Lorg/h2/value/ValueGeometry;->getGeometryNoCopy()Lcom/vividsolutions/jts/geom/Geometry;

    move-result-object p1

    invoke-virtual {p1}, Lcom/vividsolutions/jts/geom/Geometry;->getEnvelopeInternal()Lcom/vividsolutions/jts/geom/Envelope;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/vividsolutions/jts/geom/Envelope;->intersects(Lcom/vividsolutions/jts/geom/Envelope;)Z

    move-result p1

    return p1
.end method

.method public set(Ljava/sql/PreparedStatement;I)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 235
    invoke-virtual {p0}, Lorg/h2/value/ValueGeometry;->getGeometryNoCopy()Lcom/vividsolutions/jts/geom/Geometry;

    move-result-object v0

    invoke-interface {p1, p2, v0}, Ljava/sql/PreparedStatement;->setObject(ILjava/lang/Object;)V

    return-void
.end method
