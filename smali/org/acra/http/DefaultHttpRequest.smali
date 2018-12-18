.class public Lorg/acra/http/DefaultHttpRequest;
.super Lorg/acra/http/BaseHttpRequest;
.source "DefaultHttpRequest.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lorg/acra/http/BaseHttpRequest<",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# instance fields
.field private final type:Lorg/acra/sender/HttpSender$Type;


# direct methods
.method public constructor <init>(Lorg/acra/config/ACRAConfiguration;Landroid/content/Context;Lorg/acra/sender/HttpSender$Method;Lorg/acra/sender/HttpSender$Type;Ljava/lang/String;Ljava/lang/String;IILjava/util/Map;)V
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/acra/config/ACRAConfiguration;",
            "Landroid/content/Context;",
            "Lorg/acra/sender/HttpSender$Method;",
            "Lorg/acra/sender/HttpSender$Type;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "II",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p5

    move-object v5, p6

    move/from16 v6, p7

    move/from16 v7, p8

    move-object/from16 v8, p9

    .line 40
    invoke-direct/range {v0 .. v8}, Lorg/acra/http/BaseHttpRequest;-><init>(Lorg/acra/config/ACRAConfiguration;Landroid/content/Context;Lorg/acra/sender/HttpSender$Method;Ljava/lang/String;Ljava/lang/String;IILjava/util/Map;)V

    move-object v1, p4

    .line 41
    iput-object v1, v0, Lorg/acra/http/DefaultHttpRequest;->type:Lorg/acra/sender/HttpSender$Type;

    return-void
.end method


# virtual methods
.method protected bridge synthetic asBytes(Ljava/lang/Object;)[B
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 34
    check-cast p1, Ljava/lang/String;

    invoke-virtual {p0, p1}, Lorg/acra/http/DefaultHttpRequest;->asBytes(Ljava/lang/String;)[B

    move-result-object p1

    return-object p1
.end method

.method protected asBytes(Ljava/lang/String;)[B
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const-string v0, "UTF-8"

    .line 51
    invoke-virtual {p1, v0}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object p1

    return-object p1
.end method

.method protected bridge synthetic getContentType(Landroid/content/Context;Ljava/lang/Object;)Ljava/lang/String;
    .locals 0

    .line 34
    check-cast p2, Ljava/lang/String;

    invoke-virtual {p0, p1, p2}, Lorg/acra/http/DefaultHttpRequest;->getContentType(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method protected getContentType(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 46
    iget-object p1, p0, Lorg/acra/http/DefaultHttpRequest;->type:Lorg/acra/sender/HttpSender$Type;

    invoke-virtual {p1}, Lorg/acra/sender/HttpSender$Type;->getContentType()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method
