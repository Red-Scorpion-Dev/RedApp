.class public Lcom/rometools/rome/feed/synd/impl/Converters;
.super Lcom/rometools/rome/io/impl/PluginManager;
.source "Converters.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/rometools/rome/io/impl/PluginManager<",
        "Lcom/rometools/rome/feed/synd/Converter;",
        ">;"
    }
.end annotation


# static fields
.field public static final CONVERTERS_KEY:Ljava/lang/String; = "Converter.classes"


# direct methods
.method public constructor <init>()V
    .locals 1

    const-string v0, "Converter.classes"

    .line 37
    invoke-direct {p0, v0}, Lcom/rometools/rome/io/impl/PluginManager;-><init>(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public getConverter(Ljava/lang/String;)Lcom/rometools/rome/feed/synd/Converter;
    .locals 0

    .line 41
    invoke-virtual {p0, p1}, Lcom/rometools/rome/feed/synd/impl/Converters;->getPlugin(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/rometools/rome/feed/synd/Converter;

    return-object p1
.end method

.method protected getKey(Lcom/rometools/rome/feed/synd/Converter;)Ljava/lang/String;
    .locals 0

    .line 46
    invoke-interface {p1}, Lcom/rometools/rome/feed/synd/Converter;->getType()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method protected bridge synthetic getKey(Ljava/lang/Object;)Ljava/lang/String;
    .locals 0

    .line 28
    check-cast p1, Lcom/rometools/rome/feed/synd/Converter;

    invoke-virtual {p0, p1}, Lcom/rometools/rome/feed/synd/impl/Converters;->getKey(Lcom/rometools/rome/feed/synd/Converter;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public getSupportedFeedTypes()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 50
    invoke-virtual {p0}, Lcom/rometools/rome/feed/synd/impl/Converters;->getKeys()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method
