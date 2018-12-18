.class final Lorg/acra/security/ResourceKeyStoreFactory;
.super Lorg/acra/security/BaseKeyStoreFactory;
.source "ResourceKeyStoreFactory.java"


# instance fields
.field private final rawRes:I


# direct methods
.method constructor <init>(Ljava/lang/String;I)V
    .locals 0

    .line 41
    invoke-direct {p0, p1}, Lorg/acra/security/BaseKeyStoreFactory;-><init>(Ljava/lang/String;)V

    .line 42
    iput p2, p0, Lorg/acra/security/ResourceKeyStoreFactory;->rawRes:I

    return-void
.end method


# virtual methods
.method public getInputStream(Landroid/content/Context;)Ljava/io/InputStream;
    .locals 1

    .line 47
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    iget v0, p0, Lorg/acra/security/ResourceKeyStoreFactory;->rawRes:I

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->openRawResource(I)Ljava/io/InputStream;

    move-result-object p1

    return-object p1
.end method
