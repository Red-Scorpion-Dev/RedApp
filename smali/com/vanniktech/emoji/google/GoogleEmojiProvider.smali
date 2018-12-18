.class public final Lcom/vanniktech/emoji/google/GoogleEmojiProvider;
.super Ljava/lang/Object;
.source "GoogleEmojiProvider.java"

# interfaces
.implements Lcom/vanniktech/emoji/EmojiProvider;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getCategories()[Lcom/vanniktech/emoji/emoji/EmojiCategory;
    .locals 3

    const/16 v0, 0x8

    .line 17
    new-array v0, v0, [Lcom/vanniktech/emoji/emoji/EmojiCategory;

    new-instance v1, Lcom/vanniktech/emoji/google/category/PeopleCategory;

    invoke-direct {v1}, Lcom/vanniktech/emoji/google/category/PeopleCategory;-><init>()V

    const/4 v2, 0x0

    aput-object v1, v0, v2

    new-instance v1, Lcom/vanniktech/emoji/google/category/NatureCategory;

    invoke-direct {v1}, Lcom/vanniktech/emoji/google/category/NatureCategory;-><init>()V

    const/4 v2, 0x1

    aput-object v1, v0, v2

    new-instance v1, Lcom/vanniktech/emoji/google/category/FoodCategory;

    invoke-direct {v1}, Lcom/vanniktech/emoji/google/category/FoodCategory;-><init>()V

    const/4 v2, 0x2

    aput-object v1, v0, v2

    new-instance v1, Lcom/vanniktech/emoji/google/category/ActivityCategory;

    invoke-direct {v1}, Lcom/vanniktech/emoji/google/category/ActivityCategory;-><init>()V

    const/4 v2, 0x3

    aput-object v1, v0, v2

    new-instance v1, Lcom/vanniktech/emoji/google/category/TravelCategory;

    invoke-direct {v1}, Lcom/vanniktech/emoji/google/category/TravelCategory;-><init>()V

    const/4 v2, 0x4

    aput-object v1, v0, v2

    new-instance v1, Lcom/vanniktech/emoji/google/category/ObjectsCategory;

    invoke-direct {v1}, Lcom/vanniktech/emoji/google/category/ObjectsCategory;-><init>()V

    const/4 v2, 0x5

    aput-object v1, v0, v2

    new-instance v1, Lcom/vanniktech/emoji/google/category/SymbolsCategory;

    invoke-direct {v1}, Lcom/vanniktech/emoji/google/category/SymbolsCategory;-><init>()V

    const/4 v2, 0x6

    aput-object v1, v0, v2

    new-instance v1, Lcom/vanniktech/emoji/google/category/FlagsCategory;

    invoke-direct {v1}, Lcom/vanniktech/emoji/google/category/FlagsCategory;-><init>()V

    const/4 v2, 0x7

    aput-object v1, v0, v2

    return-object v0
.end method
