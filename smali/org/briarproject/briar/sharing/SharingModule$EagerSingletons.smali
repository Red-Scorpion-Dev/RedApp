.class public Lorg/briarproject/briar/sharing/SharingModule$EagerSingletons;
.super Ljava/lang/Object;
.source "SharingModule.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/briarproject/briar/sharing/SharingModule;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "EagerSingletons"
.end annotation


# instance fields
.field blogSharingManager:Lorg/briarproject/briar/api/blog/BlogSharingManager;

.field blogSharingValidator:Lorg/briarproject/briar/sharing/BlogSharingValidator;

.field forumSharingManager:Lorg/briarproject/briar/api/forum/ForumSharingManager;

.field forumSharingValidator:Lorg/briarproject/briar/sharing/ForumSharingValidator;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
