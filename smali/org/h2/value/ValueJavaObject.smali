.class public Lorg/h2/value/ValueJavaObject;
.super Lorg/h2/value/ValueBytes;
.source "ValueJavaObject.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/h2/value/ValueJavaObject$NotSerialized;
    }
.end annotation


# static fields
.field private static final EMPTY:Lorg/h2/value/ValueJavaObject;


# instance fields
.field private final dataHandler:Lorg/h2/store/DataHandler;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 22
    new-instance v0, Lorg/h2/value/ValueJavaObject;

    sget-object v1, Lorg/h2/util/Utils;->EMPTY_BYTES:[B

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lorg/h2/value/ValueJavaObject;-><init>([BLorg/h2/store/DataHandler;)V

    sput-object v0, Lorg/h2/value/ValueJavaObject;->EMPTY:Lorg/h2/value/ValueJavaObject;

    return-void
.end method

.method protected constructor <init>([BLorg/h2/store/DataHandler;)V
    .locals 0

    .line 27
    invoke-direct {p0, p1}, Lorg/h2/value/ValueBytes;-><init>([B)V

    .line 28
    iput-object p2, p0, Lorg/h2/value/ValueJavaObject;->dataHandler:Lorg/h2/store/DataHandler;

    return-void
.end method

.method public static getNoCopy(Ljava/lang/Object;[BLorg/h2/store/DataHandler;)Lorg/h2/value/ValueJavaObject;
    .locals 1

    if-eqz p1, :cond_0

    .line 42
    array-length v0, p1

    if-nez v0, :cond_0

    .line 43
    sget-object p0, Lorg/h2/value/ValueJavaObject;->EMPTY:Lorg/h2/value/ValueJavaObject;

    return-object p0

    .line 46
    :cond_0
    sget-boolean v0, Lorg/h2/engine/SysProperties;->serializeJavaObject:Z

    if-eqz v0, :cond_2

    if-nez p1, :cond_1

    .line 48
    invoke-static {p0, p2}, Lorg/h2/util/JdbcUtils;->serialize(Ljava/lang/Object;Lorg/h2/store/DataHandler;)[B

    move-result-object p1

    .line 50
    :cond_1
    new-instance p0, Lorg/h2/value/ValueJavaObject;

    invoke-direct {p0, p1, p2}, Lorg/h2/value/ValueJavaObject;-><init>([BLorg/h2/store/DataHandler;)V

    goto :goto_0

    .line 52
    :cond_2
    new-instance v0, Lorg/h2/value/ValueJavaObject$NotSerialized;

    invoke-direct {v0, p0, p1, p2}, Lorg/h2/value/ValueJavaObject$NotSerialized;-><init>(Ljava/lang/Object;[BLorg/h2/store/DataHandler;)V

    move-object p0, v0

    :goto_0
    if-eqz p1, :cond_4

    .line 54
    array-length p1, p1

    sget p2, Lorg/h2/engine/SysProperties;->OBJECT_CACHE_MAX_PER_ELEMENT_SIZE:I

    if-le p1, p2, :cond_3

    goto :goto_1

    .line 57
    :cond_3
    invoke-static {p0}, Lorg/h2/value/Value;->cache(Lorg/h2/value/Value;)Lorg/h2/value/Value;

    move-result-object p0

    check-cast p0, Lorg/h2/value/ValueJavaObject;

    return-object p0

    :cond_4
    :goto_1
    return-object p0
.end method


# virtual methods
.method protected getDataHandler()Lorg/h2/store/DataHandler;
    .locals 1

    .line 207
    iget-object v0, p0, Lorg/h2/value/ValueJavaObject;->dataHandler:Lorg/h2/store/DataHandler;

    return-object v0
.end method

.method public getType()I
    .locals 1

    const/16 v0, 0x13

    return v0
.end method

.method public set(Ljava/sql/PreparedStatement;I)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 68
    invoke-virtual {p0}, Lorg/h2/value/ValueJavaObject;->getBytesNoCopy()[B

    move-result-object v0

    invoke-virtual {p0}, Lorg/h2/value/ValueJavaObject;->getDataHandler()Lorg/h2/store/DataHandler;

    move-result-object v1

    invoke-static {v0, v1}, Lorg/h2/util/JdbcUtils;->deserialize([BLorg/h2/store/DataHandler;)Ljava/lang/Object;

    move-result-object v0

    const/16 v1, 0x7d0

    .line 69
    invoke-interface {p1, p2, v0, v1}, Ljava/sql/PreparedStatement;->setObject(ILjava/lang/Object;I)V

    return-void
.end method
