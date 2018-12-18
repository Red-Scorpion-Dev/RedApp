.class Lcom/rometools/rome/io/WireFeedInput$EmptyEntityResolver;
.super Ljava/lang/Object;
.source "WireFeedInput.java"

# interfaces
.implements Lorg/xml/sax/EntityResolver;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/rometools/rome/io/WireFeedInput;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "EmptyEntityResolver"
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 80
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/rometools/rome/io/WireFeedInput$1;)V
    .locals 0

    .line 80
    invoke-direct {p0}, Lcom/rometools/rome/io/WireFeedInput$EmptyEntityResolver;-><init>()V

    return-void
.end method


# virtual methods
.method public resolveEntity(Ljava/lang/String;Ljava/lang/String;)Lorg/xml/sax/InputSource;
    .locals 0

    if-eqz p2, :cond_0

    const-string p1, ".dtd"

    .line 83
    invoke-virtual {p2, p1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 84
    invoke-static {}, Lcom/rometools/rome/io/WireFeedInput;->access$100()Lorg/xml/sax/InputSource;

    move-result-object p1

    return-object p1

    :cond_0
    const/4 p1, 0x0

    return-object p1
.end method
