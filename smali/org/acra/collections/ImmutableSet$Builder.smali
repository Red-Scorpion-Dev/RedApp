.class public final Lorg/acra/collections/ImmutableSet$Builder;
.super Ljava/lang/Object;
.source "ImmutableSet.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/acra/collections/ImmutableSet;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<E:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field private final mSet:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "TE;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 117
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 118
    new-instance v0, Ljava/util/LinkedHashSet;

    invoke-direct {v0}, Ljava/util/LinkedHashSet;-><init>()V

    iput-object v0, p0, Lorg/acra/collections/ImmutableSet$Builder;->mSet:Ljava/util/Set;

    return-void
.end method


# virtual methods
.method public add(Ljava/lang/Object;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;)V"
        }
    .end annotation

    .line 122
    iget-object v0, p0, Lorg/acra/collections/ImmutableSet$Builder;->mSet:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public build()Lorg/acra/collections/ImmutableSet;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lorg/acra/collections/ImmutableSet<",
            "TE;>;"
        }
    .end annotation

    .line 126
    new-instance v0, Lorg/acra/collections/ImmutableSet;

    iget-object v1, p0, Lorg/acra/collections/ImmutableSet$Builder;->mSet:Ljava/util/Set;

    invoke-direct {v0, v1}, Lorg/acra/collections/ImmutableSet;-><init>(Ljava/util/Collection;)V

    return-object v0
.end method
