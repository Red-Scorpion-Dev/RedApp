.class public Lorg/acra/model/StringElement;
.super Ljava/lang/Object;
.source "StringElement.java"

# interfaces
.implements Lorg/acra/model/Element;


# instance fields
.field private final content:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 0

    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 27
    iput-object p1, p0, Lorg/acra/model/StringElement;->content:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public flatten()[Ljava/lang/String;
    .locals 3

    const/4 v0, 0x1

    .line 37
    new-array v0, v0, [Ljava/lang/String;

    iget-object v1, p0, Lorg/acra/model/StringElement;->content:Ljava/lang/String;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .line 42
    iget-object v0, p0, Lorg/acra/model/StringElement;->content:Ljava/lang/String;

    return-object v0
.end method

.method public value()Ljava/lang/Object;
    .locals 1

    .line 32
    iget-object v0, p0, Lorg/acra/model/StringElement;->content:Ljava/lang/String;

    return-object v0
.end method
