.class public Lorg/acra/model/NumberElement;
.super Ljava/lang/Object;
.source "NumberElement.java"

# interfaces
.implements Lorg/acra/model/Element;


# instance fields
.field private final content:Ljava/lang/Number;


# direct methods
.method public constructor <init>(Ljava/lang/Number;)V
    .locals 0

    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 28
    iput-object p1, p0, Lorg/acra/model/NumberElement;->content:Ljava/lang/Number;

    return-void
.end method


# virtual methods
.method public flatten()[Ljava/lang/String;
    .locals 3

    const/4 v0, 0x1

    .line 38
    new-array v0, v0, [Ljava/lang/String;

    invoke-virtual {p0}, Lorg/acra/model/NumberElement;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .line 43
    iget-object v0, p0, Lorg/acra/model/NumberElement;->content:Ljava/lang/Number;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public value()Ljava/lang/Object;
    .locals 1

    .line 33
    iget-object v0, p0, Lorg/acra/model/NumberElement;->content:Ljava/lang/Number;

    return-object v0
.end method
