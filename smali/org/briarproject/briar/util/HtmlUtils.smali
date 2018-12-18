.class public Lorg/briarproject/briar/util/HtmlUtils;
.super Ljava/lang/Object;
.source "HtmlUtils.java"


# annotations
.annotation runtime Lorg/briarproject/bramble/api/nullsafety/NotNullByDefault;
.end annotation


# static fields
.field public static ARTICLE:Lorg/jsoup/safety/Whitelist;

.field public static STRIP_ALL:Lorg/jsoup/safety/Whitelist;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .line 10
    invoke-static {}, Lorg/jsoup/safety/Whitelist;->none()Lorg/jsoup/safety/Whitelist;

    move-result-object v0

    sput-object v0, Lorg/briarproject/briar/util/HtmlUtils;->STRIP_ALL:Lorg/jsoup/safety/Whitelist;

    .line 12
    invoke-static {}, Lorg/jsoup/safety/Whitelist;->basic()Lorg/jsoup/safety/Whitelist;

    move-result-object v0

    const/4 v1, 0x6

    new-array v1, v1, [Ljava/lang/String;

    const-string v2, "h1"

    const/4 v3, 0x0

    aput-object v2, v1, v3

    const-string v2, "h2"

    const/4 v3, 0x1

    aput-object v2, v1, v3

    const-string v2, "h3"

    const/4 v3, 0x2

    aput-object v2, v1, v3

    const-string v2, "h4"

    const/4 v3, 0x3

    aput-object v2, v1, v3

    const-string v2, "h5"

    const/4 v3, 0x4

    aput-object v2, v1, v3

    const-string v2, "h6"

    const/4 v3, 0x5

    aput-object v2, v1, v3

    invoke-virtual {v0, v1}, Lorg/jsoup/safety/Whitelist;->addTags([Ljava/lang/String;)Lorg/jsoup/safety/Whitelist;

    move-result-object v0

    sput-object v0, Lorg/briarproject/briar/util/HtmlUtils;->ARTICLE:Lorg/jsoup/safety/Whitelist;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static clean(Ljava/lang/String;Lorg/jsoup/safety/Whitelist;)Ljava/lang/String;
    .locals 0

    .line 15
    invoke-static {p0, p1}, Lorg/jsoup/Jsoup;->clean(Ljava/lang/String;Lorg/jsoup/safety/Whitelist;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
