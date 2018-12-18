.class public Lorg/briarproject/briar/forum/ForumModule$EagerSingletons;
.super Ljava/lang/Object;
.source "ForumModule.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/briarproject/briar/forum/ForumModule;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "EagerSingletons"
.end annotation


# instance fields
.field forumManager:Lorg/briarproject/briar/api/forum/ForumManager;

.field forumPostValidator:Lorg/briarproject/briar/forum/ForumPostValidator;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
