.class final Lorg/acra/collector/CustomDataCollector;
.super Lorg/acra/collector/Collector;
.source "CustomDataCollector.java"


# instance fields
.field private final customParameters:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Ljava/util/Map;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    const/4 v0, 0x1

    .line 39
    new-array v0, v0, [Lorg/acra/ReportField;

    sget-object v1, Lorg/acra/ReportField;->CUSTOM_DATA:Lorg/acra/ReportField;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    invoke-direct {p0, v0}, Lorg/acra/collector/Collector;-><init>([Lorg/acra/ReportField;)V

    .line 40
    iput-object p1, p0, Lorg/acra/collector/CustomDataCollector;->customParameters:Ljava/util/Map;

    return-void
.end method

.method private createCustomInfoElement(Ljava/util/Map;)Lorg/acra/model/Element;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Lorg/acra/model/Element;"
        }
    .end annotation

    .line 56
    iget-object v0, p0, Lorg/acra/collector/CustomDataCollector;->customParameters:Ljava/util/Map;

    if-eqz p1, :cond_0

    .line 58
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1, v0}, Ljava/util/HashMap;-><init>(Ljava/util/Map;)V

    .line 59
    invoke-interface {v1, p1}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    move-object v0, v1

    .line 61
    :cond_0
    new-instance p1, Lorg/acra/model/ComplexElement;

    invoke-direct {p1, v0}, Lorg/acra/model/ComplexElement;-><init>(Ljava/util/Map;)V

    return-object p1
.end method


# virtual methods
.method collect(Lorg/acra/ReportField;Lorg/acra/builder/ReportBuilder;)Lorg/acra/model/Element;
    .locals 0

    .line 45
    invoke-virtual {p2}, Lorg/acra/builder/ReportBuilder;->getCustomData()Ljava/util/Map;

    move-result-object p1

    invoke-direct {p0, p1}, Lorg/acra/collector/CustomDataCollector;->createCustomInfoElement(Ljava/util/Map;)Lorg/acra/model/Element;

    move-result-object p1

    return-object p1
.end method
