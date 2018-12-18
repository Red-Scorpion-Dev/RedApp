.class public Lorg/briarproject/briar/blog/BlogModule$EagerSingletons;
.super Ljava/lang/Object;
.source "BlogModule.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/briarproject/briar/blog/BlogModule;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "EagerSingletons"
.end annotation


# instance fields
.field blogManager:Lorg/briarproject/briar/api/blog/BlogManager;

.field blogPostValidator:Lorg/briarproject/briar/blog/BlogPostValidator;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
