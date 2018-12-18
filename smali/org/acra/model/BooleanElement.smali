.class public Lorg/acra/model/BooleanElement;
.super Ljava/lang/Object;
.source "BooleanElement.java"

# interfaces
.implements Lorg/acra/model/Element;


# instance fields
.field private final content:Z


# direct methods
.method public constructor <init>(Z)V
    .locals 0

    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 28
    iput-boolean p1, p0, Lorg/acra/model/BooleanElement;->content:Z

    return-void
.end method


# virtual methods
.method public flatten()[Ljava/lang/String;
    .locals 3

    const/4 v0, 0x1

    .line 38
    new-array v0, v0, [Ljava/lang/String;

    invoke-virtual {p0}, Lorg/acra/model/BooleanElement;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .line 43
    iget-boolean v0, p0, Lorg/acra/model/BooleanElement;->content:Z

    invoke-static {v0}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public value()Ljava/lang/Object;
    .locals 1

    .line 33
    iget-boolean v0, p0, Lorg/acra/model/BooleanElement;->content:Z

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method
