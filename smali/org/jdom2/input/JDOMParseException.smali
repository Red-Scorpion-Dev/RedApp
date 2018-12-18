.class public Lorg/jdom2/input/JDOMParseException;
.super Lorg/jdom2/JDOMException;
.source "JDOMParseException.java"


# instance fields
.field private final partialDocument:Lorg/jdom2/Document;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/Throwable;Lorg/jdom2/Document;)V
    .locals 0

    .line 108
    invoke-direct {p0, p1, p2}, Lorg/jdom2/JDOMException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 109
    iput-object p3, p0, Lorg/jdom2/input/JDOMParseException;->partialDocument:Lorg/jdom2/Document;

    return-void
.end method
