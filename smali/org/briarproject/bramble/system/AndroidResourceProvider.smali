.class Lorg/briarproject/bramble/system/AndroidResourceProvider;
.super Ljava/lang/Object;
.source "AndroidResourceProvider.java"

# interfaces
.implements Lorg/briarproject/bramble/api/system/ResourceProvider;


# annotations
.annotation runtime Lorg/briarproject/bramble/api/nullsafety/NotNullByDefault;
.end annotation


# instance fields
.field private final appContext:Landroid/content/Context;


# direct methods
.method constructor <init>(Landroid/app/Application;)V
    .locals 0

    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 21
    invoke-virtual {p1}, Landroid/app/Application;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    iput-object p1, p0, Lorg/briarproject/bramble/system/AndroidResourceProvider;->appContext:Landroid/content/Context;

    return-void
.end method


# virtual methods
.method public getResourceInputStream(Ljava/lang/String;Ljava/lang/String;)Ljava/io/InputStream;
    .locals 2

    .line 26
    iget-object p2, p0, Lorg/briarproject/bramble/system/AndroidResourceProvider;->appContext:Landroid/content/Context;

    invoke-virtual {p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    const-string v0, "raw"

    .line 28
    iget-object v1, p0, Lorg/briarproject/bramble/system/AndroidResourceProvider;->appContext:Landroid/content/Context;

    .line 29
    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, p1, v0, v1}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result p1

    .line 30
    invoke-virtual {p2, p1}, Landroid/content/res/Resources;->openRawResource(I)Ljava/io/InputStream;

    move-result-object p1

    return-object p1
.end method
