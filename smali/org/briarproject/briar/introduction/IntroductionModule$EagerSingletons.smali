.class public Lorg/briarproject/briar/introduction/IntroductionModule$EagerSingletons;
.super Ljava/lang/Object;
.source "IntroductionModule.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/briarproject/briar/introduction/IntroductionModule;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "EagerSingletons"
.end annotation


# instance fields
.field introductionManager:Lorg/briarproject/briar/api/introduction/IntroductionManager;

.field introductionValidator:Lorg/briarproject/briar/introduction/IntroductionValidator;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
