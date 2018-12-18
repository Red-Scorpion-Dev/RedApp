.class public Lorg/acra/http/BinaryHttpRequest;
.super Lorg/acra/http/BaseHttpRequest;
.source "BinaryHttpRequest.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lorg/acra/http/BaseHttpRequest<",
        "Landroid/net/Uri;",
        ">;"
    }
.end annotation


# instance fields
.field private final context:Landroid/content/Context;


# direct methods
.method public constructor <init>(Lorg/acra/config/ACRAConfiguration;Landroid/content/Context;Lorg/acra/sender/HttpSender$Method;Ljava/lang/String;Ljava/lang/String;IILjava/util/Map;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/acra/config/ACRAConfiguration;",
            "Landroid/content/Context;",
            "Lorg/acra/sender/HttpSender$Method;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "II",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 25
    invoke-direct/range {p0 .. p8}, Lorg/acra/http/BaseHttpRequest;-><init>(Lorg/acra/config/ACRAConfiguration;Landroid/content/Context;Lorg/acra/sender/HttpSender$Method;Ljava/lang/String;Ljava/lang/String;IILjava/util/Map;)V

    .line 26
    iput-object p2, p0, Lorg/acra/http/BinaryHttpRequest;->context:Landroid/content/Context;

    return-void
.end method


# virtual methods
.method protected asBytes(Landroid/net/Uri;)[B
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 36
    iget-object v0, p0, Lorg/acra/http/BinaryHttpRequest;->context:Landroid/content/Context;

    invoke-static {v0, p1}, Lorg/acra/http/HttpUtils;->uriToByteArray(Landroid/content/Context;Landroid/net/Uri;)[B

    move-result-object p1

    return-object p1
.end method

.method protected bridge synthetic asBytes(Ljava/lang/Object;)[B
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 19
    check-cast p1, Landroid/net/Uri;

    invoke-virtual {p0, p1}, Lorg/acra/http/BinaryHttpRequest;->asBytes(Landroid/net/Uri;)[B

    move-result-object p1

    return-object p1
.end method

.method protected getContentType(Landroid/content/Context;Landroid/net/Uri;)Ljava/lang/String;
    .locals 0

    .line 31
    invoke-static {p1, p2}, Lorg/acra/http/HttpUtils;->getMimeType(Landroid/content/Context;Landroid/net/Uri;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method protected bridge synthetic getContentType(Landroid/content/Context;Ljava/lang/Object;)Ljava/lang/String;
    .locals 0

    .line 19
    check-cast p2, Landroid/net/Uri;

    invoke-virtual {p0, p1, p2}, Lorg/acra/http/BinaryHttpRequest;->getContentType(Landroid/content/Context;Landroid/net/Uri;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method
