.class public final Lcom/vanniktech/emoji/google/category/ActivityCategory;
.super Ljava/lang/Object;
.source "ActivityCategory.java"

# interfaces
.implements Lcom/vanniktech/emoji/emoji/EmojiCategory;


# static fields
.field private static final DATA:[Lcom/vanniktech/emoji/emoji/Emoji;


# direct methods
.method static constructor <clinit>()V
    .locals 14

    const/16 v0, 0x50

    .line 10
    new-array v0, v0, [Lcom/vanniktech/emoji/emoji/Emoji;

    new-instance v1, Lcom/vanniktech/emoji/emoji/Emoji;

    sget v2, Lcom/vanniktech/emoji/google/R$drawable;->emoji_google_26bd:I

    const/16 v3, 0x26bd

    invoke-direct {v1, v3, v2}, Lcom/vanniktech/emoji/emoji/Emoji;-><init>(II)V

    const/4 v2, 0x0

    aput-object v1, v0, v2

    new-instance v1, Lcom/vanniktech/emoji/emoji/Emoji;

    sget v3, Lcom/vanniktech/emoji/google/R$drawable;->emoji_google_1f3c0:I

    const v4, 0x1f3c0

    invoke-direct {v1, v4, v3}, Lcom/vanniktech/emoji/emoji/Emoji;-><init>(II)V

    const/4 v3, 0x1

    aput-object v1, v0, v3

    new-instance v1, Lcom/vanniktech/emoji/emoji/Emoji;

    sget v4, Lcom/vanniktech/emoji/google/R$drawable;->emoji_google_1f3c8:I

    const v5, 0x1f3c8

    invoke-direct {v1, v5, v4}, Lcom/vanniktech/emoji/emoji/Emoji;-><init>(II)V

    const/4 v4, 0x2

    aput-object v1, v0, v4

    new-instance v1, Lcom/vanniktech/emoji/emoji/Emoji;

    sget v5, Lcom/vanniktech/emoji/google/R$drawable;->emoji_google_26be:I

    const/16 v6, 0x26be

    invoke-direct {v1, v6, v5}, Lcom/vanniktech/emoji/emoji/Emoji;-><init>(II)V

    const/4 v5, 0x3

    aput-object v1, v0, v5

    new-instance v1, Lcom/vanniktech/emoji/emoji/Emoji;

    sget v6, Lcom/vanniktech/emoji/google/R$drawable;->emoji_google_1f3be:I

    const v7, 0x1f3be

    invoke-direct {v1, v7, v6}, Lcom/vanniktech/emoji/emoji/Emoji;-><init>(II)V

    const/4 v6, 0x4

    aput-object v1, v0, v6

    new-instance v1, Lcom/vanniktech/emoji/emoji/Emoji;

    sget v7, Lcom/vanniktech/emoji/google/R$drawable;->emoji_google_1f3d0:I

    const v8, 0x1f3d0

    invoke-direct {v1, v8, v7}, Lcom/vanniktech/emoji/emoji/Emoji;-><init>(II)V

    const/4 v7, 0x5

    aput-object v1, v0, v7

    new-instance v1, Lcom/vanniktech/emoji/emoji/Emoji;

    sget v8, Lcom/vanniktech/emoji/google/R$drawable;->emoji_google_1f3c9:I

    const v9, 0x1f3c9

    invoke-direct {v1, v9, v8}, Lcom/vanniktech/emoji/emoji/Emoji;-><init>(II)V

    const/4 v8, 0x6

    aput-object v1, v0, v8

    new-instance v1, Lcom/vanniktech/emoji/emoji/Emoji;

    sget v8, Lcom/vanniktech/emoji/google/R$drawable;->emoji_google_1f3b1:I

    const v9, 0x1f3b1

    invoke-direct {v1, v9, v8}, Lcom/vanniktech/emoji/emoji/Emoji;-><init>(II)V

    const/4 v8, 0x7

    aput-object v1, v0, v8

    new-instance v1, Lcom/vanniktech/emoji/emoji/Emoji;

    sget v8, Lcom/vanniktech/emoji/google/R$drawable;->emoji_google_1f3d3:I

    const v9, 0x1f3d3

    invoke-direct {v1, v9, v8}, Lcom/vanniktech/emoji/emoji/Emoji;-><init>(II)V

    const/16 v8, 0x8

    aput-object v1, v0, v8

    new-instance v1, Lcom/vanniktech/emoji/emoji/Emoji;

    sget v8, Lcom/vanniktech/emoji/google/R$drawable;->emoji_google_1f3f8:I

    const v9, 0x1f3f8

    invoke-direct {v1, v9, v8}, Lcom/vanniktech/emoji/emoji/Emoji;-><init>(II)V

    const/16 v8, 0x9

    aput-object v1, v0, v8

    new-instance v1, Lcom/vanniktech/emoji/emoji/Emoji;

    sget v8, Lcom/vanniktech/emoji/google/R$drawable;->emoji_google_1f945:I

    const v9, 0x1f945

    invoke-direct {v1, v9, v8}, Lcom/vanniktech/emoji/emoji/Emoji;-><init>(II)V

    const/16 v8, 0xa

    aput-object v1, v0, v8

    new-instance v1, Lcom/vanniktech/emoji/emoji/Emoji;

    sget v8, Lcom/vanniktech/emoji/google/R$drawable;->emoji_google_1f3d2:I

    const v9, 0x1f3d2

    invoke-direct {v1, v9, v8}, Lcom/vanniktech/emoji/emoji/Emoji;-><init>(II)V

    const/16 v8, 0xb

    aput-object v1, v0, v8

    new-instance v1, Lcom/vanniktech/emoji/emoji/Emoji;

    sget v8, Lcom/vanniktech/emoji/google/R$drawable;->emoji_google_1f3d1:I

    const v9, 0x1f3d1

    invoke-direct {v1, v9, v8}, Lcom/vanniktech/emoji/emoji/Emoji;-><init>(II)V

    const/16 v8, 0xc

    aput-object v1, v0, v8

    new-instance v1, Lcom/vanniktech/emoji/emoji/Emoji;

    sget v8, Lcom/vanniktech/emoji/google/R$drawable;->emoji_google_1f3cf:I

    const v9, 0x1f3cf

    invoke-direct {v1, v9, v8}, Lcom/vanniktech/emoji/emoji/Emoji;-><init>(II)V

    const/16 v8, 0xd

    aput-object v1, v0, v8

    new-instance v1, Lcom/vanniktech/emoji/emoji/Emoji;

    sget v8, Lcom/vanniktech/emoji/google/R$drawable;->emoji_google_26f3:I

    const/16 v9, 0x26f3

    invoke-direct {v1, v9, v8}, Lcom/vanniktech/emoji/emoji/Emoji;-><init>(II)V

    const/16 v8, 0xe

    aput-object v1, v0, v8

    new-instance v1, Lcom/vanniktech/emoji/emoji/Emoji;

    sget v8, Lcom/vanniktech/emoji/google/R$drawable;->emoji_google_1f3f9:I

    const v9, 0x1f3f9

    invoke-direct {v1, v9, v8}, Lcom/vanniktech/emoji/emoji/Emoji;-><init>(II)V

    const/16 v8, 0xf

    aput-object v1, v0, v8

    new-instance v1, Lcom/vanniktech/emoji/emoji/Emoji;

    sget v8, Lcom/vanniktech/emoji/google/R$drawable;->emoji_google_1f3a3:I

    const v9, 0x1f3a3

    invoke-direct {v1, v9, v8}, Lcom/vanniktech/emoji/emoji/Emoji;-><init>(II)V

    const/16 v8, 0x10

    aput-object v1, v0, v8

    new-instance v1, Lcom/vanniktech/emoji/emoji/Emoji;

    sget v8, Lcom/vanniktech/emoji/google/R$drawable;->emoji_google_1f94a:I

    const v9, 0x1f94a

    invoke-direct {v1, v9, v8}, Lcom/vanniktech/emoji/emoji/Emoji;-><init>(II)V

    const/16 v8, 0x11

    aput-object v1, v0, v8

    new-instance v1, Lcom/vanniktech/emoji/emoji/Emoji;

    sget v8, Lcom/vanniktech/emoji/google/R$drawable;->emoji_google_1f94b:I

    const v9, 0x1f94b

    invoke-direct {v1, v9, v8}, Lcom/vanniktech/emoji/emoji/Emoji;-><init>(II)V

    const/16 v8, 0x12

    aput-object v1, v0, v8

    new-instance v1, Lcom/vanniktech/emoji/emoji/Emoji;

    sget v8, Lcom/vanniktech/emoji/google/R$drawable;->emoji_google_26f8:I

    const/16 v9, 0x26f8

    invoke-direct {v1, v9, v8}, Lcom/vanniktech/emoji/emoji/Emoji;-><init>(II)V

    const/16 v8, 0x13

    aput-object v1, v0, v8

    new-instance v1, Lcom/vanniktech/emoji/emoji/Emoji;

    sget v8, Lcom/vanniktech/emoji/google/R$drawable;->emoji_google_1f3bf:I

    const v9, 0x1f3bf

    invoke-direct {v1, v9, v8}, Lcom/vanniktech/emoji/emoji/Emoji;-><init>(II)V

    const/16 v8, 0x14

    aput-object v1, v0, v8

    new-instance v1, Lcom/vanniktech/emoji/emoji/Emoji;

    sget v8, Lcom/vanniktech/emoji/google/R$drawable;->emoji_google_26f7:I

    const/16 v9, 0x26f7

    invoke-direct {v1, v9, v8}, Lcom/vanniktech/emoji/emoji/Emoji;-><init>(II)V

    const/16 v8, 0x15

    aput-object v1, v0, v8

    new-instance v1, Lcom/vanniktech/emoji/emoji/Emoji;

    sget v8, Lcom/vanniktech/emoji/google/R$drawable;->emoji_google_1f3c2:I

    new-array v9, v7, [Lcom/vanniktech/emoji/emoji/Emoji;

    new-instance v10, Lcom/vanniktech/emoji/emoji/Emoji;

    new-array v11, v4, [I

    fill-array-data v11, :array_0

    sget v12, Lcom/vanniktech/emoji/google/R$drawable;->emoji_google_1f3c2_1f3fb:I

    invoke-direct {v10, v11, v12}, Lcom/vanniktech/emoji/emoji/Emoji;-><init>([II)V

    aput-object v10, v9, v2

    new-instance v10, Lcom/vanniktech/emoji/emoji/Emoji;

    new-array v11, v4, [I

    fill-array-data v11, :array_1

    sget v12, Lcom/vanniktech/emoji/google/R$drawable;->emoji_google_1f3c2_1f3fc:I

    invoke-direct {v10, v11, v12}, Lcom/vanniktech/emoji/emoji/Emoji;-><init>([II)V

    aput-object v10, v9, v3

    new-instance v10, Lcom/vanniktech/emoji/emoji/Emoji;

    new-array v11, v4, [I

    fill-array-data v11, :array_2

    sget v12, Lcom/vanniktech/emoji/google/R$drawable;->emoji_google_1f3c2_1f3fd:I

    invoke-direct {v10, v11, v12}, Lcom/vanniktech/emoji/emoji/Emoji;-><init>([II)V

    aput-object v10, v9, v4

    new-instance v10, Lcom/vanniktech/emoji/emoji/Emoji;

    new-array v11, v4, [I

    fill-array-data v11, :array_3

    sget v12, Lcom/vanniktech/emoji/google/R$drawable;->emoji_google_1f3c2_1f3fe:I

    invoke-direct {v10, v11, v12}, Lcom/vanniktech/emoji/emoji/Emoji;-><init>([II)V

    aput-object v10, v9, v5

    new-instance v10, Lcom/vanniktech/emoji/emoji/Emoji;

    new-array v11, v4, [I

    fill-array-data v11, :array_4

    sget v12, Lcom/vanniktech/emoji/google/R$drawable;->emoji_google_1f3c2_1f3ff:I

    invoke-direct {v10, v11, v12}, Lcom/vanniktech/emoji/emoji/Emoji;-><init>([II)V

    aput-object v10, v9, v6

    const v10, 0x1f3c2

    invoke-direct {v1, v10, v8, v9}, Lcom/vanniktech/emoji/emoji/Emoji;-><init>(II[Lcom/vanniktech/emoji/emoji/Emoji;)V

    const/16 v8, 0x16

    aput-object v1, v0, v8

    new-instance v1, Lcom/vanniktech/emoji/emoji/Emoji;

    new-array v8, v7, [I

    fill-array-data v8, :array_5

    sget v9, Lcom/vanniktech/emoji/google/R$drawable;->emoji_google_1f3cb_fe0f_200d_2640_fe0f:I

    new-array v10, v7, [Lcom/vanniktech/emoji/emoji/Emoji;

    new-instance v11, Lcom/vanniktech/emoji/emoji/Emoji;

    new-array v12, v7, [I

    fill-array-data v12, :array_6

    sget v13, Lcom/vanniktech/emoji/google/R$drawable;->emoji_google_1f3cb_1f3fb_200d_2640_fe0f:I

    invoke-direct {v11, v12, v13}, Lcom/vanniktech/emoji/emoji/Emoji;-><init>([II)V

    aput-object v11, v10, v2

    new-instance v11, Lcom/vanniktech/emoji/emoji/Emoji;

    new-array v12, v7, [I

    fill-array-data v12, :array_7

    sget v13, Lcom/vanniktech/emoji/google/R$drawable;->emoji_google_1f3cb_1f3fc_200d_2640_fe0f:I

    invoke-direct {v11, v12, v13}, Lcom/vanniktech/emoji/emoji/Emoji;-><init>([II)V

    aput-object v11, v10, v3

    new-instance v11, Lcom/vanniktech/emoji/emoji/Emoji;

    new-array v12, v7, [I

    fill-array-data v12, :array_8

    sget v13, Lcom/vanniktech/emoji/google/R$drawable;->emoji_google_1f3cb_1f3fd_200d_2640_fe0f:I

    invoke-direct {v11, v12, v13}, Lcom/vanniktech/emoji/emoji/Emoji;-><init>([II)V

    aput-object v11, v10, v4

    new-instance v11, Lcom/vanniktech/emoji/emoji/Emoji;

    new-array v12, v7, [I

    fill-array-data v12, :array_9

    sget v13, Lcom/vanniktech/emoji/google/R$drawable;->emoji_google_1f3cb_1f3fe_200d_2640_fe0f:I

    invoke-direct {v11, v12, v13}, Lcom/vanniktech/emoji/emoji/Emoji;-><init>([II)V

    aput-object v11, v10, v5

    new-instance v11, Lcom/vanniktech/emoji/emoji/Emoji;

    new-array v12, v7, [I

    fill-array-data v12, :array_a

    sget v13, Lcom/vanniktech/emoji/google/R$drawable;->emoji_google_1f3cb_1f3ff_200d_2640_fe0f:I

    invoke-direct {v11, v12, v13}, Lcom/vanniktech/emoji/emoji/Emoji;-><init>([II)V

    aput-object v11, v10, v6

    invoke-direct {v1, v8, v9, v10}, Lcom/vanniktech/emoji/emoji/Emoji;-><init>([II[Lcom/vanniktech/emoji/emoji/Emoji;)V

    const/16 v8, 0x17

    aput-object v1, v0, v8

    new-instance v1, Lcom/vanniktech/emoji/emoji/Emoji;

    sget v8, Lcom/vanniktech/emoji/google/R$drawable;->emoji_google_1f3cb:I

    new-array v9, v7, [Lcom/vanniktech/emoji/emoji/Emoji;

    new-instance v10, Lcom/vanniktech/emoji/emoji/Emoji;

    new-array v11, v4, [I

    fill-array-data v11, :array_b

    sget v12, Lcom/vanniktech/emoji/google/R$drawable;->emoji_google_1f3cb_1f3fb:I

    invoke-direct {v10, v11, v12}, Lcom/vanniktech/emoji/emoji/Emoji;-><init>([II)V

    aput-object v10, v9, v2

    new-instance v10, Lcom/vanniktech/emoji/emoji/Emoji;

    new-array v11, v4, [I

    fill-array-data v11, :array_c

    sget v12, Lcom/vanniktech/emoji/google/R$drawable;->emoji_google_1f3cb_1f3fc:I

    invoke-direct {v10, v11, v12}, Lcom/vanniktech/emoji/emoji/Emoji;-><init>([II)V

    aput-object v10, v9, v3

    new-instance v10, Lcom/vanniktech/emoji/emoji/Emoji;

    new-array v11, v4, [I

    fill-array-data v11, :array_d

    sget v12, Lcom/vanniktech/emoji/google/R$drawable;->emoji_google_1f3cb_1f3fd:I

    invoke-direct {v10, v11, v12}, Lcom/vanniktech/emoji/emoji/Emoji;-><init>([II)V

    aput-object v10, v9, v4

    new-instance v10, Lcom/vanniktech/emoji/emoji/Emoji;

    new-array v11, v4, [I

    fill-array-data v11, :array_e

    sget v12, Lcom/vanniktech/emoji/google/R$drawable;->emoji_google_1f3cb_1f3fe:I

    invoke-direct {v10, v11, v12}, Lcom/vanniktech/emoji/emoji/Emoji;-><init>([II)V

    aput-object v10, v9, v5

    new-instance v10, Lcom/vanniktech/emoji/emoji/Emoji;

    new-array v11, v4, [I

    fill-array-data v11, :array_f

    sget v12, Lcom/vanniktech/emoji/google/R$drawable;->emoji_google_1f3cb_1f3ff:I

    invoke-direct {v10, v11, v12}, Lcom/vanniktech/emoji/emoji/Emoji;-><init>([II)V

    aput-object v10, v9, v6

    const v10, 0x1f3cb

    invoke-direct {v1, v10, v8, v9}, Lcom/vanniktech/emoji/emoji/Emoji;-><init>(II[Lcom/vanniktech/emoji/emoji/Emoji;)V

    const/16 v8, 0x18

    aput-object v1, v0, v8

    new-instance v1, Lcom/vanniktech/emoji/emoji/Emoji;

    sget v8, Lcom/vanniktech/emoji/google/R$drawable;->emoji_google_1f93a:I

    const v9, 0x1f93a

    invoke-direct {v1, v9, v8}, Lcom/vanniktech/emoji/emoji/Emoji;-><init>(II)V

    const/16 v8, 0x19

    aput-object v1, v0, v8

    new-instance v1, Lcom/vanniktech/emoji/emoji/Emoji;

    new-array v8, v6, [I

    fill-array-data v8, :array_10

    sget v9, Lcom/vanniktech/emoji/google/R$drawable;->emoji_google_1f93c_200d_2640_fe0f:I

    invoke-direct {v1, v8, v9}, Lcom/vanniktech/emoji/emoji/Emoji;-><init>([II)V

    const/16 v8, 0x1a

    aput-object v1, v0, v8

    new-instance v1, Lcom/vanniktech/emoji/emoji/Emoji;

    new-array v8, v6, [I

    fill-array-data v8, :array_11

    sget v9, Lcom/vanniktech/emoji/google/R$drawable;->emoji_google_1f93c_200d_2642_fe0f:I

    invoke-direct {v1, v8, v9}, Lcom/vanniktech/emoji/emoji/Emoji;-><init>([II)V

    const/16 v8, 0x1b

    aput-object v1, v0, v8

    new-instance v1, Lcom/vanniktech/emoji/emoji/Emoji;

    new-array v8, v6, [I

    fill-array-data v8, :array_12

    sget v9, Lcom/vanniktech/emoji/google/R$drawable;->emoji_google_1f938_200d_2640_fe0f:I

    new-array v10, v7, [Lcom/vanniktech/emoji/emoji/Emoji;

    new-instance v11, Lcom/vanniktech/emoji/emoji/Emoji;

    new-array v12, v7, [I

    fill-array-data v12, :array_13

    sget v13, Lcom/vanniktech/emoji/google/R$drawable;->emoji_google_1f938_1f3fb_200d_2640_fe0f:I

    invoke-direct {v11, v12, v13}, Lcom/vanniktech/emoji/emoji/Emoji;-><init>([II)V

    aput-object v11, v10, v2

    new-instance v11, Lcom/vanniktech/emoji/emoji/Emoji;

    new-array v12, v7, [I

    fill-array-data v12, :array_14

    sget v13, Lcom/vanniktech/emoji/google/R$drawable;->emoji_google_1f938_1f3fc_200d_2640_fe0f:I

    invoke-direct {v11, v12, v13}, Lcom/vanniktech/emoji/emoji/Emoji;-><init>([II)V

    aput-object v11, v10, v3

    new-instance v11, Lcom/vanniktech/emoji/emoji/Emoji;

    new-array v12, v7, [I

    fill-array-data v12, :array_15

    sget v13, Lcom/vanniktech/emoji/google/R$drawable;->emoji_google_1f938_1f3fd_200d_2640_fe0f:I

    invoke-direct {v11, v12, v13}, Lcom/vanniktech/emoji/emoji/Emoji;-><init>([II)V

    aput-object v11, v10, v4

    new-instance v11, Lcom/vanniktech/emoji/emoji/Emoji;

    new-array v12, v7, [I

    fill-array-data v12, :array_16

    sget v13, Lcom/vanniktech/emoji/google/R$drawable;->emoji_google_1f938_1f3fe_200d_2640_fe0f:I

    invoke-direct {v11, v12, v13}, Lcom/vanniktech/emoji/emoji/Emoji;-><init>([II)V

    aput-object v11, v10, v5

    new-instance v11, Lcom/vanniktech/emoji/emoji/Emoji;

    new-array v12, v7, [I

    fill-array-data v12, :array_17

    sget v13, Lcom/vanniktech/emoji/google/R$drawable;->emoji_google_1f938_1f3ff_200d_2640_fe0f:I

    invoke-direct {v11, v12, v13}, Lcom/vanniktech/emoji/emoji/Emoji;-><init>([II)V

    aput-object v11, v10, v6

    invoke-direct {v1, v8, v9, v10}, Lcom/vanniktech/emoji/emoji/Emoji;-><init>([II[Lcom/vanniktech/emoji/emoji/Emoji;)V

    const/16 v8, 0x1c

    aput-object v1, v0, v8

    new-instance v1, Lcom/vanniktech/emoji/emoji/Emoji;

    new-array v8, v6, [I

    fill-array-data v8, :array_18

    sget v9, Lcom/vanniktech/emoji/google/R$drawable;->emoji_google_1f938_200d_2642_fe0f:I

    new-array v10, v7, [Lcom/vanniktech/emoji/emoji/Emoji;

    new-instance v11, Lcom/vanniktech/emoji/emoji/Emoji;

    new-array v12, v7, [I

    fill-array-data v12, :array_19

    sget v13, Lcom/vanniktech/emoji/google/R$drawable;->emoji_google_1f938_1f3fb_200d_2642_fe0f:I

    invoke-direct {v11, v12, v13}, Lcom/vanniktech/emoji/emoji/Emoji;-><init>([II)V

    aput-object v11, v10, v2

    new-instance v11, Lcom/vanniktech/emoji/emoji/Emoji;

    new-array v12, v7, [I

    fill-array-data v12, :array_1a

    sget v13, Lcom/vanniktech/emoji/google/R$drawable;->emoji_google_1f938_1f3fc_200d_2642_fe0f:I

    invoke-direct {v11, v12, v13}, Lcom/vanniktech/emoji/emoji/Emoji;-><init>([II)V

    aput-object v11, v10, v3

    new-instance v11, Lcom/vanniktech/emoji/emoji/Emoji;

    new-array v12, v7, [I

    fill-array-data v12, :array_1b

    sget v13, Lcom/vanniktech/emoji/google/R$drawable;->emoji_google_1f938_1f3fd_200d_2642_fe0f:I

    invoke-direct {v11, v12, v13}, Lcom/vanniktech/emoji/emoji/Emoji;-><init>([II)V

    aput-object v11, v10, v4

    new-instance v11, Lcom/vanniktech/emoji/emoji/Emoji;

    new-array v12, v7, [I

    fill-array-data v12, :array_1c

    sget v13, Lcom/vanniktech/emoji/google/R$drawable;->emoji_google_1f938_1f3fe_200d_2642_fe0f:I

    invoke-direct {v11, v12, v13}, Lcom/vanniktech/emoji/emoji/Emoji;-><init>([II)V

    aput-object v11, v10, v5

    new-instance v11, Lcom/vanniktech/emoji/emoji/Emoji;

    new-array v12, v7, [I

    fill-array-data v12, :array_1d

    sget v13, Lcom/vanniktech/emoji/google/R$drawable;->emoji_google_1f938_1f3ff_200d_2642_fe0f:I

    invoke-direct {v11, v12, v13}, Lcom/vanniktech/emoji/emoji/Emoji;-><init>([II)V

    aput-object v11, v10, v6

    invoke-direct {v1, v8, v9, v10}, Lcom/vanniktech/emoji/emoji/Emoji;-><init>([II[Lcom/vanniktech/emoji/emoji/Emoji;)V

    const/16 v8, 0x1d

    aput-object v1, v0, v8

    new-instance v1, Lcom/vanniktech/emoji/emoji/Emoji;

    new-array v8, v7, [I

    fill-array-data v8, :array_1e

    sget v9, Lcom/vanniktech/emoji/google/R$drawable;->emoji_google_26f9_fe0f_200d_2640_fe0f:I

    new-array v10, v7, [Lcom/vanniktech/emoji/emoji/Emoji;

    new-instance v11, Lcom/vanniktech/emoji/emoji/Emoji;

    new-array v12, v7, [I

    fill-array-data v12, :array_1f

    sget v13, Lcom/vanniktech/emoji/google/R$drawable;->emoji_google_26f9_1f3fb_200d_2640_fe0f:I

    invoke-direct {v11, v12, v13}, Lcom/vanniktech/emoji/emoji/Emoji;-><init>([II)V

    aput-object v11, v10, v2

    new-instance v11, Lcom/vanniktech/emoji/emoji/Emoji;

    new-array v12, v7, [I

    fill-array-data v12, :array_20

    sget v13, Lcom/vanniktech/emoji/google/R$drawable;->emoji_google_26f9_1f3fc_200d_2640_fe0f:I

    invoke-direct {v11, v12, v13}, Lcom/vanniktech/emoji/emoji/Emoji;-><init>([II)V

    aput-object v11, v10, v3

    new-instance v11, Lcom/vanniktech/emoji/emoji/Emoji;

    new-array v12, v7, [I

    fill-array-data v12, :array_21

    sget v13, Lcom/vanniktech/emoji/google/R$drawable;->emoji_google_26f9_1f3fd_200d_2640_fe0f:I

    invoke-direct {v11, v12, v13}, Lcom/vanniktech/emoji/emoji/Emoji;-><init>([II)V

    aput-object v11, v10, v4

    new-instance v11, Lcom/vanniktech/emoji/emoji/Emoji;

    new-array v12, v7, [I

    fill-array-data v12, :array_22

    sget v13, Lcom/vanniktech/emoji/google/R$drawable;->emoji_google_26f9_1f3fe_200d_2640_fe0f:I

    invoke-direct {v11, v12, v13}, Lcom/vanniktech/emoji/emoji/Emoji;-><init>([II)V

    aput-object v11, v10, v5

    new-instance v11, Lcom/vanniktech/emoji/emoji/Emoji;

    new-array v12, v7, [I

    fill-array-data v12, :array_23

    sget v13, Lcom/vanniktech/emoji/google/R$drawable;->emoji_google_26f9_1f3ff_200d_2640_fe0f:I

    invoke-direct {v11, v12, v13}, Lcom/vanniktech/emoji/emoji/Emoji;-><init>([II)V

    aput-object v11, v10, v6

    invoke-direct {v1, v8, v9, v10}, Lcom/vanniktech/emoji/emoji/Emoji;-><init>([II[Lcom/vanniktech/emoji/emoji/Emoji;)V

    const/16 v8, 0x1e

    aput-object v1, v0, v8

    new-instance v1, Lcom/vanniktech/emoji/emoji/Emoji;

    sget v8, Lcom/vanniktech/emoji/google/R$drawable;->emoji_google_26f9:I

    new-array v9, v7, [Lcom/vanniktech/emoji/emoji/Emoji;

    new-instance v10, Lcom/vanniktech/emoji/emoji/Emoji;

    new-array v11, v4, [I

    fill-array-data v11, :array_24

    sget v12, Lcom/vanniktech/emoji/google/R$drawable;->emoji_google_26f9_1f3fb:I

    invoke-direct {v10, v11, v12}, Lcom/vanniktech/emoji/emoji/Emoji;-><init>([II)V

    aput-object v10, v9, v2

    new-instance v10, Lcom/vanniktech/emoji/emoji/Emoji;

    new-array v11, v4, [I

    fill-array-data v11, :array_25

    sget v12, Lcom/vanniktech/emoji/google/R$drawable;->emoji_google_26f9_1f3fc:I

    invoke-direct {v10, v11, v12}, Lcom/vanniktech/emoji/emoji/Emoji;-><init>([II)V

    aput-object v10, v9, v3

    new-instance v10, Lcom/vanniktech/emoji/emoji/Emoji;

    new-array v11, v4, [I

    fill-array-data v11, :array_26

    sget v12, Lcom/vanniktech/emoji/google/R$drawable;->emoji_google_26f9_1f3fd:I

    invoke-direct {v10, v11, v12}, Lcom/vanniktech/emoji/emoji/Emoji;-><init>([II)V

    aput-object v10, v9, v4

    new-instance v10, Lcom/vanniktech/emoji/emoji/Emoji;

    new-array v11, v4, [I

    fill-array-data v11, :array_27

    sget v12, Lcom/vanniktech/emoji/google/R$drawable;->emoji_google_26f9_1f3fe:I

    invoke-direct {v10, v11, v12}, Lcom/vanniktech/emoji/emoji/Emoji;-><init>([II)V

    aput-object v10, v9, v5

    new-instance v10, Lcom/vanniktech/emoji/emoji/Emoji;

    new-array v11, v4, [I

    fill-array-data v11, :array_28

    sget v12, Lcom/vanniktech/emoji/google/R$drawable;->emoji_google_26f9_1f3ff:I

    invoke-direct {v10, v11, v12}, Lcom/vanniktech/emoji/emoji/Emoji;-><init>([II)V

    aput-object v10, v9, v6

    const/16 v10, 0x26f9

    invoke-direct {v1, v10, v8, v9}, Lcom/vanniktech/emoji/emoji/Emoji;-><init>(II[Lcom/vanniktech/emoji/emoji/Emoji;)V

    const/16 v8, 0x1f

    aput-object v1, v0, v8

    new-instance v1, Lcom/vanniktech/emoji/emoji/Emoji;

    new-array v8, v6, [I

    fill-array-data v8, :array_29

    sget v9, Lcom/vanniktech/emoji/google/R$drawable;->emoji_google_1f93e_200d_2640_fe0f:I

    new-array v10, v7, [Lcom/vanniktech/emoji/emoji/Emoji;

    new-instance v11, Lcom/vanniktech/emoji/emoji/Emoji;

    new-array v12, v7, [I

    fill-array-data v12, :array_2a

    sget v13, Lcom/vanniktech/emoji/google/R$drawable;->emoji_google_1f93e_1f3fb_200d_2640_fe0f:I

    invoke-direct {v11, v12, v13}, Lcom/vanniktech/emoji/emoji/Emoji;-><init>([II)V

    aput-object v11, v10, v2

    new-instance v11, Lcom/vanniktech/emoji/emoji/Emoji;

    new-array v12, v7, [I

    fill-array-data v12, :array_2b

    sget v13, Lcom/vanniktech/emoji/google/R$drawable;->emoji_google_1f93e_1f3fc_200d_2640_fe0f:I

    invoke-direct {v11, v12, v13}, Lcom/vanniktech/emoji/emoji/Emoji;-><init>([II)V

    aput-object v11, v10, v3

    new-instance v11, Lcom/vanniktech/emoji/emoji/Emoji;

    new-array v12, v7, [I

    fill-array-data v12, :array_2c

    sget v13, Lcom/vanniktech/emoji/google/R$drawable;->emoji_google_1f93e_1f3fd_200d_2640_fe0f:I

    invoke-direct {v11, v12, v13}, Lcom/vanniktech/emoji/emoji/Emoji;-><init>([II)V

    aput-object v11, v10, v4

    new-instance v11, Lcom/vanniktech/emoji/emoji/Emoji;

    new-array v12, v7, [I

    fill-array-data v12, :array_2d

    sget v13, Lcom/vanniktech/emoji/google/R$drawable;->emoji_google_1f93e_1f3fe_200d_2640_fe0f:I

    invoke-direct {v11, v12, v13}, Lcom/vanniktech/emoji/emoji/Emoji;-><init>([II)V

    aput-object v11, v10, v5

    new-instance v11, Lcom/vanniktech/emoji/emoji/Emoji;

    new-array v12, v7, [I

    fill-array-data v12, :array_2e

    sget v13, Lcom/vanniktech/emoji/google/R$drawable;->emoji_google_1f93e_1f3ff_200d_2640_fe0f:I

    invoke-direct {v11, v12, v13}, Lcom/vanniktech/emoji/emoji/Emoji;-><init>([II)V

    aput-object v11, v10, v6

    invoke-direct {v1, v8, v9, v10}, Lcom/vanniktech/emoji/emoji/Emoji;-><init>([II[Lcom/vanniktech/emoji/emoji/Emoji;)V

    const/16 v8, 0x20

    aput-object v1, v0, v8

    new-instance v1, Lcom/vanniktech/emoji/emoji/Emoji;

    new-array v8, v6, [I

    fill-array-data v8, :array_2f

    sget v9, Lcom/vanniktech/emoji/google/R$drawable;->emoji_google_1f93e_200d_2642_fe0f:I

    new-array v10, v7, [Lcom/vanniktech/emoji/emoji/Emoji;

    new-instance v11, Lcom/vanniktech/emoji/emoji/Emoji;

    new-array v12, v7, [I

    fill-array-data v12, :array_30

    sget v13, Lcom/vanniktech/emoji/google/R$drawable;->emoji_google_1f93e_1f3fb_200d_2642_fe0f:I

    invoke-direct {v11, v12, v13}, Lcom/vanniktech/emoji/emoji/Emoji;-><init>([II)V

    aput-object v11, v10, v2

    new-instance v11, Lcom/vanniktech/emoji/emoji/Emoji;

    new-array v12, v7, [I

    fill-array-data v12, :array_31

    sget v13, Lcom/vanniktech/emoji/google/R$drawable;->emoji_google_1f93e_1f3fc_200d_2642_fe0f:I

    invoke-direct {v11, v12, v13}, Lcom/vanniktech/emoji/emoji/Emoji;-><init>([II)V

    aput-object v11, v10, v3

    new-instance v11, Lcom/vanniktech/emoji/emoji/Emoji;

    new-array v12, v7, [I

    fill-array-data v12, :array_32

    sget v13, Lcom/vanniktech/emoji/google/R$drawable;->emoji_google_1f93e_1f3fd_200d_2642_fe0f:I

    invoke-direct {v11, v12, v13}, Lcom/vanniktech/emoji/emoji/Emoji;-><init>([II)V

    aput-object v11, v10, v4

    new-instance v11, Lcom/vanniktech/emoji/emoji/Emoji;

    new-array v12, v7, [I

    fill-array-data v12, :array_33

    sget v13, Lcom/vanniktech/emoji/google/R$drawable;->emoji_google_1f93e_1f3fe_200d_2642_fe0f:I

    invoke-direct {v11, v12, v13}, Lcom/vanniktech/emoji/emoji/Emoji;-><init>([II)V

    aput-object v11, v10, v5

    new-instance v11, Lcom/vanniktech/emoji/emoji/Emoji;

    new-array v12, v7, [I

    fill-array-data v12, :array_34

    sget v13, Lcom/vanniktech/emoji/google/R$drawable;->emoji_google_1f93e_1f3ff_200d_2642_fe0f:I

    invoke-direct {v11, v12, v13}, Lcom/vanniktech/emoji/emoji/Emoji;-><init>([II)V

    aput-object v11, v10, v6

    invoke-direct {v1, v8, v9, v10}, Lcom/vanniktech/emoji/emoji/Emoji;-><init>([II[Lcom/vanniktech/emoji/emoji/Emoji;)V

    const/16 v8, 0x21

    aput-object v1, v0, v8

    new-instance v1, Lcom/vanniktech/emoji/emoji/Emoji;

    new-array v8, v7, [I

    fill-array-data v8, :array_35

    sget v9, Lcom/vanniktech/emoji/google/R$drawable;->emoji_google_1f3cc_fe0f_200d_2640_fe0f:I

    new-array v10, v7, [Lcom/vanniktech/emoji/emoji/Emoji;

    new-instance v11, Lcom/vanniktech/emoji/emoji/Emoji;

    new-array v12, v7, [I

    fill-array-data v12, :array_36

    sget v13, Lcom/vanniktech/emoji/google/R$drawable;->emoji_google_1f3cc_1f3fb_200d_2640_fe0f:I

    invoke-direct {v11, v12, v13}, Lcom/vanniktech/emoji/emoji/Emoji;-><init>([II)V

    aput-object v11, v10, v2

    new-instance v11, Lcom/vanniktech/emoji/emoji/Emoji;

    new-array v12, v7, [I

    fill-array-data v12, :array_37

    sget v13, Lcom/vanniktech/emoji/google/R$drawable;->emoji_google_1f3cc_1f3fc_200d_2640_fe0f:I

    invoke-direct {v11, v12, v13}, Lcom/vanniktech/emoji/emoji/Emoji;-><init>([II)V

    aput-object v11, v10, v3

    new-instance v11, Lcom/vanniktech/emoji/emoji/Emoji;

    new-array v12, v7, [I

    fill-array-data v12, :array_38

    sget v13, Lcom/vanniktech/emoji/google/R$drawable;->emoji_google_1f3cc_1f3fd_200d_2640_fe0f:I

    invoke-direct {v11, v12, v13}, Lcom/vanniktech/emoji/emoji/Emoji;-><init>([II)V

    aput-object v11, v10, v4

    new-instance v11, Lcom/vanniktech/emoji/emoji/Emoji;

    new-array v12, v7, [I

    fill-array-data v12, :array_39

    sget v13, Lcom/vanniktech/emoji/google/R$drawable;->emoji_google_1f3cc_1f3fe_200d_2640_fe0f:I

    invoke-direct {v11, v12, v13}, Lcom/vanniktech/emoji/emoji/Emoji;-><init>([II)V

    aput-object v11, v10, v5

    new-instance v11, Lcom/vanniktech/emoji/emoji/Emoji;

    new-array v12, v7, [I

    fill-array-data v12, :array_3a

    sget v13, Lcom/vanniktech/emoji/google/R$drawable;->emoji_google_1f3cc_1f3ff_200d_2640_fe0f:I

    invoke-direct {v11, v12, v13}, Lcom/vanniktech/emoji/emoji/Emoji;-><init>([II)V

    aput-object v11, v10, v6

    invoke-direct {v1, v8, v9, v10}, Lcom/vanniktech/emoji/emoji/Emoji;-><init>([II[Lcom/vanniktech/emoji/emoji/Emoji;)V

    const/16 v8, 0x22

    aput-object v1, v0, v8

    new-instance v1, Lcom/vanniktech/emoji/emoji/Emoji;

    sget v8, Lcom/vanniktech/emoji/google/R$drawable;->emoji_google_1f3cc:I

    new-array v9, v7, [Lcom/vanniktech/emoji/emoji/Emoji;

    new-instance v10, Lcom/vanniktech/emoji/emoji/Emoji;

    new-array v11, v4, [I

    fill-array-data v11, :array_3b

    sget v12, Lcom/vanniktech/emoji/google/R$drawable;->emoji_google_1f3cc_1f3fb:I

    invoke-direct {v10, v11, v12}, Lcom/vanniktech/emoji/emoji/Emoji;-><init>([II)V

    aput-object v10, v9, v2

    new-instance v10, Lcom/vanniktech/emoji/emoji/Emoji;

    new-array v11, v4, [I

    fill-array-data v11, :array_3c

    sget v12, Lcom/vanniktech/emoji/google/R$drawable;->emoji_google_1f3cc_1f3fc:I

    invoke-direct {v10, v11, v12}, Lcom/vanniktech/emoji/emoji/Emoji;-><init>([II)V

    aput-object v10, v9, v3

    new-instance v10, Lcom/vanniktech/emoji/emoji/Emoji;

    new-array v11, v4, [I

    fill-array-data v11, :array_3d

    sget v12, Lcom/vanniktech/emoji/google/R$drawable;->emoji_google_1f3cc_1f3fd:I

    invoke-direct {v10, v11, v12}, Lcom/vanniktech/emoji/emoji/Emoji;-><init>([II)V

    aput-object v10, v9, v4

    new-instance v10, Lcom/vanniktech/emoji/emoji/Emoji;

    new-array v11, v4, [I

    fill-array-data v11, :array_3e

    sget v12, Lcom/vanniktech/emoji/google/R$drawable;->emoji_google_1f3cc_1f3fe:I

    invoke-direct {v10, v11, v12}, Lcom/vanniktech/emoji/emoji/Emoji;-><init>([II)V

    aput-object v10, v9, v5

    new-instance v10, Lcom/vanniktech/emoji/emoji/Emoji;

    new-array v11, v4, [I

    fill-array-data v11, :array_3f

    sget v12, Lcom/vanniktech/emoji/google/R$drawable;->emoji_google_1f3cc_1f3ff:I

    invoke-direct {v10, v11, v12}, Lcom/vanniktech/emoji/emoji/Emoji;-><init>([II)V

    aput-object v10, v9, v6

    const v10, 0x1f3cc

    invoke-direct {v1, v10, v8, v9}, Lcom/vanniktech/emoji/emoji/Emoji;-><init>(II[Lcom/vanniktech/emoji/emoji/Emoji;)V

    const/16 v8, 0x23

    aput-object v1, v0, v8

    new-instance v1, Lcom/vanniktech/emoji/emoji/Emoji;

    new-array v8, v6, [I

    fill-array-data v8, :array_40

    sget v9, Lcom/vanniktech/emoji/google/R$drawable;->emoji_google_1f3c4_200d_2640_fe0f:I

    new-array v10, v7, [Lcom/vanniktech/emoji/emoji/Emoji;

    new-instance v11, Lcom/vanniktech/emoji/emoji/Emoji;

    new-array v12, v7, [I

    fill-array-data v12, :array_41

    sget v13, Lcom/vanniktech/emoji/google/R$drawable;->emoji_google_1f3c4_1f3fb_200d_2640_fe0f:I

    invoke-direct {v11, v12, v13}, Lcom/vanniktech/emoji/emoji/Emoji;-><init>([II)V

    aput-object v11, v10, v2

    new-instance v11, Lcom/vanniktech/emoji/emoji/Emoji;

    new-array v12, v7, [I

    fill-array-data v12, :array_42

    sget v13, Lcom/vanniktech/emoji/google/R$drawable;->emoji_google_1f3c4_1f3fc_200d_2640_fe0f:I

    invoke-direct {v11, v12, v13}, Lcom/vanniktech/emoji/emoji/Emoji;-><init>([II)V

    aput-object v11, v10, v3

    new-instance v11, Lcom/vanniktech/emoji/emoji/Emoji;

    new-array v12, v7, [I

    fill-array-data v12, :array_43

    sget v13, Lcom/vanniktech/emoji/google/R$drawable;->emoji_google_1f3c4_1f3fd_200d_2640_fe0f:I

    invoke-direct {v11, v12, v13}, Lcom/vanniktech/emoji/emoji/Emoji;-><init>([II)V

    aput-object v11, v10, v4

    new-instance v11, Lcom/vanniktech/emoji/emoji/Emoji;

    new-array v12, v7, [I

    fill-array-data v12, :array_44

    sget v13, Lcom/vanniktech/emoji/google/R$drawable;->emoji_google_1f3c4_1f3fe_200d_2640_fe0f:I

    invoke-direct {v11, v12, v13}, Lcom/vanniktech/emoji/emoji/Emoji;-><init>([II)V

    aput-object v11, v10, v5

    new-instance v11, Lcom/vanniktech/emoji/emoji/Emoji;

    new-array v12, v7, [I

    fill-array-data v12, :array_45

    sget v13, Lcom/vanniktech/emoji/google/R$drawable;->emoji_google_1f3c4_1f3ff_200d_2640_fe0f:I

    invoke-direct {v11, v12, v13}, Lcom/vanniktech/emoji/emoji/Emoji;-><init>([II)V

    aput-object v11, v10, v6

    invoke-direct {v1, v8, v9, v10}, Lcom/vanniktech/emoji/emoji/Emoji;-><init>([II[Lcom/vanniktech/emoji/emoji/Emoji;)V

    const/16 v8, 0x24

    aput-object v1, v0, v8

    new-instance v1, Lcom/vanniktech/emoji/emoji/Emoji;

    sget v8, Lcom/vanniktech/emoji/google/R$drawable;->emoji_google_1f3c4:I

    new-array v9, v7, [Lcom/vanniktech/emoji/emoji/Emoji;

    new-instance v10, Lcom/vanniktech/emoji/emoji/Emoji;

    new-array v11, v4, [I

    fill-array-data v11, :array_46

    sget v12, Lcom/vanniktech/emoji/google/R$drawable;->emoji_google_1f3c4_1f3fb:I

    invoke-direct {v10, v11, v12}, Lcom/vanniktech/emoji/emoji/Emoji;-><init>([II)V

    aput-object v10, v9, v2

    new-instance v10, Lcom/vanniktech/emoji/emoji/Emoji;

    new-array v11, v4, [I

    fill-array-data v11, :array_47

    sget v12, Lcom/vanniktech/emoji/google/R$drawable;->emoji_google_1f3c4_1f3fc:I

    invoke-direct {v10, v11, v12}, Lcom/vanniktech/emoji/emoji/Emoji;-><init>([II)V

    aput-object v10, v9, v3

    new-instance v10, Lcom/vanniktech/emoji/emoji/Emoji;

    new-array v11, v4, [I

    fill-array-data v11, :array_48

    sget v12, Lcom/vanniktech/emoji/google/R$drawable;->emoji_google_1f3c4_1f3fd:I

    invoke-direct {v10, v11, v12}, Lcom/vanniktech/emoji/emoji/Emoji;-><init>([II)V

    aput-object v10, v9, v4

    new-instance v10, Lcom/vanniktech/emoji/emoji/Emoji;

    new-array v11, v4, [I

    fill-array-data v11, :array_49

    sget v12, Lcom/vanniktech/emoji/google/R$drawable;->emoji_google_1f3c4_1f3fe:I

    invoke-direct {v10, v11, v12}, Lcom/vanniktech/emoji/emoji/Emoji;-><init>([II)V

    aput-object v10, v9, v5

    new-instance v10, Lcom/vanniktech/emoji/emoji/Emoji;

    new-array v11, v4, [I

    fill-array-data v11, :array_4a

    sget v12, Lcom/vanniktech/emoji/google/R$drawable;->emoji_google_1f3c4_1f3ff:I

    invoke-direct {v10, v11, v12}, Lcom/vanniktech/emoji/emoji/Emoji;-><init>([II)V

    aput-object v10, v9, v6

    const v10, 0x1f3c4

    invoke-direct {v1, v10, v8, v9}, Lcom/vanniktech/emoji/emoji/Emoji;-><init>(II[Lcom/vanniktech/emoji/emoji/Emoji;)V

    const/16 v8, 0x25

    aput-object v1, v0, v8

    new-instance v1, Lcom/vanniktech/emoji/emoji/Emoji;

    new-array v8, v6, [I

    fill-array-data v8, :array_4b

    sget v9, Lcom/vanniktech/emoji/google/R$drawable;->emoji_google_1f3ca_200d_2640_fe0f:I

    new-array v10, v7, [Lcom/vanniktech/emoji/emoji/Emoji;

    new-instance v11, Lcom/vanniktech/emoji/emoji/Emoji;

    new-array v12, v7, [I

    fill-array-data v12, :array_4c

    sget v13, Lcom/vanniktech/emoji/google/R$drawable;->emoji_google_1f3ca_1f3fb_200d_2640_fe0f:I

    invoke-direct {v11, v12, v13}, Lcom/vanniktech/emoji/emoji/Emoji;-><init>([II)V

    aput-object v11, v10, v2

    new-instance v11, Lcom/vanniktech/emoji/emoji/Emoji;

    new-array v12, v7, [I

    fill-array-data v12, :array_4d

    sget v13, Lcom/vanniktech/emoji/google/R$drawable;->emoji_google_1f3ca_1f3fc_200d_2640_fe0f:I

    invoke-direct {v11, v12, v13}, Lcom/vanniktech/emoji/emoji/Emoji;-><init>([II)V

    aput-object v11, v10, v3

    new-instance v11, Lcom/vanniktech/emoji/emoji/Emoji;

    new-array v12, v7, [I

    fill-array-data v12, :array_4e

    sget v13, Lcom/vanniktech/emoji/google/R$drawable;->emoji_google_1f3ca_1f3fd_200d_2640_fe0f:I

    invoke-direct {v11, v12, v13}, Lcom/vanniktech/emoji/emoji/Emoji;-><init>([II)V

    aput-object v11, v10, v4

    new-instance v11, Lcom/vanniktech/emoji/emoji/Emoji;

    new-array v12, v7, [I

    fill-array-data v12, :array_4f

    sget v13, Lcom/vanniktech/emoji/google/R$drawable;->emoji_google_1f3ca_1f3fe_200d_2640_fe0f:I

    invoke-direct {v11, v12, v13}, Lcom/vanniktech/emoji/emoji/Emoji;-><init>([II)V

    aput-object v11, v10, v5

    new-instance v11, Lcom/vanniktech/emoji/emoji/Emoji;

    new-array v12, v7, [I

    fill-array-data v12, :array_50

    sget v13, Lcom/vanniktech/emoji/google/R$drawable;->emoji_google_1f3ca_1f3ff_200d_2640_fe0f:I

    invoke-direct {v11, v12, v13}, Lcom/vanniktech/emoji/emoji/Emoji;-><init>([II)V

    aput-object v11, v10, v6

    invoke-direct {v1, v8, v9, v10}, Lcom/vanniktech/emoji/emoji/Emoji;-><init>([II[Lcom/vanniktech/emoji/emoji/Emoji;)V

    const/16 v8, 0x26

    aput-object v1, v0, v8

    new-instance v1, Lcom/vanniktech/emoji/emoji/Emoji;

    sget v8, Lcom/vanniktech/emoji/google/R$drawable;->emoji_google_1f3ca:I

    new-array v9, v7, [Lcom/vanniktech/emoji/emoji/Emoji;

    new-instance v10, Lcom/vanniktech/emoji/emoji/Emoji;

    new-array v11, v4, [I

    fill-array-data v11, :array_51

    sget v12, Lcom/vanniktech/emoji/google/R$drawable;->emoji_google_1f3ca_1f3fb:I

    invoke-direct {v10, v11, v12}, Lcom/vanniktech/emoji/emoji/Emoji;-><init>([II)V

    aput-object v10, v9, v2

    new-instance v10, Lcom/vanniktech/emoji/emoji/Emoji;

    new-array v11, v4, [I

    fill-array-data v11, :array_52

    sget v12, Lcom/vanniktech/emoji/google/R$drawable;->emoji_google_1f3ca_1f3fc:I

    invoke-direct {v10, v11, v12}, Lcom/vanniktech/emoji/emoji/Emoji;-><init>([II)V

    aput-object v10, v9, v3

    new-instance v10, Lcom/vanniktech/emoji/emoji/Emoji;

    new-array v11, v4, [I

    fill-array-data v11, :array_53

    sget v12, Lcom/vanniktech/emoji/google/R$drawable;->emoji_google_1f3ca_1f3fd:I

    invoke-direct {v10, v11, v12}, Lcom/vanniktech/emoji/emoji/Emoji;-><init>([II)V

    aput-object v10, v9, v4

    new-instance v10, Lcom/vanniktech/emoji/emoji/Emoji;

    new-array v11, v4, [I

    fill-array-data v11, :array_54

    sget v12, Lcom/vanniktech/emoji/google/R$drawable;->emoji_google_1f3ca_1f3fe:I

    invoke-direct {v10, v11, v12}, Lcom/vanniktech/emoji/emoji/Emoji;-><init>([II)V

    aput-object v10, v9, v5

    new-instance v10, Lcom/vanniktech/emoji/emoji/Emoji;

    new-array v11, v4, [I

    fill-array-data v11, :array_55

    sget v12, Lcom/vanniktech/emoji/google/R$drawable;->emoji_google_1f3ca_1f3ff:I

    invoke-direct {v10, v11, v12}, Lcom/vanniktech/emoji/emoji/Emoji;-><init>([II)V

    aput-object v10, v9, v6

    const v10, 0x1f3ca

    invoke-direct {v1, v10, v8, v9}, Lcom/vanniktech/emoji/emoji/Emoji;-><init>(II[Lcom/vanniktech/emoji/emoji/Emoji;)V

    const/16 v8, 0x27

    aput-object v1, v0, v8

    new-instance v1, Lcom/vanniktech/emoji/emoji/Emoji;

    new-array v8, v6, [I

    fill-array-data v8, :array_56

    sget v9, Lcom/vanniktech/emoji/google/R$drawable;->emoji_google_1f93d_200d_2640_fe0f:I

    new-array v10, v7, [Lcom/vanniktech/emoji/emoji/Emoji;

    new-instance v11, Lcom/vanniktech/emoji/emoji/Emoji;

    new-array v12, v7, [I

    fill-array-data v12, :array_57

    sget v13, Lcom/vanniktech/emoji/google/R$drawable;->emoji_google_1f93d_1f3fb_200d_2640_fe0f:I

    invoke-direct {v11, v12, v13}, Lcom/vanniktech/emoji/emoji/Emoji;-><init>([II)V

    aput-object v11, v10, v2

    new-instance v11, Lcom/vanniktech/emoji/emoji/Emoji;

    new-array v12, v7, [I

    fill-array-data v12, :array_58

    sget v13, Lcom/vanniktech/emoji/google/R$drawable;->emoji_google_1f93d_1f3fc_200d_2640_fe0f:I

    invoke-direct {v11, v12, v13}, Lcom/vanniktech/emoji/emoji/Emoji;-><init>([II)V

    aput-object v11, v10, v3

    new-instance v11, Lcom/vanniktech/emoji/emoji/Emoji;

    new-array v12, v7, [I

    fill-array-data v12, :array_59

    sget v13, Lcom/vanniktech/emoji/google/R$drawable;->emoji_google_1f93d_1f3fd_200d_2640_fe0f:I

    invoke-direct {v11, v12, v13}, Lcom/vanniktech/emoji/emoji/Emoji;-><init>([II)V

    aput-object v11, v10, v4

    new-instance v11, Lcom/vanniktech/emoji/emoji/Emoji;

    new-array v12, v7, [I

    fill-array-data v12, :array_5a

    sget v13, Lcom/vanniktech/emoji/google/R$drawable;->emoji_google_1f93d_1f3fe_200d_2640_fe0f:I

    invoke-direct {v11, v12, v13}, Lcom/vanniktech/emoji/emoji/Emoji;-><init>([II)V

    aput-object v11, v10, v5

    new-instance v11, Lcom/vanniktech/emoji/emoji/Emoji;

    new-array v12, v7, [I

    fill-array-data v12, :array_5b

    sget v13, Lcom/vanniktech/emoji/google/R$drawable;->emoji_google_1f93d_1f3ff_200d_2640_fe0f:I

    invoke-direct {v11, v12, v13}, Lcom/vanniktech/emoji/emoji/Emoji;-><init>([II)V

    aput-object v11, v10, v6

    invoke-direct {v1, v8, v9, v10}, Lcom/vanniktech/emoji/emoji/Emoji;-><init>([II[Lcom/vanniktech/emoji/emoji/Emoji;)V

    const/16 v8, 0x28

    aput-object v1, v0, v8

    new-instance v1, Lcom/vanniktech/emoji/emoji/Emoji;

    new-array v8, v6, [I

    fill-array-data v8, :array_5c

    sget v9, Lcom/vanniktech/emoji/google/R$drawable;->emoji_google_1f93d_200d_2642_fe0f:I

    new-array v10, v7, [Lcom/vanniktech/emoji/emoji/Emoji;

    new-instance v11, Lcom/vanniktech/emoji/emoji/Emoji;

    new-array v12, v7, [I

    fill-array-data v12, :array_5d

    sget v13, Lcom/vanniktech/emoji/google/R$drawable;->emoji_google_1f93d_1f3fb_200d_2642_fe0f:I

    invoke-direct {v11, v12, v13}, Lcom/vanniktech/emoji/emoji/Emoji;-><init>([II)V

    aput-object v11, v10, v2

    new-instance v11, Lcom/vanniktech/emoji/emoji/Emoji;

    new-array v12, v7, [I

    fill-array-data v12, :array_5e

    sget v13, Lcom/vanniktech/emoji/google/R$drawable;->emoji_google_1f93d_1f3fc_200d_2642_fe0f:I

    invoke-direct {v11, v12, v13}, Lcom/vanniktech/emoji/emoji/Emoji;-><init>([II)V

    aput-object v11, v10, v3

    new-instance v11, Lcom/vanniktech/emoji/emoji/Emoji;

    new-array v12, v7, [I

    fill-array-data v12, :array_5f

    sget v13, Lcom/vanniktech/emoji/google/R$drawable;->emoji_google_1f93d_1f3fd_200d_2642_fe0f:I

    invoke-direct {v11, v12, v13}, Lcom/vanniktech/emoji/emoji/Emoji;-><init>([II)V

    aput-object v11, v10, v4

    new-instance v11, Lcom/vanniktech/emoji/emoji/Emoji;

    new-array v12, v7, [I

    fill-array-data v12, :array_60

    sget v13, Lcom/vanniktech/emoji/google/R$drawable;->emoji_google_1f93d_1f3fe_200d_2642_fe0f:I

    invoke-direct {v11, v12, v13}, Lcom/vanniktech/emoji/emoji/Emoji;-><init>([II)V

    aput-object v11, v10, v5

    new-instance v11, Lcom/vanniktech/emoji/emoji/Emoji;

    new-array v12, v7, [I

    fill-array-data v12, :array_61

    sget v13, Lcom/vanniktech/emoji/google/R$drawable;->emoji_google_1f93d_1f3ff_200d_2642_fe0f:I

    invoke-direct {v11, v12, v13}, Lcom/vanniktech/emoji/emoji/Emoji;-><init>([II)V

    aput-object v11, v10, v6

    invoke-direct {v1, v8, v9, v10}, Lcom/vanniktech/emoji/emoji/Emoji;-><init>([II[Lcom/vanniktech/emoji/emoji/Emoji;)V

    const/16 v8, 0x29

    aput-object v1, v0, v8

    new-instance v1, Lcom/vanniktech/emoji/emoji/Emoji;

    new-array v8, v6, [I

    fill-array-data v8, :array_62

    sget v9, Lcom/vanniktech/emoji/google/R$drawable;->emoji_google_1f6a3_200d_2640_fe0f:I

    new-array v10, v7, [Lcom/vanniktech/emoji/emoji/Emoji;

    new-instance v11, Lcom/vanniktech/emoji/emoji/Emoji;

    new-array v12, v7, [I

    fill-array-data v12, :array_63

    sget v13, Lcom/vanniktech/emoji/google/R$drawable;->emoji_google_1f6a3_1f3fb_200d_2640_fe0f:I

    invoke-direct {v11, v12, v13}, Lcom/vanniktech/emoji/emoji/Emoji;-><init>([II)V

    aput-object v11, v10, v2

    new-instance v11, Lcom/vanniktech/emoji/emoji/Emoji;

    new-array v12, v7, [I

    fill-array-data v12, :array_64

    sget v13, Lcom/vanniktech/emoji/google/R$drawable;->emoji_google_1f6a3_1f3fc_200d_2640_fe0f:I

    invoke-direct {v11, v12, v13}, Lcom/vanniktech/emoji/emoji/Emoji;-><init>([II)V

    aput-object v11, v10, v3

    new-instance v11, Lcom/vanniktech/emoji/emoji/Emoji;

    new-array v12, v7, [I

    fill-array-data v12, :array_65

    sget v13, Lcom/vanniktech/emoji/google/R$drawable;->emoji_google_1f6a3_1f3fd_200d_2640_fe0f:I

    invoke-direct {v11, v12, v13}, Lcom/vanniktech/emoji/emoji/Emoji;-><init>([II)V

    aput-object v11, v10, v4

    new-instance v11, Lcom/vanniktech/emoji/emoji/Emoji;

    new-array v12, v7, [I

    fill-array-data v12, :array_66

    sget v13, Lcom/vanniktech/emoji/google/R$drawable;->emoji_google_1f6a3_1f3fe_200d_2640_fe0f:I

    invoke-direct {v11, v12, v13}, Lcom/vanniktech/emoji/emoji/Emoji;-><init>([II)V

    aput-object v11, v10, v5

    new-instance v11, Lcom/vanniktech/emoji/emoji/Emoji;

    new-array v12, v7, [I

    fill-array-data v12, :array_67

    sget v13, Lcom/vanniktech/emoji/google/R$drawable;->emoji_google_1f6a3_1f3ff_200d_2640_fe0f:I

    invoke-direct {v11, v12, v13}, Lcom/vanniktech/emoji/emoji/Emoji;-><init>([II)V

    aput-object v11, v10, v6

    invoke-direct {v1, v8, v9, v10}, Lcom/vanniktech/emoji/emoji/Emoji;-><init>([II[Lcom/vanniktech/emoji/emoji/Emoji;)V

    const/16 v8, 0x2a

    aput-object v1, v0, v8

    new-instance v1, Lcom/vanniktech/emoji/emoji/Emoji;

    sget v8, Lcom/vanniktech/emoji/google/R$drawable;->emoji_google_1f6a3:I

    new-array v9, v7, [Lcom/vanniktech/emoji/emoji/Emoji;

    new-instance v10, Lcom/vanniktech/emoji/emoji/Emoji;

    new-array v11, v4, [I

    fill-array-data v11, :array_68

    sget v12, Lcom/vanniktech/emoji/google/R$drawable;->emoji_google_1f6a3_1f3fb:I

    invoke-direct {v10, v11, v12}, Lcom/vanniktech/emoji/emoji/Emoji;-><init>([II)V

    aput-object v10, v9, v2

    new-instance v10, Lcom/vanniktech/emoji/emoji/Emoji;

    new-array v11, v4, [I

    fill-array-data v11, :array_69

    sget v12, Lcom/vanniktech/emoji/google/R$drawable;->emoji_google_1f6a3_1f3fc:I

    invoke-direct {v10, v11, v12}, Lcom/vanniktech/emoji/emoji/Emoji;-><init>([II)V

    aput-object v10, v9, v3

    new-instance v10, Lcom/vanniktech/emoji/emoji/Emoji;

    new-array v11, v4, [I

    fill-array-data v11, :array_6a

    sget v12, Lcom/vanniktech/emoji/google/R$drawable;->emoji_google_1f6a3_1f3fd:I

    invoke-direct {v10, v11, v12}, Lcom/vanniktech/emoji/emoji/Emoji;-><init>([II)V

    aput-object v10, v9, v4

    new-instance v10, Lcom/vanniktech/emoji/emoji/Emoji;

    new-array v11, v4, [I

    fill-array-data v11, :array_6b

    sget v12, Lcom/vanniktech/emoji/google/R$drawable;->emoji_google_1f6a3_1f3fe:I

    invoke-direct {v10, v11, v12}, Lcom/vanniktech/emoji/emoji/Emoji;-><init>([II)V

    aput-object v10, v9, v5

    new-instance v10, Lcom/vanniktech/emoji/emoji/Emoji;

    new-array v11, v4, [I

    fill-array-data v11, :array_6c

    sget v12, Lcom/vanniktech/emoji/google/R$drawable;->emoji_google_1f6a3_1f3ff:I

    invoke-direct {v10, v11, v12}, Lcom/vanniktech/emoji/emoji/Emoji;-><init>([II)V

    aput-object v10, v9, v6

    const v10, 0x1f6a3

    invoke-direct {v1, v10, v8, v9}, Lcom/vanniktech/emoji/emoji/Emoji;-><init>(II[Lcom/vanniktech/emoji/emoji/Emoji;)V

    const/16 v8, 0x2b

    aput-object v1, v0, v8

    new-instance v1, Lcom/vanniktech/emoji/emoji/Emoji;

    sget v8, Lcom/vanniktech/emoji/google/R$drawable;->emoji_google_1f3c7:I

    new-array v9, v7, [Lcom/vanniktech/emoji/emoji/Emoji;

    new-instance v10, Lcom/vanniktech/emoji/emoji/Emoji;

    new-array v11, v4, [I

    fill-array-data v11, :array_6d

    sget v12, Lcom/vanniktech/emoji/google/R$drawable;->emoji_google_1f3c7_1f3fb:I

    invoke-direct {v10, v11, v12}, Lcom/vanniktech/emoji/emoji/Emoji;-><init>([II)V

    aput-object v10, v9, v2

    new-instance v10, Lcom/vanniktech/emoji/emoji/Emoji;

    new-array v11, v4, [I

    fill-array-data v11, :array_6e

    sget v12, Lcom/vanniktech/emoji/google/R$drawable;->emoji_google_1f3c7_1f3fc:I

    invoke-direct {v10, v11, v12}, Lcom/vanniktech/emoji/emoji/Emoji;-><init>([II)V

    aput-object v10, v9, v3

    new-instance v10, Lcom/vanniktech/emoji/emoji/Emoji;

    new-array v11, v4, [I

    fill-array-data v11, :array_6f

    sget v12, Lcom/vanniktech/emoji/google/R$drawable;->emoji_google_1f3c7_1f3fd:I

    invoke-direct {v10, v11, v12}, Lcom/vanniktech/emoji/emoji/Emoji;-><init>([II)V

    aput-object v10, v9, v4

    new-instance v10, Lcom/vanniktech/emoji/emoji/Emoji;

    new-array v11, v4, [I

    fill-array-data v11, :array_70

    sget v12, Lcom/vanniktech/emoji/google/R$drawable;->emoji_google_1f3c7_1f3fe:I

    invoke-direct {v10, v11, v12}, Lcom/vanniktech/emoji/emoji/Emoji;-><init>([II)V

    aput-object v10, v9, v5

    new-instance v10, Lcom/vanniktech/emoji/emoji/Emoji;

    new-array v11, v4, [I

    fill-array-data v11, :array_71

    sget v12, Lcom/vanniktech/emoji/google/R$drawable;->emoji_google_1f3c7_1f3ff:I

    invoke-direct {v10, v11, v12}, Lcom/vanniktech/emoji/emoji/Emoji;-><init>([II)V

    aput-object v10, v9, v6

    const v10, 0x1f3c7

    invoke-direct {v1, v10, v8, v9}, Lcom/vanniktech/emoji/emoji/Emoji;-><init>(II[Lcom/vanniktech/emoji/emoji/Emoji;)V

    const/16 v8, 0x2c

    aput-object v1, v0, v8

    new-instance v1, Lcom/vanniktech/emoji/emoji/Emoji;

    new-array v8, v6, [I

    fill-array-data v8, :array_72

    sget v9, Lcom/vanniktech/emoji/google/R$drawable;->emoji_google_1f6b4_200d_2640_fe0f:I

    new-array v10, v7, [Lcom/vanniktech/emoji/emoji/Emoji;

    new-instance v11, Lcom/vanniktech/emoji/emoji/Emoji;

    new-array v12, v7, [I

    fill-array-data v12, :array_73

    sget v13, Lcom/vanniktech/emoji/google/R$drawable;->emoji_google_1f6b4_1f3fb_200d_2640_fe0f:I

    invoke-direct {v11, v12, v13}, Lcom/vanniktech/emoji/emoji/Emoji;-><init>([II)V

    aput-object v11, v10, v2

    new-instance v11, Lcom/vanniktech/emoji/emoji/Emoji;

    new-array v12, v7, [I

    fill-array-data v12, :array_74

    sget v13, Lcom/vanniktech/emoji/google/R$drawable;->emoji_google_1f6b4_1f3fc_200d_2640_fe0f:I

    invoke-direct {v11, v12, v13}, Lcom/vanniktech/emoji/emoji/Emoji;-><init>([II)V

    aput-object v11, v10, v3

    new-instance v11, Lcom/vanniktech/emoji/emoji/Emoji;

    new-array v12, v7, [I

    fill-array-data v12, :array_75

    sget v13, Lcom/vanniktech/emoji/google/R$drawable;->emoji_google_1f6b4_1f3fd_200d_2640_fe0f:I

    invoke-direct {v11, v12, v13}, Lcom/vanniktech/emoji/emoji/Emoji;-><init>([II)V

    aput-object v11, v10, v4

    new-instance v11, Lcom/vanniktech/emoji/emoji/Emoji;

    new-array v12, v7, [I

    fill-array-data v12, :array_76

    sget v13, Lcom/vanniktech/emoji/google/R$drawable;->emoji_google_1f6b4_1f3fe_200d_2640_fe0f:I

    invoke-direct {v11, v12, v13}, Lcom/vanniktech/emoji/emoji/Emoji;-><init>([II)V

    aput-object v11, v10, v5

    new-instance v11, Lcom/vanniktech/emoji/emoji/Emoji;

    new-array v12, v7, [I

    fill-array-data v12, :array_77

    sget v13, Lcom/vanniktech/emoji/google/R$drawable;->emoji_google_1f6b4_1f3ff_200d_2640_fe0f:I

    invoke-direct {v11, v12, v13}, Lcom/vanniktech/emoji/emoji/Emoji;-><init>([II)V

    aput-object v11, v10, v6

    invoke-direct {v1, v8, v9, v10}, Lcom/vanniktech/emoji/emoji/Emoji;-><init>([II[Lcom/vanniktech/emoji/emoji/Emoji;)V

    const/16 v8, 0x2d

    aput-object v1, v0, v8

    new-instance v1, Lcom/vanniktech/emoji/emoji/Emoji;

    sget v8, Lcom/vanniktech/emoji/google/R$drawable;->emoji_google_1f6b4:I

    new-array v9, v7, [Lcom/vanniktech/emoji/emoji/Emoji;

    new-instance v10, Lcom/vanniktech/emoji/emoji/Emoji;

    new-array v11, v4, [I

    fill-array-data v11, :array_78

    sget v12, Lcom/vanniktech/emoji/google/R$drawable;->emoji_google_1f6b4_1f3fb:I

    invoke-direct {v10, v11, v12}, Lcom/vanniktech/emoji/emoji/Emoji;-><init>([II)V

    aput-object v10, v9, v2

    new-instance v10, Lcom/vanniktech/emoji/emoji/Emoji;

    new-array v11, v4, [I

    fill-array-data v11, :array_79

    sget v12, Lcom/vanniktech/emoji/google/R$drawable;->emoji_google_1f6b4_1f3fc:I

    invoke-direct {v10, v11, v12}, Lcom/vanniktech/emoji/emoji/Emoji;-><init>([II)V

    aput-object v10, v9, v3

    new-instance v10, Lcom/vanniktech/emoji/emoji/Emoji;

    new-array v11, v4, [I

    fill-array-data v11, :array_7a

    sget v12, Lcom/vanniktech/emoji/google/R$drawable;->emoji_google_1f6b4_1f3fd:I

    invoke-direct {v10, v11, v12}, Lcom/vanniktech/emoji/emoji/Emoji;-><init>([II)V

    aput-object v10, v9, v4

    new-instance v10, Lcom/vanniktech/emoji/emoji/Emoji;

    new-array v11, v4, [I

    fill-array-data v11, :array_7b

    sget v12, Lcom/vanniktech/emoji/google/R$drawable;->emoji_google_1f6b4_1f3fe:I

    invoke-direct {v10, v11, v12}, Lcom/vanniktech/emoji/emoji/Emoji;-><init>([II)V

    aput-object v10, v9, v5

    new-instance v10, Lcom/vanniktech/emoji/emoji/Emoji;

    new-array v11, v4, [I

    fill-array-data v11, :array_7c

    sget v12, Lcom/vanniktech/emoji/google/R$drawable;->emoji_google_1f6b4_1f3ff:I

    invoke-direct {v10, v11, v12}, Lcom/vanniktech/emoji/emoji/Emoji;-><init>([II)V

    aput-object v10, v9, v6

    const v10, 0x1f6b4

    invoke-direct {v1, v10, v8, v9}, Lcom/vanniktech/emoji/emoji/Emoji;-><init>(II[Lcom/vanniktech/emoji/emoji/Emoji;)V

    const/16 v8, 0x2e

    aput-object v1, v0, v8

    new-instance v1, Lcom/vanniktech/emoji/emoji/Emoji;

    new-array v8, v6, [I

    fill-array-data v8, :array_7d

    sget v9, Lcom/vanniktech/emoji/google/R$drawable;->emoji_google_1f6b5_200d_2640_fe0f:I

    new-array v10, v7, [Lcom/vanniktech/emoji/emoji/Emoji;

    new-instance v11, Lcom/vanniktech/emoji/emoji/Emoji;

    new-array v12, v7, [I

    fill-array-data v12, :array_7e

    sget v13, Lcom/vanniktech/emoji/google/R$drawable;->emoji_google_1f6b5_1f3fb_200d_2640_fe0f:I

    invoke-direct {v11, v12, v13}, Lcom/vanniktech/emoji/emoji/Emoji;-><init>([II)V

    aput-object v11, v10, v2

    new-instance v11, Lcom/vanniktech/emoji/emoji/Emoji;

    new-array v12, v7, [I

    fill-array-data v12, :array_7f

    sget v13, Lcom/vanniktech/emoji/google/R$drawable;->emoji_google_1f6b5_1f3fc_200d_2640_fe0f:I

    invoke-direct {v11, v12, v13}, Lcom/vanniktech/emoji/emoji/Emoji;-><init>([II)V

    aput-object v11, v10, v3

    new-instance v11, Lcom/vanniktech/emoji/emoji/Emoji;

    new-array v12, v7, [I

    fill-array-data v12, :array_80

    sget v13, Lcom/vanniktech/emoji/google/R$drawable;->emoji_google_1f6b5_1f3fd_200d_2640_fe0f:I

    invoke-direct {v11, v12, v13}, Lcom/vanniktech/emoji/emoji/Emoji;-><init>([II)V

    aput-object v11, v10, v4

    new-instance v11, Lcom/vanniktech/emoji/emoji/Emoji;

    new-array v12, v7, [I

    fill-array-data v12, :array_81

    sget v13, Lcom/vanniktech/emoji/google/R$drawable;->emoji_google_1f6b5_1f3fe_200d_2640_fe0f:I

    invoke-direct {v11, v12, v13}, Lcom/vanniktech/emoji/emoji/Emoji;-><init>([II)V

    aput-object v11, v10, v5

    new-instance v11, Lcom/vanniktech/emoji/emoji/Emoji;

    new-array v12, v7, [I

    fill-array-data v12, :array_82

    sget v13, Lcom/vanniktech/emoji/google/R$drawable;->emoji_google_1f6b5_1f3ff_200d_2640_fe0f:I

    invoke-direct {v11, v12, v13}, Lcom/vanniktech/emoji/emoji/Emoji;-><init>([II)V

    aput-object v11, v10, v6

    invoke-direct {v1, v8, v9, v10}, Lcom/vanniktech/emoji/emoji/Emoji;-><init>([II[Lcom/vanniktech/emoji/emoji/Emoji;)V

    const/16 v8, 0x2f

    aput-object v1, v0, v8

    new-instance v1, Lcom/vanniktech/emoji/emoji/Emoji;

    sget v8, Lcom/vanniktech/emoji/google/R$drawable;->emoji_google_1f6b5:I

    new-array v9, v7, [Lcom/vanniktech/emoji/emoji/Emoji;

    new-instance v10, Lcom/vanniktech/emoji/emoji/Emoji;

    new-array v11, v4, [I

    fill-array-data v11, :array_83

    sget v12, Lcom/vanniktech/emoji/google/R$drawable;->emoji_google_1f6b5_1f3fb:I

    invoke-direct {v10, v11, v12}, Lcom/vanniktech/emoji/emoji/Emoji;-><init>([II)V

    aput-object v10, v9, v2

    new-instance v10, Lcom/vanniktech/emoji/emoji/Emoji;

    new-array v11, v4, [I

    fill-array-data v11, :array_84

    sget v12, Lcom/vanniktech/emoji/google/R$drawable;->emoji_google_1f6b5_1f3fc:I

    invoke-direct {v10, v11, v12}, Lcom/vanniktech/emoji/emoji/Emoji;-><init>([II)V

    aput-object v10, v9, v3

    new-instance v10, Lcom/vanniktech/emoji/emoji/Emoji;

    new-array v11, v4, [I

    fill-array-data v11, :array_85

    sget v12, Lcom/vanniktech/emoji/google/R$drawable;->emoji_google_1f6b5_1f3fd:I

    invoke-direct {v10, v11, v12}, Lcom/vanniktech/emoji/emoji/Emoji;-><init>([II)V

    aput-object v10, v9, v4

    new-instance v10, Lcom/vanniktech/emoji/emoji/Emoji;

    new-array v11, v4, [I

    fill-array-data v11, :array_86

    sget v12, Lcom/vanniktech/emoji/google/R$drawable;->emoji_google_1f6b5_1f3fe:I

    invoke-direct {v10, v11, v12}, Lcom/vanniktech/emoji/emoji/Emoji;-><init>([II)V

    aput-object v10, v9, v5

    new-instance v10, Lcom/vanniktech/emoji/emoji/Emoji;

    new-array v11, v4, [I

    fill-array-data v11, :array_87

    sget v12, Lcom/vanniktech/emoji/google/R$drawable;->emoji_google_1f6b5_1f3ff:I

    invoke-direct {v10, v11, v12}, Lcom/vanniktech/emoji/emoji/Emoji;-><init>([II)V

    aput-object v10, v9, v6

    const v10, 0x1f6b5

    invoke-direct {v1, v10, v8, v9}, Lcom/vanniktech/emoji/emoji/Emoji;-><init>(II[Lcom/vanniktech/emoji/emoji/Emoji;)V

    const/16 v8, 0x30

    aput-object v1, v0, v8

    new-instance v1, Lcom/vanniktech/emoji/emoji/Emoji;

    sget v8, Lcom/vanniktech/emoji/google/R$drawable;->emoji_google_1f3bd:I

    const v9, 0x1f3bd

    invoke-direct {v1, v9, v8}, Lcom/vanniktech/emoji/emoji/Emoji;-><init>(II)V

    const/16 v8, 0x31

    aput-object v1, v0, v8

    new-instance v1, Lcom/vanniktech/emoji/emoji/Emoji;

    sget v8, Lcom/vanniktech/emoji/google/R$drawable;->emoji_google_1f3c5:I

    const v9, 0x1f3c5

    invoke-direct {v1, v9, v8}, Lcom/vanniktech/emoji/emoji/Emoji;-><init>(II)V

    const/16 v8, 0x32

    aput-object v1, v0, v8

    new-instance v1, Lcom/vanniktech/emoji/emoji/Emoji;

    sget v8, Lcom/vanniktech/emoji/google/R$drawable;->emoji_google_1f396:I

    const v9, 0x1f396

    invoke-direct {v1, v9, v8}, Lcom/vanniktech/emoji/emoji/Emoji;-><init>(II)V

    const/16 v8, 0x33

    aput-object v1, v0, v8

    new-instance v1, Lcom/vanniktech/emoji/emoji/Emoji;

    sget v8, Lcom/vanniktech/emoji/google/R$drawable;->emoji_google_1f947:I

    const v9, 0x1f947

    invoke-direct {v1, v9, v8}, Lcom/vanniktech/emoji/emoji/Emoji;-><init>(II)V

    const/16 v8, 0x34

    aput-object v1, v0, v8

    new-instance v1, Lcom/vanniktech/emoji/emoji/Emoji;

    sget v8, Lcom/vanniktech/emoji/google/R$drawable;->emoji_google_1f948:I

    const v9, 0x1f948

    invoke-direct {v1, v9, v8}, Lcom/vanniktech/emoji/emoji/Emoji;-><init>(II)V

    const/16 v8, 0x35

    aput-object v1, v0, v8

    new-instance v1, Lcom/vanniktech/emoji/emoji/Emoji;

    sget v8, Lcom/vanniktech/emoji/google/R$drawable;->emoji_google_1f949:I

    const v9, 0x1f949

    invoke-direct {v1, v9, v8}, Lcom/vanniktech/emoji/emoji/Emoji;-><init>(II)V

    const/16 v8, 0x36

    aput-object v1, v0, v8

    new-instance v1, Lcom/vanniktech/emoji/emoji/Emoji;

    sget v8, Lcom/vanniktech/emoji/google/R$drawable;->emoji_google_1f3c6:I

    const v9, 0x1f3c6

    invoke-direct {v1, v9, v8}, Lcom/vanniktech/emoji/emoji/Emoji;-><init>(II)V

    const/16 v8, 0x37

    aput-object v1, v0, v8

    new-instance v1, Lcom/vanniktech/emoji/emoji/Emoji;

    sget v8, Lcom/vanniktech/emoji/google/R$drawable;->emoji_google_1f3f5:I

    const v9, 0x1f3f5

    invoke-direct {v1, v9, v8}, Lcom/vanniktech/emoji/emoji/Emoji;-><init>(II)V

    const/16 v8, 0x38

    aput-object v1, v0, v8

    new-instance v1, Lcom/vanniktech/emoji/emoji/Emoji;

    sget v8, Lcom/vanniktech/emoji/google/R$drawable;->emoji_google_1f397:I

    const v9, 0x1f397

    invoke-direct {v1, v9, v8}, Lcom/vanniktech/emoji/emoji/Emoji;-><init>(II)V

    const/16 v8, 0x39

    aput-object v1, v0, v8

    new-instance v1, Lcom/vanniktech/emoji/emoji/Emoji;

    sget v8, Lcom/vanniktech/emoji/google/R$drawable;->emoji_google_1f3ab:I

    const v9, 0x1f3ab

    invoke-direct {v1, v9, v8}, Lcom/vanniktech/emoji/emoji/Emoji;-><init>(II)V

    const/16 v8, 0x3a

    aput-object v1, v0, v8

    new-instance v1, Lcom/vanniktech/emoji/emoji/Emoji;

    sget v8, Lcom/vanniktech/emoji/google/R$drawable;->emoji_google_1f39f:I

    const v9, 0x1f39f

    invoke-direct {v1, v9, v8}, Lcom/vanniktech/emoji/emoji/Emoji;-><init>(II)V

    const/16 v8, 0x3b

    aput-object v1, v0, v8

    new-instance v1, Lcom/vanniktech/emoji/emoji/Emoji;

    sget v8, Lcom/vanniktech/emoji/google/R$drawable;->emoji_google_1f3aa:I

    const v9, 0x1f3aa

    invoke-direct {v1, v9, v8}, Lcom/vanniktech/emoji/emoji/Emoji;-><init>(II)V

    const/16 v8, 0x3c

    aput-object v1, v0, v8

    new-instance v1, Lcom/vanniktech/emoji/emoji/Emoji;

    new-array v8, v6, [I

    fill-array-data v8, :array_88

    sget v9, Lcom/vanniktech/emoji/google/R$drawable;->emoji_google_1f939_200d_2640_fe0f:I

    new-array v10, v7, [Lcom/vanniktech/emoji/emoji/Emoji;

    new-instance v11, Lcom/vanniktech/emoji/emoji/Emoji;

    new-array v12, v7, [I

    fill-array-data v12, :array_89

    sget v13, Lcom/vanniktech/emoji/google/R$drawable;->emoji_google_1f939_1f3fb_200d_2640_fe0f:I

    invoke-direct {v11, v12, v13}, Lcom/vanniktech/emoji/emoji/Emoji;-><init>([II)V

    aput-object v11, v10, v2

    new-instance v11, Lcom/vanniktech/emoji/emoji/Emoji;

    new-array v12, v7, [I

    fill-array-data v12, :array_8a

    sget v13, Lcom/vanniktech/emoji/google/R$drawable;->emoji_google_1f939_1f3fc_200d_2640_fe0f:I

    invoke-direct {v11, v12, v13}, Lcom/vanniktech/emoji/emoji/Emoji;-><init>([II)V

    aput-object v11, v10, v3

    new-instance v11, Lcom/vanniktech/emoji/emoji/Emoji;

    new-array v12, v7, [I

    fill-array-data v12, :array_8b

    sget v13, Lcom/vanniktech/emoji/google/R$drawable;->emoji_google_1f939_1f3fd_200d_2640_fe0f:I

    invoke-direct {v11, v12, v13}, Lcom/vanniktech/emoji/emoji/Emoji;-><init>([II)V

    aput-object v11, v10, v4

    new-instance v11, Lcom/vanniktech/emoji/emoji/Emoji;

    new-array v12, v7, [I

    fill-array-data v12, :array_8c

    sget v13, Lcom/vanniktech/emoji/google/R$drawable;->emoji_google_1f939_1f3fe_200d_2640_fe0f:I

    invoke-direct {v11, v12, v13}, Lcom/vanniktech/emoji/emoji/Emoji;-><init>([II)V

    aput-object v11, v10, v5

    new-instance v11, Lcom/vanniktech/emoji/emoji/Emoji;

    new-array v12, v7, [I

    fill-array-data v12, :array_8d

    sget v13, Lcom/vanniktech/emoji/google/R$drawable;->emoji_google_1f939_1f3ff_200d_2640_fe0f:I

    invoke-direct {v11, v12, v13}, Lcom/vanniktech/emoji/emoji/Emoji;-><init>([II)V

    aput-object v11, v10, v6

    invoke-direct {v1, v8, v9, v10}, Lcom/vanniktech/emoji/emoji/Emoji;-><init>([II[Lcom/vanniktech/emoji/emoji/Emoji;)V

    const/16 v8, 0x3d

    aput-object v1, v0, v8

    new-instance v1, Lcom/vanniktech/emoji/emoji/Emoji;

    new-array v8, v6, [I

    fill-array-data v8, :array_8e

    sget v9, Lcom/vanniktech/emoji/google/R$drawable;->emoji_google_1f939_200d_2642_fe0f:I

    new-array v10, v7, [Lcom/vanniktech/emoji/emoji/Emoji;

    new-instance v11, Lcom/vanniktech/emoji/emoji/Emoji;

    new-array v12, v7, [I

    fill-array-data v12, :array_8f

    sget v13, Lcom/vanniktech/emoji/google/R$drawable;->emoji_google_1f939_1f3fb_200d_2642_fe0f:I

    invoke-direct {v11, v12, v13}, Lcom/vanniktech/emoji/emoji/Emoji;-><init>([II)V

    aput-object v11, v10, v2

    new-instance v2, Lcom/vanniktech/emoji/emoji/Emoji;

    new-array v11, v7, [I

    fill-array-data v11, :array_90

    sget v12, Lcom/vanniktech/emoji/google/R$drawable;->emoji_google_1f939_1f3fc_200d_2642_fe0f:I

    invoke-direct {v2, v11, v12}, Lcom/vanniktech/emoji/emoji/Emoji;-><init>([II)V

    aput-object v2, v10, v3

    new-instance v2, Lcom/vanniktech/emoji/emoji/Emoji;

    new-array v3, v7, [I

    fill-array-data v3, :array_91

    sget v11, Lcom/vanniktech/emoji/google/R$drawable;->emoji_google_1f939_1f3fd_200d_2642_fe0f:I

    invoke-direct {v2, v3, v11}, Lcom/vanniktech/emoji/emoji/Emoji;-><init>([II)V

    aput-object v2, v10, v4

    new-instance v2, Lcom/vanniktech/emoji/emoji/Emoji;

    new-array v3, v7, [I

    fill-array-data v3, :array_92

    sget v4, Lcom/vanniktech/emoji/google/R$drawable;->emoji_google_1f939_1f3fe_200d_2642_fe0f:I

    invoke-direct {v2, v3, v4}, Lcom/vanniktech/emoji/emoji/Emoji;-><init>([II)V

    aput-object v2, v10, v5

    new-instance v2, Lcom/vanniktech/emoji/emoji/Emoji;

    new-array v3, v7, [I

    fill-array-data v3, :array_93

    sget v4, Lcom/vanniktech/emoji/google/R$drawable;->emoji_google_1f939_1f3ff_200d_2642_fe0f:I

    invoke-direct {v2, v3, v4}, Lcom/vanniktech/emoji/emoji/Emoji;-><init>([II)V

    aput-object v2, v10, v6

    invoke-direct {v1, v8, v9, v10}, Lcom/vanniktech/emoji/emoji/Emoji;-><init>([II[Lcom/vanniktech/emoji/emoji/Emoji;)V

    const/16 v2, 0x3e

    aput-object v1, v0, v2

    new-instance v1, Lcom/vanniktech/emoji/emoji/Emoji;

    sget v2, Lcom/vanniktech/emoji/google/R$drawable;->emoji_google_1f3ad:I

    const v3, 0x1f3ad

    invoke-direct {v1, v3, v2}, Lcom/vanniktech/emoji/emoji/Emoji;-><init>(II)V

    const/16 v2, 0x3f

    aput-object v1, v0, v2

    new-instance v1, Lcom/vanniktech/emoji/emoji/Emoji;

    sget v2, Lcom/vanniktech/emoji/google/R$drawable;->emoji_google_1f3a8:I

    const v3, 0x1f3a8

    invoke-direct {v1, v3, v2}, Lcom/vanniktech/emoji/emoji/Emoji;-><init>(II)V

    const/16 v2, 0x40

    aput-object v1, v0, v2

    new-instance v1, Lcom/vanniktech/emoji/emoji/Emoji;

    sget v2, Lcom/vanniktech/emoji/google/R$drawable;->emoji_google_1f3ac:I

    const v3, 0x1f3ac

    invoke-direct {v1, v3, v2}, Lcom/vanniktech/emoji/emoji/Emoji;-><init>(II)V

    const/16 v2, 0x41

    aput-object v1, v0, v2

    new-instance v1, Lcom/vanniktech/emoji/emoji/Emoji;

    sget v2, Lcom/vanniktech/emoji/google/R$drawable;->emoji_google_1f3a4:I

    const v3, 0x1f3a4

    invoke-direct {v1, v3, v2}, Lcom/vanniktech/emoji/emoji/Emoji;-><init>(II)V

    const/16 v2, 0x42

    aput-object v1, v0, v2

    new-instance v1, Lcom/vanniktech/emoji/emoji/Emoji;

    sget v2, Lcom/vanniktech/emoji/google/R$drawable;->emoji_google_1f3a7:I

    const v3, 0x1f3a7

    invoke-direct {v1, v3, v2}, Lcom/vanniktech/emoji/emoji/Emoji;-><init>(II)V

    const/16 v2, 0x43

    aput-object v1, v0, v2

    new-instance v1, Lcom/vanniktech/emoji/emoji/Emoji;

    sget v2, Lcom/vanniktech/emoji/google/R$drawable;->emoji_google_1f3bc:I

    const v3, 0x1f3bc

    invoke-direct {v1, v3, v2}, Lcom/vanniktech/emoji/emoji/Emoji;-><init>(II)V

    const/16 v2, 0x44

    aput-object v1, v0, v2

    new-instance v1, Lcom/vanniktech/emoji/emoji/Emoji;

    sget v2, Lcom/vanniktech/emoji/google/R$drawable;->emoji_google_1f3b9:I

    const v3, 0x1f3b9

    invoke-direct {v1, v3, v2}, Lcom/vanniktech/emoji/emoji/Emoji;-><init>(II)V

    const/16 v2, 0x45

    aput-object v1, v0, v2

    new-instance v1, Lcom/vanniktech/emoji/emoji/Emoji;

    sget v2, Lcom/vanniktech/emoji/google/R$drawable;->emoji_google_1f941:I

    const v3, 0x1f941

    invoke-direct {v1, v3, v2}, Lcom/vanniktech/emoji/emoji/Emoji;-><init>(II)V

    const/16 v2, 0x46

    aput-object v1, v0, v2

    new-instance v1, Lcom/vanniktech/emoji/emoji/Emoji;

    sget v2, Lcom/vanniktech/emoji/google/R$drawable;->emoji_google_1f3b7:I

    const v3, 0x1f3b7

    invoke-direct {v1, v3, v2}, Lcom/vanniktech/emoji/emoji/Emoji;-><init>(II)V

    const/16 v2, 0x47

    aput-object v1, v0, v2

    new-instance v1, Lcom/vanniktech/emoji/emoji/Emoji;

    sget v2, Lcom/vanniktech/emoji/google/R$drawable;->emoji_google_1f3ba:I

    const v3, 0x1f3ba

    invoke-direct {v1, v3, v2}, Lcom/vanniktech/emoji/emoji/Emoji;-><init>(II)V

    const/16 v2, 0x48

    aput-object v1, v0, v2

    new-instance v1, Lcom/vanniktech/emoji/emoji/Emoji;

    sget v2, Lcom/vanniktech/emoji/google/R$drawable;->emoji_google_1f3b8:I

    const v3, 0x1f3b8

    invoke-direct {v1, v3, v2}, Lcom/vanniktech/emoji/emoji/Emoji;-><init>(II)V

    const/16 v2, 0x49

    aput-object v1, v0, v2

    new-instance v1, Lcom/vanniktech/emoji/emoji/Emoji;

    sget v2, Lcom/vanniktech/emoji/google/R$drawable;->emoji_google_1f3bb:I

    const v3, 0x1f3bb

    invoke-direct {v1, v3, v2}, Lcom/vanniktech/emoji/emoji/Emoji;-><init>(II)V

    const/16 v2, 0x4a

    aput-object v1, v0, v2

    new-instance v1, Lcom/vanniktech/emoji/emoji/Emoji;

    sget v2, Lcom/vanniktech/emoji/google/R$drawable;->emoji_google_1f3b2:I

    const v3, 0x1f3b2

    invoke-direct {v1, v3, v2}, Lcom/vanniktech/emoji/emoji/Emoji;-><init>(II)V

    const/16 v2, 0x4b

    aput-object v1, v0, v2

    new-instance v1, Lcom/vanniktech/emoji/emoji/Emoji;

    sget v2, Lcom/vanniktech/emoji/google/R$drawable;->emoji_google_1f3af:I

    const v3, 0x1f3af

    invoke-direct {v1, v3, v2}, Lcom/vanniktech/emoji/emoji/Emoji;-><init>(II)V

    const/16 v2, 0x4c

    aput-object v1, v0, v2

    new-instance v1, Lcom/vanniktech/emoji/emoji/Emoji;

    sget v2, Lcom/vanniktech/emoji/google/R$drawable;->emoji_google_1f3b3:I

    const v3, 0x1f3b3

    invoke-direct {v1, v3, v2}, Lcom/vanniktech/emoji/emoji/Emoji;-><init>(II)V

    const/16 v2, 0x4d

    aput-object v1, v0, v2

    new-instance v1, Lcom/vanniktech/emoji/emoji/Emoji;

    sget v2, Lcom/vanniktech/emoji/google/R$drawable;->emoji_google_1f3ae:I

    const v3, 0x1f3ae

    invoke-direct {v1, v3, v2}, Lcom/vanniktech/emoji/emoji/Emoji;-><init>(II)V

    const/16 v2, 0x4e

    aput-object v1, v0, v2

    new-instance v1, Lcom/vanniktech/emoji/emoji/Emoji;

    sget v2, Lcom/vanniktech/emoji/google/R$drawable;->emoji_google_1f3b0:I

    const v3, 0x1f3b0

    invoke-direct {v1, v3, v2}, Lcom/vanniktech/emoji/emoji/Emoji;-><init>(II)V

    const/16 v2, 0x4f

    aput-object v1, v0, v2

    sput-object v0, Lcom/vanniktech/emoji/google/category/ActivityCategory;->DATA:[Lcom/vanniktech/emoji/emoji/Emoji;

    return-void

    nop

    :array_0
    .array-data 4
        0x1f3c2
        0x1f3fb
    .end array-data

    :array_1
    .array-data 4
        0x1f3c2
        0x1f3fc
    .end array-data

    :array_2
    .array-data 4
        0x1f3c2
        0x1f3fd
    .end array-data

    :array_3
    .array-data 4
        0x1f3c2
        0x1f3fe
    .end array-data

    :array_4
    .array-data 4
        0x1f3c2
        0x1f3ff
    .end array-data

    :array_5
    .array-data 4
        0x1f3cb
        0xfe0f
        0x200d
        0x2640
        0xfe0f
    .end array-data

    :array_6
    .array-data 4
        0x1f3cb
        0x1f3fb
        0x200d
        0x2640
        0xfe0f
    .end array-data

    :array_7
    .array-data 4
        0x1f3cb
        0x1f3fc
        0x200d
        0x2640
        0xfe0f
    .end array-data

    :array_8
    .array-data 4
        0x1f3cb
        0x1f3fd
        0x200d
        0x2640
        0xfe0f
    .end array-data

    :array_9
    .array-data 4
        0x1f3cb
        0x1f3fe
        0x200d
        0x2640
        0xfe0f
    .end array-data

    :array_a
    .array-data 4
        0x1f3cb
        0x1f3ff
        0x200d
        0x2640
        0xfe0f
    .end array-data

    :array_b
    .array-data 4
        0x1f3cb
        0x1f3fb
    .end array-data

    :array_c
    .array-data 4
        0x1f3cb
        0x1f3fc
    .end array-data

    :array_d
    .array-data 4
        0x1f3cb
        0x1f3fd
    .end array-data

    :array_e
    .array-data 4
        0x1f3cb
        0x1f3fe
    .end array-data

    :array_f
    .array-data 4
        0x1f3cb
        0x1f3ff
    .end array-data

    :array_10
    .array-data 4
        0x1f93c
        0x200d
        0x2640
        0xfe0f
    .end array-data

    :array_11
    .array-data 4
        0x1f93c
        0x200d
        0x2642
        0xfe0f
    .end array-data

    :array_12
    .array-data 4
        0x1f938
        0x200d
        0x2640
        0xfe0f
    .end array-data

    :array_13
    .array-data 4
        0x1f938
        0x1f3fb
        0x200d
        0x2640
        0xfe0f
    .end array-data

    :array_14
    .array-data 4
        0x1f938
        0x1f3fc
        0x200d
        0x2640
        0xfe0f
    .end array-data

    :array_15
    .array-data 4
        0x1f938
        0x1f3fd
        0x200d
        0x2640
        0xfe0f
    .end array-data

    :array_16
    .array-data 4
        0x1f938
        0x1f3fe
        0x200d
        0x2640
        0xfe0f
    .end array-data

    :array_17
    .array-data 4
        0x1f938
        0x1f3ff
        0x200d
        0x2640
        0xfe0f
    .end array-data

    :array_18
    .array-data 4
        0x1f938
        0x200d
        0x2642
        0xfe0f
    .end array-data

    :array_19
    .array-data 4
        0x1f938
        0x1f3fb
        0x200d
        0x2642
        0xfe0f
    .end array-data

    :array_1a
    .array-data 4
        0x1f938
        0x1f3fc
        0x200d
        0x2642
        0xfe0f
    .end array-data

    :array_1b
    .array-data 4
        0x1f938
        0x1f3fd
        0x200d
        0x2642
        0xfe0f
    .end array-data

    :array_1c
    .array-data 4
        0x1f938
        0x1f3fe
        0x200d
        0x2642
        0xfe0f
    .end array-data

    :array_1d
    .array-data 4
        0x1f938
        0x1f3ff
        0x200d
        0x2642
        0xfe0f
    .end array-data

    :array_1e
    .array-data 4
        0x26f9
        0xfe0f
        0x200d
        0x2640
        0xfe0f
    .end array-data

    :array_1f
    .array-data 4
        0x26f9
        0x1f3fb
        0x200d
        0x2640
        0xfe0f
    .end array-data

    :array_20
    .array-data 4
        0x26f9
        0x1f3fc
        0x200d
        0x2640
        0xfe0f
    .end array-data

    :array_21
    .array-data 4
        0x26f9
        0x1f3fd
        0x200d
        0x2640
        0xfe0f
    .end array-data

    :array_22
    .array-data 4
        0x26f9
        0x1f3fe
        0x200d
        0x2640
        0xfe0f
    .end array-data

    :array_23
    .array-data 4
        0x26f9
        0x1f3ff
        0x200d
        0x2640
        0xfe0f
    .end array-data

    :array_24
    .array-data 4
        0x26f9
        0x1f3fb
    .end array-data

    :array_25
    .array-data 4
        0x26f9
        0x1f3fc
    .end array-data

    :array_26
    .array-data 4
        0x26f9
        0x1f3fd
    .end array-data

    :array_27
    .array-data 4
        0x26f9
        0x1f3fe
    .end array-data

    :array_28
    .array-data 4
        0x26f9
        0x1f3ff
    .end array-data

    :array_29
    .array-data 4
        0x1f93e
        0x200d
        0x2640
        0xfe0f
    .end array-data

    :array_2a
    .array-data 4
        0x1f93e
        0x1f3fb
        0x200d
        0x2640
        0xfe0f
    .end array-data

    :array_2b
    .array-data 4
        0x1f93e
        0x1f3fc
        0x200d
        0x2640
        0xfe0f
    .end array-data

    :array_2c
    .array-data 4
        0x1f93e
        0x1f3fd
        0x200d
        0x2640
        0xfe0f
    .end array-data

    :array_2d
    .array-data 4
        0x1f93e
        0x1f3fe
        0x200d
        0x2640
        0xfe0f
    .end array-data

    :array_2e
    .array-data 4
        0x1f93e
        0x1f3ff
        0x200d
        0x2640
        0xfe0f
    .end array-data

    :array_2f
    .array-data 4
        0x1f93e
        0x200d
        0x2642
        0xfe0f
    .end array-data

    :array_30
    .array-data 4
        0x1f93e
        0x1f3fb
        0x200d
        0x2642
        0xfe0f
    .end array-data

    :array_31
    .array-data 4
        0x1f93e
        0x1f3fc
        0x200d
        0x2642
        0xfe0f
    .end array-data

    :array_32
    .array-data 4
        0x1f93e
        0x1f3fd
        0x200d
        0x2642
        0xfe0f
    .end array-data

    :array_33
    .array-data 4
        0x1f93e
        0x1f3fe
        0x200d
        0x2642
        0xfe0f
    .end array-data

    :array_34
    .array-data 4
        0x1f93e
        0x1f3ff
        0x200d
        0x2642
        0xfe0f
    .end array-data

    :array_35
    .array-data 4
        0x1f3cc
        0xfe0f
        0x200d
        0x2640
        0xfe0f
    .end array-data

    :array_36
    .array-data 4
        0x1f3cc
        0x1f3fb
        0x200d
        0x2640
        0xfe0f
    .end array-data

    :array_37
    .array-data 4
        0x1f3cc
        0x1f3fc
        0x200d
        0x2640
        0xfe0f
    .end array-data

    :array_38
    .array-data 4
        0x1f3cc
        0x1f3fd
        0x200d
        0x2640
        0xfe0f
    .end array-data

    :array_39
    .array-data 4
        0x1f3cc
        0x1f3fe
        0x200d
        0x2640
        0xfe0f
    .end array-data

    :array_3a
    .array-data 4
        0x1f3cc
        0x1f3ff
        0x200d
        0x2640
        0xfe0f
    .end array-data

    :array_3b
    .array-data 4
        0x1f3cc
        0x1f3fb
    .end array-data

    :array_3c
    .array-data 4
        0x1f3cc
        0x1f3fc
    .end array-data

    :array_3d
    .array-data 4
        0x1f3cc
        0x1f3fd
    .end array-data

    :array_3e
    .array-data 4
        0x1f3cc
        0x1f3fe
    .end array-data

    :array_3f
    .array-data 4
        0x1f3cc
        0x1f3ff
    .end array-data

    :array_40
    .array-data 4
        0x1f3c4
        0x200d
        0x2640
        0xfe0f
    .end array-data

    :array_41
    .array-data 4
        0x1f3c4
        0x1f3fb
        0x200d
        0x2640
        0xfe0f
    .end array-data

    :array_42
    .array-data 4
        0x1f3c4
        0x1f3fc
        0x200d
        0x2640
        0xfe0f
    .end array-data

    :array_43
    .array-data 4
        0x1f3c4
        0x1f3fd
        0x200d
        0x2640
        0xfe0f
    .end array-data

    :array_44
    .array-data 4
        0x1f3c4
        0x1f3fe
        0x200d
        0x2640
        0xfe0f
    .end array-data

    :array_45
    .array-data 4
        0x1f3c4
        0x1f3ff
        0x200d
        0x2640
        0xfe0f
    .end array-data

    :array_46
    .array-data 4
        0x1f3c4
        0x1f3fb
    .end array-data

    :array_47
    .array-data 4
        0x1f3c4
        0x1f3fc
    .end array-data

    :array_48
    .array-data 4
        0x1f3c4
        0x1f3fd
    .end array-data

    :array_49
    .array-data 4
        0x1f3c4
        0x1f3fe
    .end array-data

    :array_4a
    .array-data 4
        0x1f3c4
        0x1f3ff
    .end array-data

    :array_4b
    .array-data 4
        0x1f3ca
        0x200d
        0x2640
        0xfe0f
    .end array-data

    :array_4c
    .array-data 4
        0x1f3ca
        0x1f3fb
        0x200d
        0x2640
        0xfe0f
    .end array-data

    :array_4d
    .array-data 4
        0x1f3ca
        0x1f3fc
        0x200d
        0x2640
        0xfe0f
    .end array-data

    :array_4e
    .array-data 4
        0x1f3ca
        0x1f3fd
        0x200d
        0x2640
        0xfe0f
    .end array-data

    :array_4f
    .array-data 4
        0x1f3ca
        0x1f3fe
        0x200d
        0x2640
        0xfe0f
    .end array-data

    :array_50
    .array-data 4
        0x1f3ca
        0x1f3ff
        0x200d
        0x2640
        0xfe0f
    .end array-data

    :array_51
    .array-data 4
        0x1f3ca
        0x1f3fb
    .end array-data

    :array_52
    .array-data 4
        0x1f3ca
        0x1f3fc
    .end array-data

    :array_53
    .array-data 4
        0x1f3ca
        0x1f3fd
    .end array-data

    :array_54
    .array-data 4
        0x1f3ca
        0x1f3fe
    .end array-data

    :array_55
    .array-data 4
        0x1f3ca
        0x1f3ff
    .end array-data

    :array_56
    .array-data 4
        0x1f93d
        0x200d
        0x2640
        0xfe0f
    .end array-data

    :array_57
    .array-data 4
        0x1f93d
        0x1f3fb
        0x200d
        0x2640
        0xfe0f
    .end array-data

    :array_58
    .array-data 4
        0x1f93d
        0x1f3fc
        0x200d
        0x2640
        0xfe0f
    .end array-data

    :array_59
    .array-data 4
        0x1f93d
        0x1f3fd
        0x200d
        0x2640
        0xfe0f
    .end array-data

    :array_5a
    .array-data 4
        0x1f93d
        0x1f3fe
        0x200d
        0x2640
        0xfe0f
    .end array-data

    :array_5b
    .array-data 4
        0x1f93d
        0x1f3ff
        0x200d
        0x2640
        0xfe0f
    .end array-data

    :array_5c
    .array-data 4
        0x1f93d
        0x200d
        0x2642
        0xfe0f
    .end array-data

    :array_5d
    .array-data 4
        0x1f93d
        0x1f3fb
        0x200d
        0x2642
        0xfe0f
    .end array-data

    :array_5e
    .array-data 4
        0x1f93d
        0x1f3fc
        0x200d
        0x2642
        0xfe0f
    .end array-data

    :array_5f
    .array-data 4
        0x1f93d
        0x1f3fd
        0x200d
        0x2642
        0xfe0f
    .end array-data

    :array_60
    .array-data 4
        0x1f93d
        0x1f3fe
        0x200d
        0x2642
        0xfe0f
    .end array-data

    :array_61
    .array-data 4
        0x1f93d
        0x1f3ff
        0x200d
        0x2642
        0xfe0f
    .end array-data

    :array_62
    .array-data 4
        0x1f6a3
        0x200d
        0x2640
        0xfe0f
    .end array-data

    :array_63
    .array-data 4
        0x1f6a3
        0x1f3fb
        0x200d
        0x2640
        0xfe0f
    .end array-data

    :array_64
    .array-data 4
        0x1f6a3
        0x1f3fc
        0x200d
        0x2640
        0xfe0f
    .end array-data

    :array_65
    .array-data 4
        0x1f6a3
        0x1f3fd
        0x200d
        0x2640
        0xfe0f
    .end array-data

    :array_66
    .array-data 4
        0x1f6a3
        0x1f3fe
        0x200d
        0x2640
        0xfe0f
    .end array-data

    :array_67
    .array-data 4
        0x1f6a3
        0x1f3ff
        0x200d
        0x2640
        0xfe0f
    .end array-data

    :array_68
    .array-data 4
        0x1f6a3
        0x1f3fb
    .end array-data

    :array_69
    .array-data 4
        0x1f6a3
        0x1f3fc
    .end array-data

    :array_6a
    .array-data 4
        0x1f6a3
        0x1f3fd
    .end array-data

    :array_6b
    .array-data 4
        0x1f6a3
        0x1f3fe
    .end array-data

    :array_6c
    .array-data 4
        0x1f6a3
        0x1f3ff
    .end array-data

    :array_6d
    .array-data 4
        0x1f3c7
        0x1f3fb
    .end array-data

    :array_6e
    .array-data 4
        0x1f3c7
        0x1f3fc
    .end array-data

    :array_6f
    .array-data 4
        0x1f3c7
        0x1f3fd
    .end array-data

    :array_70
    .array-data 4
        0x1f3c7
        0x1f3fe
    .end array-data

    :array_71
    .array-data 4
        0x1f3c7
        0x1f3ff
    .end array-data

    :array_72
    .array-data 4
        0x1f6b4
        0x200d
        0x2640
        0xfe0f
    .end array-data

    :array_73
    .array-data 4
        0x1f6b4
        0x1f3fb
        0x200d
        0x2640
        0xfe0f
    .end array-data

    :array_74
    .array-data 4
        0x1f6b4
        0x1f3fc
        0x200d
        0x2640
        0xfe0f
    .end array-data

    :array_75
    .array-data 4
        0x1f6b4
        0x1f3fd
        0x200d
        0x2640
        0xfe0f
    .end array-data

    :array_76
    .array-data 4
        0x1f6b4
        0x1f3fe
        0x200d
        0x2640
        0xfe0f
    .end array-data

    :array_77
    .array-data 4
        0x1f6b4
        0x1f3ff
        0x200d
        0x2640
        0xfe0f
    .end array-data

    :array_78
    .array-data 4
        0x1f6b4
        0x1f3fb
    .end array-data

    :array_79
    .array-data 4
        0x1f6b4
        0x1f3fc
    .end array-data

    :array_7a
    .array-data 4
        0x1f6b4
        0x1f3fd
    .end array-data

    :array_7b
    .array-data 4
        0x1f6b4
        0x1f3fe
    .end array-data

    :array_7c
    .array-data 4
        0x1f6b4
        0x1f3ff
    .end array-data

    :array_7d
    .array-data 4
        0x1f6b5
        0x200d
        0x2640
        0xfe0f
    .end array-data

    :array_7e
    .array-data 4
        0x1f6b5
        0x1f3fb
        0x200d
        0x2640
        0xfe0f
    .end array-data

    :array_7f
    .array-data 4
        0x1f6b5
        0x1f3fc
        0x200d
        0x2640
        0xfe0f
    .end array-data

    :array_80
    .array-data 4
        0x1f6b5
        0x1f3fd
        0x200d
        0x2640
        0xfe0f
    .end array-data

    :array_81
    .array-data 4
        0x1f6b5
        0x1f3fe
        0x200d
        0x2640
        0xfe0f
    .end array-data

    :array_82
    .array-data 4
        0x1f6b5
        0x1f3ff
        0x200d
        0x2640
        0xfe0f
    .end array-data

    :array_83
    .array-data 4
        0x1f6b5
        0x1f3fb
    .end array-data

    :array_84
    .array-data 4
        0x1f6b5
        0x1f3fc
    .end array-data

    :array_85
    .array-data 4
        0x1f6b5
        0x1f3fd
    .end array-data

    :array_86
    .array-data 4
        0x1f6b5
        0x1f3fe
    .end array-data

    :array_87
    .array-data 4
        0x1f6b5
        0x1f3ff
    .end array-data

    :array_88
    .array-data 4
        0x1f939
        0x200d
        0x2640
        0xfe0f
    .end array-data

    :array_89
    .array-data 4
        0x1f939
        0x1f3fb
        0x200d
        0x2640
        0xfe0f
    .end array-data

    :array_8a
    .array-data 4
        0x1f939
        0x1f3fc
        0x200d
        0x2640
        0xfe0f
    .end array-data

    :array_8b
    .array-data 4
        0x1f939
        0x1f3fd
        0x200d
        0x2640
        0xfe0f
    .end array-data

    :array_8c
    .array-data 4
        0x1f939
        0x1f3fe
        0x200d
        0x2640
        0xfe0f
    .end array-data

    :array_8d
    .array-data 4
        0x1f939
        0x1f3ff
        0x200d
        0x2640
        0xfe0f
    .end array-data

    :array_8e
    .array-data 4
        0x1f939
        0x200d
        0x2642
        0xfe0f
    .end array-data

    :array_8f
    .array-data 4
        0x1f939
        0x1f3fb
        0x200d
        0x2642
        0xfe0f
    .end array-data

    :array_90
    .array-data 4
        0x1f939
        0x1f3fc
        0x200d
        0x2642
        0xfe0f
    .end array-data

    :array_91
    .array-data 4
        0x1f939
        0x1f3fd
        0x200d
        0x2642
        0xfe0f
    .end array-data

    :array_92
    .array-data 4
        0x1f939
        0x1f3fe
        0x200d
        0x2642
        0xfe0f
    .end array-data

    :array_93
    .array-data 4
        0x1f939
        0x1f3ff
        0x200d
        0x2642
        0xfe0f
    .end array-data
.end method

.method public constructor <init>()V
    .locals 0

    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getEmojis()[Lcom/vanniktech/emoji/emoji/Emoji;
    .locals 1

    .line 250
    sget-object v0, Lcom/vanniktech/emoji/google/category/ActivityCategory;->DATA:[Lcom/vanniktech/emoji/emoji/Emoji;

    return-object v0
.end method

.method public getIcon()I
    .locals 1

    .line 254
    sget v0, Lcom/vanniktech/emoji/google/R$drawable;->emoji_google_category_activity:I

    return v0
.end method
