.class abstract Lorg/acra/collector/Collector;
.super Ljava/lang/Object;
.source "Collector.java"


# instance fields
.field private final reportFields:[Lorg/acra/ReportField;


# direct methods
.method varargs constructor <init>([Lorg/acra/ReportField;)V
    .locals 0

    .line 44
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 45
    iput-object p1, p0, Lorg/acra/collector/Collector;->reportFields:[Lorg/acra/ReportField;

    return-void
.end method


# virtual methods
.method final canCollect()[Lorg/acra/ReportField;
    .locals 1

    .line 53
    iget-object v0, p0, Lorg/acra/collector/Collector;->reportFields:[Lorg/acra/ReportField;

    return-object v0
.end method

.method abstract collect(Lorg/acra/ReportField;Lorg/acra/builder/ReportBuilder;)Lorg/acra/model/Element;
.end method

.method shouldCollect(Ljava/util/Set;Lorg/acra/ReportField;Lorg/acra/builder/ReportBuilder;)Z
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set<",
            "Lorg/acra/ReportField;",
            ">;",
            "Lorg/acra/ReportField;",
            "Lorg/acra/builder/ReportBuilder;",
            ")Z"
        }
    .end annotation

    .line 65
    invoke-interface {p1, p2}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method
