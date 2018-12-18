.class public final Lcom/vanniktech/emoji/google/category/FlagsCategory;
.super Ljava/lang/Object;
.source "FlagsCategory.java"

# interfaces
.implements Lcom/vanniktech/emoji/emoji/EmojiCategory;


# static fields
.field private static final DATA:[Lcom/vanniktech/emoji/emoji/Emoji;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    const/16 v0, 0xeb

    .line 10
    new-array v0, v0, [Lcom/vanniktech/emoji/emoji/Emoji;

    new-instance v1, Lcom/vanniktech/emoji/emoji/Emoji;

    sget v2, Lcom/vanniktech/emoji/google/R$drawable;->emoji_google_1f3f3:I

    const v3, 0x1f3f3

    invoke-direct {v1, v3, v2}, Lcom/vanniktech/emoji/emoji/Emoji;-><init>(II)V

    const/4 v2, 0x0

    aput-object v1, v0, v2

    new-instance v1, Lcom/vanniktech/emoji/emoji/Emoji;

    sget v2, Lcom/vanniktech/emoji/google/R$drawable;->emoji_google_1f3f4:I

    const v3, 0x1f3f4

    invoke-direct {v1, v3, v2}, Lcom/vanniktech/emoji/emoji/Emoji;-><init>(II)V

    const/4 v2, 0x1

    aput-object v1, v0, v2

    new-instance v1, Lcom/vanniktech/emoji/emoji/Emoji;

    sget v2, Lcom/vanniktech/emoji/google/R$drawable;->emoji_google_1f3c1:I

    const v3, 0x1f3c1

    invoke-direct {v1, v3, v2}, Lcom/vanniktech/emoji/emoji/Emoji;-><init>(II)V

    const/4 v2, 0x2

    aput-object v1, v0, v2

    new-instance v1, Lcom/vanniktech/emoji/emoji/Emoji;

    sget v3, Lcom/vanniktech/emoji/google/R$drawable;->emoji_google_1f6a9:I

    const v4, 0x1f6a9

    invoke-direct {v1, v4, v3}, Lcom/vanniktech/emoji/emoji/Emoji;-><init>(II)V

    const/4 v3, 0x3

    aput-object v1, v0, v3

    new-instance v1, Lcom/vanniktech/emoji/emoji/Emoji;

    const/4 v3, 0x4

    new-array v4, v3, [I

    fill-array-data v4, :array_0

    sget v5, Lcom/vanniktech/emoji/google/R$drawable;->emoji_google_1f3f3_fe0f_200d_1f308:I

    invoke-direct {v1, v4, v5}, Lcom/vanniktech/emoji/emoji/Emoji;-><init>([II)V

    aput-object v1, v0, v3

    new-instance v1, Lcom/vanniktech/emoji/emoji/Emoji;

    new-array v3, v2, [I

    fill-array-data v3, :array_1

    sget v4, Lcom/vanniktech/emoji/google/R$drawable;->emoji_google_1f1e6_1f1eb:I

    invoke-direct {v1, v3, v4}, Lcom/vanniktech/emoji/emoji/Emoji;-><init>([II)V

    const/4 v3, 0x5

    aput-object v1, v0, v3

    new-instance v1, Lcom/vanniktech/emoji/emoji/Emoji;

    new-array v3, v2, [I

    fill-array-data v3, :array_2

    sget v4, Lcom/vanniktech/emoji/google/R$drawable;->emoji_google_1f1e6_1f1fd:I

    invoke-direct {v1, v3, v4}, Lcom/vanniktech/emoji/emoji/Emoji;-><init>([II)V

    const/4 v3, 0x6

    aput-object v1, v0, v3

    new-instance v1, Lcom/vanniktech/emoji/emoji/Emoji;

    new-array v3, v2, [I

    fill-array-data v3, :array_3

    sget v4, Lcom/vanniktech/emoji/google/R$drawable;->emoji_google_1f1e6_1f1f1:I

    invoke-direct {v1, v3, v4}, Lcom/vanniktech/emoji/emoji/Emoji;-><init>([II)V

    const/4 v3, 0x7

    aput-object v1, v0, v3

    new-instance v1, Lcom/vanniktech/emoji/emoji/Emoji;

    new-array v3, v2, [I

    fill-array-data v3, :array_4

    sget v4, Lcom/vanniktech/emoji/google/R$drawable;->emoji_google_1f1e9_1f1ff:I

    invoke-direct {v1, v3, v4}, Lcom/vanniktech/emoji/emoji/Emoji;-><init>([II)V

    const/16 v3, 0x8

    aput-object v1, v0, v3

    new-instance v1, Lcom/vanniktech/emoji/emoji/Emoji;

    new-array v3, v2, [I

    fill-array-data v3, :array_5

    sget v4, Lcom/vanniktech/emoji/google/R$drawable;->emoji_google_1f1e6_1f1f8:I

    invoke-direct {v1, v3, v4}, Lcom/vanniktech/emoji/emoji/Emoji;-><init>([II)V

    const/16 v3, 0x9

    aput-object v1, v0, v3

    new-instance v1, Lcom/vanniktech/emoji/emoji/Emoji;

    new-array v3, v2, [I

    fill-array-data v3, :array_6

    sget v4, Lcom/vanniktech/emoji/google/R$drawable;->emoji_google_1f1e6_1f1e9:I

    invoke-direct {v1, v3, v4}, Lcom/vanniktech/emoji/emoji/Emoji;-><init>([II)V

    const/16 v3, 0xa

    aput-object v1, v0, v3

    new-instance v1, Lcom/vanniktech/emoji/emoji/Emoji;

    new-array v3, v2, [I

    fill-array-data v3, :array_7

    sget v4, Lcom/vanniktech/emoji/google/R$drawable;->emoji_google_1f1e6_1f1f4:I

    invoke-direct {v1, v3, v4}, Lcom/vanniktech/emoji/emoji/Emoji;-><init>([II)V

    const/16 v3, 0xb

    aput-object v1, v0, v3

    new-instance v1, Lcom/vanniktech/emoji/emoji/Emoji;

    new-array v3, v2, [I

    fill-array-data v3, :array_8

    sget v4, Lcom/vanniktech/emoji/google/R$drawable;->emoji_google_1f1e6_1f1ee:I

    invoke-direct {v1, v3, v4}, Lcom/vanniktech/emoji/emoji/Emoji;-><init>([II)V

    const/16 v3, 0xc

    aput-object v1, v0, v3

    new-instance v1, Lcom/vanniktech/emoji/emoji/Emoji;

    new-array v3, v2, [I

    fill-array-data v3, :array_9

    sget v4, Lcom/vanniktech/emoji/google/R$drawable;->emoji_google_1f1e6_1f1f6:I

    invoke-direct {v1, v3, v4}, Lcom/vanniktech/emoji/emoji/Emoji;-><init>([II)V

    const/16 v3, 0xd

    aput-object v1, v0, v3

    new-instance v1, Lcom/vanniktech/emoji/emoji/Emoji;

    new-array v3, v2, [I

    fill-array-data v3, :array_a

    sget v4, Lcom/vanniktech/emoji/google/R$drawable;->emoji_google_1f1e6_1f1ec:I

    invoke-direct {v1, v3, v4}, Lcom/vanniktech/emoji/emoji/Emoji;-><init>([II)V

    const/16 v3, 0xe

    aput-object v1, v0, v3

    new-instance v1, Lcom/vanniktech/emoji/emoji/Emoji;

    new-array v3, v2, [I

    fill-array-data v3, :array_b

    sget v4, Lcom/vanniktech/emoji/google/R$drawable;->emoji_google_1f1e6_1f1f7:I

    invoke-direct {v1, v3, v4}, Lcom/vanniktech/emoji/emoji/Emoji;-><init>([II)V

    const/16 v3, 0xf

    aput-object v1, v0, v3

    new-instance v1, Lcom/vanniktech/emoji/emoji/Emoji;

    new-array v3, v2, [I

    fill-array-data v3, :array_c

    sget v4, Lcom/vanniktech/emoji/google/R$drawable;->emoji_google_1f1e6_1f1f2:I

    invoke-direct {v1, v3, v4}, Lcom/vanniktech/emoji/emoji/Emoji;-><init>([II)V

    const/16 v3, 0x10

    aput-object v1, v0, v3

    new-instance v1, Lcom/vanniktech/emoji/emoji/Emoji;

    new-array v3, v2, [I

    fill-array-data v3, :array_d

    sget v4, Lcom/vanniktech/emoji/google/R$drawable;->emoji_google_1f1e6_1f1fc:I

    invoke-direct {v1, v3, v4}, Lcom/vanniktech/emoji/emoji/Emoji;-><init>([II)V

    const/16 v3, 0x11

    aput-object v1, v0, v3

    new-instance v1, Lcom/vanniktech/emoji/emoji/Emoji;

    new-array v3, v2, [I

    fill-array-data v3, :array_e

    sget v4, Lcom/vanniktech/emoji/google/R$drawable;->emoji_google_1f1e6_1f1f9:I

    invoke-direct {v1, v3, v4}, Lcom/vanniktech/emoji/emoji/Emoji;-><init>([II)V

    const/16 v3, 0x12

    aput-object v1, v0, v3

    new-instance v1, Lcom/vanniktech/emoji/emoji/Emoji;

    new-array v3, v2, [I

    fill-array-data v3, :array_f

    sget v4, Lcom/vanniktech/emoji/google/R$drawable;->emoji_google_1f1e6_1f1ff:I

    invoke-direct {v1, v3, v4}, Lcom/vanniktech/emoji/emoji/Emoji;-><init>([II)V

    const/16 v3, 0x13

    aput-object v1, v0, v3

    new-instance v1, Lcom/vanniktech/emoji/emoji/Emoji;

    new-array v3, v2, [I

    fill-array-data v3, :array_10

    sget v4, Lcom/vanniktech/emoji/google/R$drawable;->emoji_google_1f1e7_1f1f8:I

    invoke-direct {v1, v3, v4}, Lcom/vanniktech/emoji/emoji/Emoji;-><init>([II)V

    const/16 v3, 0x14

    aput-object v1, v0, v3

    new-instance v1, Lcom/vanniktech/emoji/emoji/Emoji;

    new-array v3, v2, [I

    fill-array-data v3, :array_11

    sget v4, Lcom/vanniktech/emoji/google/R$drawable;->emoji_google_1f1e7_1f1ed:I

    invoke-direct {v1, v3, v4}, Lcom/vanniktech/emoji/emoji/Emoji;-><init>([II)V

    const/16 v3, 0x15

    aput-object v1, v0, v3

    new-instance v1, Lcom/vanniktech/emoji/emoji/Emoji;

    new-array v3, v2, [I

    fill-array-data v3, :array_12

    sget v4, Lcom/vanniktech/emoji/google/R$drawable;->emoji_google_1f1e7_1f1e9:I

    invoke-direct {v1, v3, v4}, Lcom/vanniktech/emoji/emoji/Emoji;-><init>([II)V

    const/16 v3, 0x16

    aput-object v1, v0, v3

    new-instance v1, Lcom/vanniktech/emoji/emoji/Emoji;

    new-array v3, v2, [I

    fill-array-data v3, :array_13

    sget v4, Lcom/vanniktech/emoji/google/R$drawable;->emoji_google_1f1e7_1f1e7:I

    invoke-direct {v1, v3, v4}, Lcom/vanniktech/emoji/emoji/Emoji;-><init>([II)V

    const/16 v3, 0x17

    aput-object v1, v0, v3

    new-instance v1, Lcom/vanniktech/emoji/emoji/Emoji;

    new-array v3, v2, [I

    fill-array-data v3, :array_14

    sget v4, Lcom/vanniktech/emoji/google/R$drawable;->emoji_google_1f1e7_1f1fe:I

    invoke-direct {v1, v3, v4}, Lcom/vanniktech/emoji/emoji/Emoji;-><init>([II)V

    const/16 v3, 0x18

    aput-object v1, v0, v3

    new-instance v1, Lcom/vanniktech/emoji/emoji/Emoji;

    new-array v3, v2, [I

    fill-array-data v3, :array_15

    sget v4, Lcom/vanniktech/emoji/google/R$drawable;->emoji_google_1f1e7_1f1ea:I

    invoke-direct {v1, v3, v4}, Lcom/vanniktech/emoji/emoji/Emoji;-><init>([II)V

    const/16 v3, 0x19

    aput-object v1, v0, v3

    new-instance v1, Lcom/vanniktech/emoji/emoji/Emoji;

    new-array v3, v2, [I

    fill-array-data v3, :array_16

    sget v4, Lcom/vanniktech/emoji/google/R$drawable;->emoji_google_1f1e7_1f1ff:I

    invoke-direct {v1, v3, v4}, Lcom/vanniktech/emoji/emoji/Emoji;-><init>([II)V

    const/16 v3, 0x1a

    aput-object v1, v0, v3

    new-instance v1, Lcom/vanniktech/emoji/emoji/Emoji;

    new-array v3, v2, [I

    fill-array-data v3, :array_17

    sget v4, Lcom/vanniktech/emoji/google/R$drawable;->emoji_google_1f1e7_1f1ef:I

    invoke-direct {v1, v3, v4}, Lcom/vanniktech/emoji/emoji/Emoji;-><init>([II)V

    const/16 v3, 0x1b

    aput-object v1, v0, v3

    new-instance v1, Lcom/vanniktech/emoji/emoji/Emoji;

    new-array v3, v2, [I

    fill-array-data v3, :array_18

    sget v4, Lcom/vanniktech/emoji/google/R$drawable;->emoji_google_1f1e7_1f1f2:I

    invoke-direct {v1, v3, v4}, Lcom/vanniktech/emoji/emoji/Emoji;-><init>([II)V

    const/16 v3, 0x1c

    aput-object v1, v0, v3

    new-instance v1, Lcom/vanniktech/emoji/emoji/Emoji;

    new-array v3, v2, [I

    fill-array-data v3, :array_19

    sget v4, Lcom/vanniktech/emoji/google/R$drawable;->emoji_google_1f1e7_1f1f9:I

    invoke-direct {v1, v3, v4}, Lcom/vanniktech/emoji/emoji/Emoji;-><init>([II)V

    const/16 v3, 0x1d

    aput-object v1, v0, v3

    new-instance v1, Lcom/vanniktech/emoji/emoji/Emoji;

    new-array v3, v2, [I

    fill-array-data v3, :array_1a

    sget v4, Lcom/vanniktech/emoji/google/R$drawable;->emoji_google_1f1e7_1f1f4:I

    invoke-direct {v1, v3, v4}, Lcom/vanniktech/emoji/emoji/Emoji;-><init>([II)V

    const/16 v3, 0x1e

    aput-object v1, v0, v3

    new-instance v1, Lcom/vanniktech/emoji/emoji/Emoji;

    new-array v3, v2, [I

    fill-array-data v3, :array_1b

    sget v4, Lcom/vanniktech/emoji/google/R$drawable;->emoji_google_1f1e7_1f1e6:I

    invoke-direct {v1, v3, v4}, Lcom/vanniktech/emoji/emoji/Emoji;-><init>([II)V

    const/16 v3, 0x1f

    aput-object v1, v0, v3

    new-instance v1, Lcom/vanniktech/emoji/emoji/Emoji;

    new-array v3, v2, [I

    fill-array-data v3, :array_1c

    sget v4, Lcom/vanniktech/emoji/google/R$drawable;->emoji_google_1f1e7_1f1fc:I

    invoke-direct {v1, v3, v4}, Lcom/vanniktech/emoji/emoji/Emoji;-><init>([II)V

    const/16 v3, 0x20

    aput-object v1, v0, v3

    new-instance v1, Lcom/vanniktech/emoji/emoji/Emoji;

    new-array v3, v2, [I

    fill-array-data v3, :array_1d

    sget v4, Lcom/vanniktech/emoji/google/R$drawable;->emoji_google_1f1e7_1f1f7:I

    invoke-direct {v1, v3, v4}, Lcom/vanniktech/emoji/emoji/Emoji;-><init>([II)V

    const/16 v3, 0x21

    aput-object v1, v0, v3

    new-instance v1, Lcom/vanniktech/emoji/emoji/Emoji;

    new-array v3, v2, [I

    fill-array-data v3, :array_1e

    sget v4, Lcom/vanniktech/emoji/google/R$drawable;->emoji_google_1f1fb_1f1ec:I

    invoke-direct {v1, v3, v4}, Lcom/vanniktech/emoji/emoji/Emoji;-><init>([II)V

    const/16 v3, 0x22

    aput-object v1, v0, v3

    new-instance v1, Lcom/vanniktech/emoji/emoji/Emoji;

    new-array v3, v2, [I

    fill-array-data v3, :array_1f

    sget v4, Lcom/vanniktech/emoji/google/R$drawable;->emoji_google_1f1e7_1f1f3:I

    invoke-direct {v1, v3, v4}, Lcom/vanniktech/emoji/emoji/Emoji;-><init>([II)V

    const/16 v3, 0x23

    aput-object v1, v0, v3

    new-instance v1, Lcom/vanniktech/emoji/emoji/Emoji;

    new-array v3, v2, [I

    fill-array-data v3, :array_20

    sget v4, Lcom/vanniktech/emoji/google/R$drawable;->emoji_google_1f1e7_1f1ec:I

    invoke-direct {v1, v3, v4}, Lcom/vanniktech/emoji/emoji/Emoji;-><init>([II)V

    const/16 v3, 0x24

    aput-object v1, v0, v3

    new-instance v1, Lcom/vanniktech/emoji/emoji/Emoji;

    new-array v3, v2, [I

    fill-array-data v3, :array_21

    sget v4, Lcom/vanniktech/emoji/google/R$drawable;->emoji_google_1f1e7_1f1eb:I

    invoke-direct {v1, v3, v4}, Lcom/vanniktech/emoji/emoji/Emoji;-><init>([II)V

    const/16 v3, 0x25

    aput-object v1, v0, v3

    new-instance v1, Lcom/vanniktech/emoji/emoji/Emoji;

    new-array v3, v2, [I

    fill-array-data v3, :array_22

    sget v4, Lcom/vanniktech/emoji/google/R$drawable;->emoji_google_1f1e7_1f1ee:I

    invoke-direct {v1, v3, v4}, Lcom/vanniktech/emoji/emoji/Emoji;-><init>([II)V

    const/16 v3, 0x26

    aput-object v1, v0, v3

    new-instance v1, Lcom/vanniktech/emoji/emoji/Emoji;

    new-array v3, v2, [I

    fill-array-data v3, :array_23

    sget v4, Lcom/vanniktech/emoji/google/R$drawable;->emoji_google_1f1f0_1f1ed:I

    invoke-direct {v1, v3, v4}, Lcom/vanniktech/emoji/emoji/Emoji;-><init>([II)V

    const/16 v3, 0x27

    aput-object v1, v0, v3

    new-instance v1, Lcom/vanniktech/emoji/emoji/Emoji;

    new-array v3, v2, [I

    fill-array-data v3, :array_24

    sget v4, Lcom/vanniktech/emoji/google/R$drawable;->emoji_google_1f1e8_1f1f2:I

    invoke-direct {v1, v3, v4}, Lcom/vanniktech/emoji/emoji/Emoji;-><init>([II)V

    const/16 v3, 0x28

    aput-object v1, v0, v3

    new-instance v1, Lcom/vanniktech/emoji/emoji/Emoji;

    new-array v3, v2, [I

    fill-array-data v3, :array_25

    sget v4, Lcom/vanniktech/emoji/google/R$drawable;->emoji_google_1f1e8_1f1e6:I

    invoke-direct {v1, v3, v4}, Lcom/vanniktech/emoji/emoji/Emoji;-><init>([II)V

    const/16 v3, 0x29

    aput-object v1, v0, v3

    new-instance v1, Lcom/vanniktech/emoji/emoji/Emoji;

    new-array v3, v2, [I

    fill-array-data v3, :array_26

    sget v4, Lcom/vanniktech/emoji/google/R$drawable;->emoji_google_1f1ee_1f1e8:I

    invoke-direct {v1, v3, v4}, Lcom/vanniktech/emoji/emoji/Emoji;-><init>([II)V

    const/16 v3, 0x2a

    aput-object v1, v0, v3

    new-instance v1, Lcom/vanniktech/emoji/emoji/Emoji;

    new-array v3, v2, [I

    fill-array-data v3, :array_27

    sget v4, Lcom/vanniktech/emoji/google/R$drawable;->emoji_google_1f1e8_1f1fb:I

    invoke-direct {v1, v3, v4}, Lcom/vanniktech/emoji/emoji/Emoji;-><init>([II)V

    const/16 v3, 0x2b

    aput-object v1, v0, v3

    new-instance v1, Lcom/vanniktech/emoji/emoji/Emoji;

    new-array v3, v2, [I

    fill-array-data v3, :array_28

    sget v4, Lcom/vanniktech/emoji/google/R$drawable;->emoji_google_1f1f0_1f1fe:I

    invoke-direct {v1, v3, v4}, Lcom/vanniktech/emoji/emoji/Emoji;-><init>([II)V

    const/16 v3, 0x2c

    aput-object v1, v0, v3

    new-instance v1, Lcom/vanniktech/emoji/emoji/Emoji;

    new-array v3, v2, [I

    fill-array-data v3, :array_29

    sget v4, Lcom/vanniktech/emoji/google/R$drawable;->emoji_google_1f1e8_1f1eb:I

    invoke-direct {v1, v3, v4}, Lcom/vanniktech/emoji/emoji/Emoji;-><init>([II)V

    const/16 v3, 0x2d

    aput-object v1, v0, v3

    new-instance v1, Lcom/vanniktech/emoji/emoji/Emoji;

    new-array v3, v2, [I

    fill-array-data v3, :array_2a

    sget v4, Lcom/vanniktech/emoji/google/R$drawable;->emoji_google_1f1f9_1f1e9:I

    invoke-direct {v1, v3, v4}, Lcom/vanniktech/emoji/emoji/Emoji;-><init>([II)V

    const/16 v3, 0x2e

    aput-object v1, v0, v3

    new-instance v1, Lcom/vanniktech/emoji/emoji/Emoji;

    new-array v3, v2, [I

    fill-array-data v3, :array_2b

    sget v4, Lcom/vanniktech/emoji/google/R$drawable;->emoji_google_1f1e8_1f1f1:I

    invoke-direct {v1, v3, v4}, Lcom/vanniktech/emoji/emoji/Emoji;-><init>([II)V

    const/16 v3, 0x2f

    aput-object v1, v0, v3

    new-instance v1, Lcom/vanniktech/emoji/emoji/Emoji;

    new-array v3, v2, [I

    fill-array-data v3, :array_2c

    sget v4, Lcom/vanniktech/emoji/google/R$drawable;->emoji_google_1f1e8_1f1f3:I

    invoke-direct {v1, v3, v4}, Lcom/vanniktech/emoji/emoji/Emoji;-><init>([II)V

    const/16 v3, 0x30

    aput-object v1, v0, v3

    new-instance v1, Lcom/vanniktech/emoji/emoji/Emoji;

    new-array v3, v2, [I

    fill-array-data v3, :array_2d

    sget v4, Lcom/vanniktech/emoji/google/R$drawable;->emoji_google_1f1e8_1f1fd:I

    invoke-direct {v1, v3, v4}, Lcom/vanniktech/emoji/emoji/Emoji;-><init>([II)V

    const/16 v3, 0x31

    aput-object v1, v0, v3

    new-instance v1, Lcom/vanniktech/emoji/emoji/Emoji;

    new-array v3, v2, [I

    fill-array-data v3, :array_2e

    sget v4, Lcom/vanniktech/emoji/google/R$drawable;->emoji_google_1f1e8_1f1e8:I

    invoke-direct {v1, v3, v4}, Lcom/vanniktech/emoji/emoji/Emoji;-><init>([II)V

    const/16 v3, 0x32

    aput-object v1, v0, v3

    new-instance v1, Lcom/vanniktech/emoji/emoji/Emoji;

    new-array v3, v2, [I

    fill-array-data v3, :array_2f

    sget v4, Lcom/vanniktech/emoji/google/R$drawable;->emoji_google_1f1e8_1f1f4:I

    invoke-direct {v1, v3, v4}, Lcom/vanniktech/emoji/emoji/Emoji;-><init>([II)V

    const/16 v3, 0x33

    aput-object v1, v0, v3

    new-instance v1, Lcom/vanniktech/emoji/emoji/Emoji;

    new-array v3, v2, [I

    fill-array-data v3, :array_30

    sget v4, Lcom/vanniktech/emoji/google/R$drawable;->emoji_google_1f1f0_1f1f2:I

    invoke-direct {v1, v3, v4}, Lcom/vanniktech/emoji/emoji/Emoji;-><init>([II)V

    const/16 v3, 0x34

    aput-object v1, v0, v3

    new-instance v1, Lcom/vanniktech/emoji/emoji/Emoji;

    new-array v3, v2, [I

    fill-array-data v3, :array_31

    sget v4, Lcom/vanniktech/emoji/google/R$drawable;->emoji_google_1f1e8_1f1ec:I

    invoke-direct {v1, v3, v4}, Lcom/vanniktech/emoji/emoji/Emoji;-><init>([II)V

    const/16 v3, 0x35

    aput-object v1, v0, v3

    new-instance v1, Lcom/vanniktech/emoji/emoji/Emoji;

    new-array v3, v2, [I

    fill-array-data v3, :array_32

    sget v4, Lcom/vanniktech/emoji/google/R$drawable;->emoji_google_1f1e8_1f1e9:I

    invoke-direct {v1, v3, v4}, Lcom/vanniktech/emoji/emoji/Emoji;-><init>([II)V

    const/16 v3, 0x36

    aput-object v1, v0, v3

    new-instance v1, Lcom/vanniktech/emoji/emoji/Emoji;

    new-array v3, v2, [I

    fill-array-data v3, :array_33

    sget v4, Lcom/vanniktech/emoji/google/R$drawable;->emoji_google_1f1e8_1f1f0:I

    invoke-direct {v1, v3, v4}, Lcom/vanniktech/emoji/emoji/Emoji;-><init>([II)V

    const/16 v3, 0x37

    aput-object v1, v0, v3

    new-instance v1, Lcom/vanniktech/emoji/emoji/Emoji;

    new-array v3, v2, [I

    fill-array-data v3, :array_34

    sget v4, Lcom/vanniktech/emoji/google/R$drawable;->emoji_google_1f1e8_1f1f7:I

    invoke-direct {v1, v3, v4}, Lcom/vanniktech/emoji/emoji/Emoji;-><init>([II)V

    const/16 v3, 0x38

    aput-object v1, v0, v3

    new-instance v1, Lcom/vanniktech/emoji/emoji/Emoji;

    new-array v3, v2, [I

    fill-array-data v3, :array_35

    sget v4, Lcom/vanniktech/emoji/google/R$drawable;->emoji_google_1f1e8_1f1ee:I

    invoke-direct {v1, v3, v4}, Lcom/vanniktech/emoji/emoji/Emoji;-><init>([II)V

    const/16 v3, 0x39

    aput-object v1, v0, v3

    new-instance v1, Lcom/vanniktech/emoji/emoji/Emoji;

    new-array v3, v2, [I

    fill-array-data v3, :array_36

    sget v4, Lcom/vanniktech/emoji/google/R$drawable;->emoji_google_1f1ed_1f1f7:I

    invoke-direct {v1, v3, v4}, Lcom/vanniktech/emoji/emoji/Emoji;-><init>([II)V

    const/16 v3, 0x3a

    aput-object v1, v0, v3

    new-instance v1, Lcom/vanniktech/emoji/emoji/Emoji;

    new-array v3, v2, [I

    fill-array-data v3, :array_37

    sget v4, Lcom/vanniktech/emoji/google/R$drawable;->emoji_google_1f1e8_1f1fa:I

    invoke-direct {v1, v3, v4}, Lcom/vanniktech/emoji/emoji/Emoji;-><init>([II)V

    const/16 v3, 0x3b

    aput-object v1, v0, v3

    new-instance v1, Lcom/vanniktech/emoji/emoji/Emoji;

    new-array v3, v2, [I

    fill-array-data v3, :array_38

    sget v4, Lcom/vanniktech/emoji/google/R$drawable;->emoji_google_1f1e8_1f1fc:I

    invoke-direct {v1, v3, v4}, Lcom/vanniktech/emoji/emoji/Emoji;-><init>([II)V

    const/16 v3, 0x3c

    aput-object v1, v0, v3

    new-instance v1, Lcom/vanniktech/emoji/emoji/Emoji;

    new-array v3, v2, [I

    fill-array-data v3, :array_39

    sget v4, Lcom/vanniktech/emoji/google/R$drawable;->emoji_google_1f1e8_1f1fe:I

    invoke-direct {v1, v3, v4}, Lcom/vanniktech/emoji/emoji/Emoji;-><init>([II)V

    const/16 v3, 0x3d

    aput-object v1, v0, v3

    new-instance v1, Lcom/vanniktech/emoji/emoji/Emoji;

    new-array v3, v2, [I

    fill-array-data v3, :array_3a

    sget v4, Lcom/vanniktech/emoji/google/R$drawable;->emoji_google_1f1e8_1f1ff:I

    invoke-direct {v1, v3, v4}, Lcom/vanniktech/emoji/emoji/Emoji;-><init>([II)V

    const/16 v3, 0x3e

    aput-object v1, v0, v3

    new-instance v1, Lcom/vanniktech/emoji/emoji/Emoji;

    new-array v3, v2, [I

    fill-array-data v3, :array_3b

    sget v4, Lcom/vanniktech/emoji/google/R$drawable;->emoji_google_1f1e9_1f1f0:I

    invoke-direct {v1, v3, v4}, Lcom/vanniktech/emoji/emoji/Emoji;-><init>([II)V

    const/16 v3, 0x3f

    aput-object v1, v0, v3

    new-instance v1, Lcom/vanniktech/emoji/emoji/Emoji;

    new-array v3, v2, [I

    fill-array-data v3, :array_3c

    sget v4, Lcom/vanniktech/emoji/google/R$drawable;->emoji_google_1f1e9_1f1ef:I

    invoke-direct {v1, v3, v4}, Lcom/vanniktech/emoji/emoji/Emoji;-><init>([II)V

    const/16 v3, 0x40

    aput-object v1, v0, v3

    new-instance v1, Lcom/vanniktech/emoji/emoji/Emoji;

    new-array v3, v2, [I

    fill-array-data v3, :array_3d

    sget v4, Lcom/vanniktech/emoji/google/R$drawable;->emoji_google_1f1e9_1f1f2:I

    invoke-direct {v1, v3, v4}, Lcom/vanniktech/emoji/emoji/Emoji;-><init>([II)V

    const/16 v3, 0x41

    aput-object v1, v0, v3

    new-instance v1, Lcom/vanniktech/emoji/emoji/Emoji;

    new-array v3, v2, [I

    fill-array-data v3, :array_3e

    sget v4, Lcom/vanniktech/emoji/google/R$drawable;->emoji_google_1f1e9_1f1f4:I

    invoke-direct {v1, v3, v4}, Lcom/vanniktech/emoji/emoji/Emoji;-><init>([II)V

    const/16 v3, 0x42

    aput-object v1, v0, v3

    new-instance v1, Lcom/vanniktech/emoji/emoji/Emoji;

    new-array v3, v2, [I

    fill-array-data v3, :array_3f

    sget v4, Lcom/vanniktech/emoji/google/R$drawable;->emoji_google_1f1ea_1f1e8:I

    invoke-direct {v1, v3, v4}, Lcom/vanniktech/emoji/emoji/Emoji;-><init>([II)V

    const/16 v3, 0x43

    aput-object v1, v0, v3

    new-instance v1, Lcom/vanniktech/emoji/emoji/Emoji;

    new-array v3, v2, [I

    fill-array-data v3, :array_40

    sget v4, Lcom/vanniktech/emoji/google/R$drawable;->emoji_google_1f1ea_1f1ec:I

    invoke-direct {v1, v3, v4}, Lcom/vanniktech/emoji/emoji/Emoji;-><init>([II)V

    const/16 v3, 0x44

    aput-object v1, v0, v3

    new-instance v1, Lcom/vanniktech/emoji/emoji/Emoji;

    new-array v3, v2, [I

    fill-array-data v3, :array_41

    sget v4, Lcom/vanniktech/emoji/google/R$drawable;->emoji_google_1f1f8_1f1fb:I

    invoke-direct {v1, v3, v4}, Lcom/vanniktech/emoji/emoji/Emoji;-><init>([II)V

    const/16 v3, 0x45

    aput-object v1, v0, v3

    new-instance v1, Lcom/vanniktech/emoji/emoji/Emoji;

    new-array v3, v2, [I

    fill-array-data v3, :array_42

    sget v4, Lcom/vanniktech/emoji/google/R$drawable;->emoji_google_1f1ec_1f1f6:I

    invoke-direct {v1, v3, v4}, Lcom/vanniktech/emoji/emoji/Emoji;-><init>([II)V

    const/16 v3, 0x46

    aput-object v1, v0, v3

    new-instance v1, Lcom/vanniktech/emoji/emoji/Emoji;

    new-array v3, v2, [I

    fill-array-data v3, :array_43

    sget v4, Lcom/vanniktech/emoji/google/R$drawable;->emoji_google_1f1ea_1f1f7:I

    invoke-direct {v1, v3, v4}, Lcom/vanniktech/emoji/emoji/Emoji;-><init>([II)V

    const/16 v3, 0x47

    aput-object v1, v0, v3

    new-instance v1, Lcom/vanniktech/emoji/emoji/Emoji;

    new-array v3, v2, [I

    fill-array-data v3, :array_44

    sget v4, Lcom/vanniktech/emoji/google/R$drawable;->emoji_google_1f1ea_1f1ea:I

    invoke-direct {v1, v3, v4}, Lcom/vanniktech/emoji/emoji/Emoji;-><init>([II)V

    const/16 v3, 0x48

    aput-object v1, v0, v3

    new-instance v1, Lcom/vanniktech/emoji/emoji/Emoji;

    new-array v3, v2, [I

    fill-array-data v3, :array_45

    sget v4, Lcom/vanniktech/emoji/google/R$drawable;->emoji_google_1f1ea_1f1f9:I

    invoke-direct {v1, v3, v4}, Lcom/vanniktech/emoji/emoji/Emoji;-><init>([II)V

    const/16 v3, 0x49

    aput-object v1, v0, v3

    new-instance v1, Lcom/vanniktech/emoji/emoji/Emoji;

    new-array v3, v2, [I

    fill-array-data v3, :array_46

    sget v4, Lcom/vanniktech/emoji/google/R$drawable;->emoji_google_1f1ea_1f1fa:I

    invoke-direct {v1, v3, v4}, Lcom/vanniktech/emoji/emoji/Emoji;-><init>([II)V

    const/16 v3, 0x4a

    aput-object v1, v0, v3

    new-instance v1, Lcom/vanniktech/emoji/emoji/Emoji;

    new-array v3, v2, [I

    fill-array-data v3, :array_47

    sget v4, Lcom/vanniktech/emoji/google/R$drawable;->emoji_google_1f1eb_1f1f4:I

    invoke-direct {v1, v3, v4}, Lcom/vanniktech/emoji/emoji/Emoji;-><init>([II)V

    const/16 v3, 0x4b

    aput-object v1, v0, v3

    new-instance v1, Lcom/vanniktech/emoji/emoji/Emoji;

    new-array v3, v2, [I

    fill-array-data v3, :array_48

    sget v4, Lcom/vanniktech/emoji/google/R$drawable;->emoji_google_1f1eb_1f1ef:I

    invoke-direct {v1, v3, v4}, Lcom/vanniktech/emoji/emoji/Emoji;-><init>([II)V

    const/16 v3, 0x4c

    aput-object v1, v0, v3

    new-instance v1, Lcom/vanniktech/emoji/emoji/Emoji;

    new-array v3, v2, [I

    fill-array-data v3, :array_49

    sget v4, Lcom/vanniktech/emoji/google/R$drawable;->emoji_google_1f1eb_1f1ee:I

    invoke-direct {v1, v3, v4}, Lcom/vanniktech/emoji/emoji/Emoji;-><init>([II)V

    const/16 v3, 0x4d

    aput-object v1, v0, v3

    new-instance v1, Lcom/vanniktech/emoji/emoji/Emoji;

    new-array v3, v2, [I

    fill-array-data v3, :array_4a

    sget v4, Lcom/vanniktech/emoji/google/R$drawable;->emoji_google_1f1eb_1f1f7:I

    invoke-direct {v1, v3, v4}, Lcom/vanniktech/emoji/emoji/Emoji;-><init>([II)V

    const/16 v3, 0x4e

    aput-object v1, v0, v3

    new-instance v1, Lcom/vanniktech/emoji/emoji/Emoji;

    new-array v3, v2, [I

    fill-array-data v3, :array_4b

    sget v4, Lcom/vanniktech/emoji/google/R$drawable;->emoji_google_1f1f5_1f1eb:I

    invoke-direct {v1, v3, v4}, Lcom/vanniktech/emoji/emoji/Emoji;-><init>([II)V

    const/16 v3, 0x4f

    aput-object v1, v0, v3

    new-instance v1, Lcom/vanniktech/emoji/emoji/Emoji;

    new-array v3, v2, [I

    fill-array-data v3, :array_4c

    sget v4, Lcom/vanniktech/emoji/google/R$drawable;->emoji_google_1f1ec_1f1e6:I

    invoke-direct {v1, v3, v4}, Lcom/vanniktech/emoji/emoji/Emoji;-><init>([II)V

    const/16 v3, 0x50

    aput-object v1, v0, v3

    new-instance v1, Lcom/vanniktech/emoji/emoji/Emoji;

    new-array v3, v2, [I

    fill-array-data v3, :array_4d

    sget v4, Lcom/vanniktech/emoji/google/R$drawable;->emoji_google_1f1ec_1f1f2:I

    invoke-direct {v1, v3, v4}, Lcom/vanniktech/emoji/emoji/Emoji;-><init>([II)V

    const/16 v3, 0x51

    aput-object v1, v0, v3

    new-instance v1, Lcom/vanniktech/emoji/emoji/Emoji;

    new-array v3, v2, [I

    fill-array-data v3, :array_4e

    sget v4, Lcom/vanniktech/emoji/google/R$drawable;->emoji_google_1f1ec_1f1ea:I

    invoke-direct {v1, v3, v4}, Lcom/vanniktech/emoji/emoji/Emoji;-><init>([II)V

    const/16 v3, 0x52

    aput-object v1, v0, v3

    new-instance v1, Lcom/vanniktech/emoji/emoji/Emoji;

    new-array v3, v2, [I

    fill-array-data v3, :array_4f

    sget v4, Lcom/vanniktech/emoji/google/R$drawable;->emoji_google_1f1e9_1f1ea:I

    invoke-direct {v1, v3, v4}, Lcom/vanniktech/emoji/emoji/Emoji;-><init>([II)V

    const/16 v3, 0x53

    aput-object v1, v0, v3

    new-instance v1, Lcom/vanniktech/emoji/emoji/Emoji;

    new-array v3, v2, [I

    fill-array-data v3, :array_50

    sget v4, Lcom/vanniktech/emoji/google/R$drawable;->emoji_google_1f1ec_1f1ed:I

    invoke-direct {v1, v3, v4}, Lcom/vanniktech/emoji/emoji/Emoji;-><init>([II)V

    const/16 v3, 0x54

    aput-object v1, v0, v3

    new-instance v1, Lcom/vanniktech/emoji/emoji/Emoji;

    new-array v3, v2, [I

    fill-array-data v3, :array_51

    sget v4, Lcom/vanniktech/emoji/google/R$drawable;->emoji_google_1f1ec_1f1ee:I

    invoke-direct {v1, v3, v4}, Lcom/vanniktech/emoji/emoji/Emoji;-><init>([II)V

    const/16 v3, 0x55

    aput-object v1, v0, v3

    new-instance v1, Lcom/vanniktech/emoji/emoji/Emoji;

    new-array v3, v2, [I

    fill-array-data v3, :array_52

    sget v4, Lcom/vanniktech/emoji/google/R$drawable;->emoji_google_1f1ec_1f1f7:I

    invoke-direct {v1, v3, v4}, Lcom/vanniktech/emoji/emoji/Emoji;-><init>([II)V

    const/16 v3, 0x56

    aput-object v1, v0, v3

    new-instance v1, Lcom/vanniktech/emoji/emoji/Emoji;

    new-array v3, v2, [I

    fill-array-data v3, :array_53

    sget v4, Lcom/vanniktech/emoji/google/R$drawable;->emoji_google_1f1ec_1f1f1:I

    invoke-direct {v1, v3, v4}, Lcom/vanniktech/emoji/emoji/Emoji;-><init>([II)V

    const/16 v3, 0x57

    aput-object v1, v0, v3

    new-instance v1, Lcom/vanniktech/emoji/emoji/Emoji;

    new-array v3, v2, [I

    fill-array-data v3, :array_54

    sget v4, Lcom/vanniktech/emoji/google/R$drawable;->emoji_google_1f1ec_1f1e9:I

    invoke-direct {v1, v3, v4}, Lcom/vanniktech/emoji/emoji/Emoji;-><init>([II)V

    const/16 v3, 0x58

    aput-object v1, v0, v3

    new-instance v1, Lcom/vanniktech/emoji/emoji/Emoji;

    new-array v3, v2, [I

    fill-array-data v3, :array_55

    sget v4, Lcom/vanniktech/emoji/google/R$drawable;->emoji_google_1f1ec_1f1fa:I

    invoke-direct {v1, v3, v4}, Lcom/vanniktech/emoji/emoji/Emoji;-><init>([II)V

    const/16 v3, 0x59

    aput-object v1, v0, v3

    new-instance v1, Lcom/vanniktech/emoji/emoji/Emoji;

    new-array v3, v2, [I

    fill-array-data v3, :array_56

    sget v4, Lcom/vanniktech/emoji/google/R$drawable;->emoji_google_1f1ec_1f1f9:I

    invoke-direct {v1, v3, v4}, Lcom/vanniktech/emoji/emoji/Emoji;-><init>([II)V

    const/16 v3, 0x5a

    aput-object v1, v0, v3

    new-instance v1, Lcom/vanniktech/emoji/emoji/Emoji;

    new-array v3, v2, [I

    fill-array-data v3, :array_57

    sget v4, Lcom/vanniktech/emoji/google/R$drawable;->emoji_google_1f1ec_1f1ec:I

    invoke-direct {v1, v3, v4}, Lcom/vanniktech/emoji/emoji/Emoji;-><init>([II)V

    const/16 v3, 0x5b

    aput-object v1, v0, v3

    new-instance v1, Lcom/vanniktech/emoji/emoji/Emoji;

    new-array v3, v2, [I

    fill-array-data v3, :array_58

    sget v4, Lcom/vanniktech/emoji/google/R$drawable;->emoji_google_1f1ec_1f1f3:I

    invoke-direct {v1, v3, v4}, Lcom/vanniktech/emoji/emoji/Emoji;-><init>([II)V

    const/16 v3, 0x5c

    aput-object v1, v0, v3

    new-instance v1, Lcom/vanniktech/emoji/emoji/Emoji;

    new-array v3, v2, [I

    fill-array-data v3, :array_59

    sget v4, Lcom/vanniktech/emoji/google/R$drawable;->emoji_google_1f1ec_1f1fc:I

    invoke-direct {v1, v3, v4}, Lcom/vanniktech/emoji/emoji/Emoji;-><init>([II)V

    const/16 v3, 0x5d

    aput-object v1, v0, v3

    new-instance v1, Lcom/vanniktech/emoji/emoji/Emoji;

    new-array v3, v2, [I

    fill-array-data v3, :array_5a

    sget v4, Lcom/vanniktech/emoji/google/R$drawable;->emoji_google_1f1ec_1f1fe:I

    invoke-direct {v1, v3, v4}, Lcom/vanniktech/emoji/emoji/Emoji;-><init>([II)V

    const/16 v3, 0x5e

    aput-object v1, v0, v3

    new-instance v1, Lcom/vanniktech/emoji/emoji/Emoji;

    new-array v3, v2, [I

    fill-array-data v3, :array_5b

    sget v4, Lcom/vanniktech/emoji/google/R$drawable;->emoji_google_1f1ed_1f1f9:I

    invoke-direct {v1, v3, v4}, Lcom/vanniktech/emoji/emoji/Emoji;-><init>([II)V

    const/16 v3, 0x5f

    aput-object v1, v0, v3

    new-instance v1, Lcom/vanniktech/emoji/emoji/Emoji;

    new-array v3, v2, [I

    fill-array-data v3, :array_5c

    sget v4, Lcom/vanniktech/emoji/google/R$drawable;->emoji_google_1f1ed_1f1f3:I

    invoke-direct {v1, v3, v4}, Lcom/vanniktech/emoji/emoji/Emoji;-><init>([II)V

    const/16 v3, 0x60

    aput-object v1, v0, v3

    new-instance v1, Lcom/vanniktech/emoji/emoji/Emoji;

    new-array v3, v2, [I

    fill-array-data v3, :array_5d

    sget v4, Lcom/vanniktech/emoji/google/R$drawable;->emoji_google_1f1ed_1f1f0:I

    invoke-direct {v1, v3, v4}, Lcom/vanniktech/emoji/emoji/Emoji;-><init>([II)V

    const/16 v3, 0x61

    aput-object v1, v0, v3

    new-instance v1, Lcom/vanniktech/emoji/emoji/Emoji;

    new-array v3, v2, [I

    fill-array-data v3, :array_5e

    sget v4, Lcom/vanniktech/emoji/google/R$drawable;->emoji_google_1f1ed_1f1fa:I

    invoke-direct {v1, v3, v4}, Lcom/vanniktech/emoji/emoji/Emoji;-><init>([II)V

    const/16 v3, 0x62

    aput-object v1, v0, v3

    new-instance v1, Lcom/vanniktech/emoji/emoji/Emoji;

    new-array v3, v2, [I

    fill-array-data v3, :array_5f

    sget v4, Lcom/vanniktech/emoji/google/R$drawable;->emoji_google_1f1ee_1f1f8:I

    invoke-direct {v1, v3, v4}, Lcom/vanniktech/emoji/emoji/Emoji;-><init>([II)V

    const/16 v3, 0x63

    aput-object v1, v0, v3

    new-instance v1, Lcom/vanniktech/emoji/emoji/Emoji;

    new-array v3, v2, [I

    fill-array-data v3, :array_60

    sget v4, Lcom/vanniktech/emoji/google/R$drawable;->emoji_google_1f1ee_1f1f3:I

    invoke-direct {v1, v3, v4}, Lcom/vanniktech/emoji/emoji/Emoji;-><init>([II)V

    const/16 v3, 0x64

    aput-object v1, v0, v3

    new-instance v1, Lcom/vanniktech/emoji/emoji/Emoji;

    new-array v3, v2, [I

    fill-array-data v3, :array_61

    sget v4, Lcom/vanniktech/emoji/google/R$drawable;->emoji_google_1f1ee_1f1e9:I

    invoke-direct {v1, v3, v4}, Lcom/vanniktech/emoji/emoji/Emoji;-><init>([II)V

    const/16 v3, 0x65

    aput-object v1, v0, v3

    new-instance v1, Lcom/vanniktech/emoji/emoji/Emoji;

    new-array v3, v2, [I

    fill-array-data v3, :array_62

    sget v4, Lcom/vanniktech/emoji/google/R$drawable;->emoji_google_1f1ee_1f1f7:I

    invoke-direct {v1, v3, v4}, Lcom/vanniktech/emoji/emoji/Emoji;-><init>([II)V

    const/16 v3, 0x66

    aput-object v1, v0, v3

    new-instance v1, Lcom/vanniktech/emoji/emoji/Emoji;

    new-array v3, v2, [I

    fill-array-data v3, :array_63

    sget v4, Lcom/vanniktech/emoji/google/R$drawable;->emoji_google_1f1ee_1f1f6:I

    invoke-direct {v1, v3, v4}, Lcom/vanniktech/emoji/emoji/Emoji;-><init>([II)V

    const/16 v3, 0x67

    aput-object v1, v0, v3

    new-instance v1, Lcom/vanniktech/emoji/emoji/Emoji;

    new-array v3, v2, [I

    fill-array-data v3, :array_64

    sget v4, Lcom/vanniktech/emoji/google/R$drawable;->emoji_google_1f1ee_1f1ea:I

    invoke-direct {v1, v3, v4}, Lcom/vanniktech/emoji/emoji/Emoji;-><init>([II)V

    const/16 v3, 0x68

    aput-object v1, v0, v3

    new-instance v1, Lcom/vanniktech/emoji/emoji/Emoji;

    new-array v3, v2, [I

    fill-array-data v3, :array_65

    sget v4, Lcom/vanniktech/emoji/google/R$drawable;->emoji_google_1f1ee_1f1f2:I

    invoke-direct {v1, v3, v4}, Lcom/vanniktech/emoji/emoji/Emoji;-><init>([II)V

    const/16 v3, 0x69

    aput-object v1, v0, v3

    new-instance v1, Lcom/vanniktech/emoji/emoji/Emoji;

    new-array v3, v2, [I

    fill-array-data v3, :array_66

    sget v4, Lcom/vanniktech/emoji/google/R$drawable;->emoji_google_1f1ee_1f1f1:I

    invoke-direct {v1, v3, v4}, Lcom/vanniktech/emoji/emoji/Emoji;-><init>([II)V

    const/16 v3, 0x6a

    aput-object v1, v0, v3

    new-instance v1, Lcom/vanniktech/emoji/emoji/Emoji;

    new-array v3, v2, [I

    fill-array-data v3, :array_67

    sget v4, Lcom/vanniktech/emoji/google/R$drawable;->emoji_google_1f1ee_1f1f9:I

    invoke-direct {v1, v3, v4}, Lcom/vanniktech/emoji/emoji/Emoji;-><init>([II)V

    const/16 v3, 0x6b

    aput-object v1, v0, v3

    new-instance v1, Lcom/vanniktech/emoji/emoji/Emoji;

    new-array v3, v2, [I

    fill-array-data v3, :array_68

    sget v4, Lcom/vanniktech/emoji/google/R$drawable;->emoji_google_1f1ef_1f1f2:I

    invoke-direct {v1, v3, v4}, Lcom/vanniktech/emoji/emoji/Emoji;-><init>([II)V

    const/16 v3, 0x6c

    aput-object v1, v0, v3

    new-instance v1, Lcom/vanniktech/emoji/emoji/Emoji;

    new-array v3, v2, [I

    fill-array-data v3, :array_69

    sget v4, Lcom/vanniktech/emoji/google/R$drawable;->emoji_google_1f1ef_1f1f5:I

    invoke-direct {v1, v3, v4}, Lcom/vanniktech/emoji/emoji/Emoji;-><init>([II)V

    const/16 v3, 0x6d

    aput-object v1, v0, v3

    new-instance v1, Lcom/vanniktech/emoji/emoji/Emoji;

    sget v3, Lcom/vanniktech/emoji/google/R$drawable;->emoji_google_1f38c:I

    const v4, 0x1f38c

    invoke-direct {v1, v4, v3}, Lcom/vanniktech/emoji/emoji/Emoji;-><init>(II)V

    const/16 v3, 0x6e

    aput-object v1, v0, v3

    new-instance v1, Lcom/vanniktech/emoji/emoji/Emoji;

    new-array v3, v2, [I

    fill-array-data v3, :array_6a

    sget v4, Lcom/vanniktech/emoji/google/R$drawable;->emoji_google_1f1ef_1f1ea:I

    invoke-direct {v1, v3, v4}, Lcom/vanniktech/emoji/emoji/Emoji;-><init>([II)V

    const/16 v3, 0x6f

    aput-object v1, v0, v3

    new-instance v1, Lcom/vanniktech/emoji/emoji/Emoji;

    new-array v3, v2, [I

    fill-array-data v3, :array_6b

    sget v4, Lcom/vanniktech/emoji/google/R$drawable;->emoji_google_1f1ef_1f1f4:I

    invoke-direct {v1, v3, v4}, Lcom/vanniktech/emoji/emoji/Emoji;-><init>([II)V

    const/16 v3, 0x70

    aput-object v1, v0, v3

    new-instance v1, Lcom/vanniktech/emoji/emoji/Emoji;

    new-array v3, v2, [I

    fill-array-data v3, :array_6c

    sget v4, Lcom/vanniktech/emoji/google/R$drawable;->emoji_google_1f1f0_1f1ff:I

    invoke-direct {v1, v3, v4}, Lcom/vanniktech/emoji/emoji/Emoji;-><init>([II)V

    const/16 v3, 0x71

    aput-object v1, v0, v3

    new-instance v1, Lcom/vanniktech/emoji/emoji/Emoji;

    new-array v3, v2, [I

    fill-array-data v3, :array_6d

    sget v4, Lcom/vanniktech/emoji/google/R$drawable;->emoji_google_1f1f0_1f1ea:I

    invoke-direct {v1, v3, v4}, Lcom/vanniktech/emoji/emoji/Emoji;-><init>([II)V

    const/16 v3, 0x72

    aput-object v1, v0, v3

    new-instance v1, Lcom/vanniktech/emoji/emoji/Emoji;

    new-array v3, v2, [I

    fill-array-data v3, :array_6e

    sget v4, Lcom/vanniktech/emoji/google/R$drawable;->emoji_google_1f1f0_1f1ee:I

    invoke-direct {v1, v3, v4}, Lcom/vanniktech/emoji/emoji/Emoji;-><init>([II)V

    const/16 v3, 0x73

    aput-object v1, v0, v3

    new-instance v1, Lcom/vanniktech/emoji/emoji/Emoji;

    new-array v3, v2, [I

    fill-array-data v3, :array_6f

    sget v4, Lcom/vanniktech/emoji/google/R$drawable;->emoji_google_1f1f0_1f1fc:I

    invoke-direct {v1, v3, v4}, Lcom/vanniktech/emoji/emoji/Emoji;-><init>([II)V

    const/16 v3, 0x74

    aput-object v1, v0, v3

    new-instance v1, Lcom/vanniktech/emoji/emoji/Emoji;

    new-array v3, v2, [I

    fill-array-data v3, :array_70

    sget v4, Lcom/vanniktech/emoji/google/R$drawable;->emoji_google_1f1f0_1f1ec:I

    invoke-direct {v1, v3, v4}, Lcom/vanniktech/emoji/emoji/Emoji;-><init>([II)V

    const/16 v3, 0x75

    aput-object v1, v0, v3

    new-instance v1, Lcom/vanniktech/emoji/emoji/Emoji;

    new-array v3, v2, [I

    fill-array-data v3, :array_71

    sget v4, Lcom/vanniktech/emoji/google/R$drawable;->emoji_google_1f1f1_1f1e6:I

    invoke-direct {v1, v3, v4}, Lcom/vanniktech/emoji/emoji/Emoji;-><init>([II)V

    const/16 v3, 0x76

    aput-object v1, v0, v3

    new-instance v1, Lcom/vanniktech/emoji/emoji/Emoji;

    new-array v3, v2, [I

    fill-array-data v3, :array_72

    sget v4, Lcom/vanniktech/emoji/google/R$drawable;->emoji_google_1f1f1_1f1fb:I

    invoke-direct {v1, v3, v4}, Lcom/vanniktech/emoji/emoji/Emoji;-><init>([II)V

    const/16 v3, 0x77

    aput-object v1, v0, v3

    new-instance v1, Lcom/vanniktech/emoji/emoji/Emoji;

    new-array v3, v2, [I

    fill-array-data v3, :array_73

    sget v4, Lcom/vanniktech/emoji/google/R$drawable;->emoji_google_1f1f1_1f1e7:I

    invoke-direct {v1, v3, v4}, Lcom/vanniktech/emoji/emoji/Emoji;-><init>([II)V

    const/16 v3, 0x78

    aput-object v1, v0, v3

    new-instance v1, Lcom/vanniktech/emoji/emoji/Emoji;

    new-array v3, v2, [I

    fill-array-data v3, :array_74

    sget v4, Lcom/vanniktech/emoji/google/R$drawable;->emoji_google_1f1f1_1f1f8:I

    invoke-direct {v1, v3, v4}, Lcom/vanniktech/emoji/emoji/Emoji;-><init>([II)V

    const/16 v3, 0x79

    aput-object v1, v0, v3

    new-instance v1, Lcom/vanniktech/emoji/emoji/Emoji;

    new-array v3, v2, [I

    fill-array-data v3, :array_75

    sget v4, Lcom/vanniktech/emoji/google/R$drawable;->emoji_google_1f1f1_1f1f7:I

    invoke-direct {v1, v3, v4}, Lcom/vanniktech/emoji/emoji/Emoji;-><init>([II)V

    const/16 v3, 0x7a

    aput-object v1, v0, v3

    new-instance v1, Lcom/vanniktech/emoji/emoji/Emoji;

    new-array v3, v2, [I

    fill-array-data v3, :array_76

    sget v4, Lcom/vanniktech/emoji/google/R$drawable;->emoji_google_1f1f1_1f1fe:I

    invoke-direct {v1, v3, v4}, Lcom/vanniktech/emoji/emoji/Emoji;-><init>([II)V

    const/16 v3, 0x7b

    aput-object v1, v0, v3

    new-instance v1, Lcom/vanniktech/emoji/emoji/Emoji;

    new-array v3, v2, [I

    fill-array-data v3, :array_77

    sget v4, Lcom/vanniktech/emoji/google/R$drawable;->emoji_google_1f1f1_1f1ee:I

    invoke-direct {v1, v3, v4}, Lcom/vanniktech/emoji/emoji/Emoji;-><init>([II)V

    const/16 v3, 0x7c

    aput-object v1, v0, v3

    new-instance v1, Lcom/vanniktech/emoji/emoji/Emoji;

    new-array v3, v2, [I

    fill-array-data v3, :array_78

    sget v4, Lcom/vanniktech/emoji/google/R$drawable;->emoji_google_1f1f1_1f1f9:I

    invoke-direct {v1, v3, v4}, Lcom/vanniktech/emoji/emoji/Emoji;-><init>([II)V

    const/16 v3, 0x7d

    aput-object v1, v0, v3

    new-instance v1, Lcom/vanniktech/emoji/emoji/Emoji;

    new-array v3, v2, [I

    fill-array-data v3, :array_79

    sget v4, Lcom/vanniktech/emoji/google/R$drawable;->emoji_google_1f1f1_1f1fa:I

    invoke-direct {v1, v3, v4}, Lcom/vanniktech/emoji/emoji/Emoji;-><init>([II)V

    const/16 v3, 0x7e

    aput-object v1, v0, v3

    new-instance v1, Lcom/vanniktech/emoji/emoji/Emoji;

    new-array v3, v2, [I

    fill-array-data v3, :array_7a

    sget v4, Lcom/vanniktech/emoji/google/R$drawable;->emoji_google_1f1f2_1f1f4:I

    invoke-direct {v1, v3, v4}, Lcom/vanniktech/emoji/emoji/Emoji;-><init>([II)V

    const/16 v3, 0x7f

    aput-object v1, v0, v3

    new-instance v1, Lcom/vanniktech/emoji/emoji/Emoji;

    new-array v3, v2, [I

    fill-array-data v3, :array_7b

    sget v4, Lcom/vanniktech/emoji/google/R$drawable;->emoji_google_1f1f2_1f1f0:I

    invoke-direct {v1, v3, v4}, Lcom/vanniktech/emoji/emoji/Emoji;-><init>([II)V

    const/16 v3, 0x80

    aput-object v1, v0, v3

    new-instance v1, Lcom/vanniktech/emoji/emoji/Emoji;

    new-array v3, v2, [I

    fill-array-data v3, :array_7c

    sget v4, Lcom/vanniktech/emoji/google/R$drawable;->emoji_google_1f1f2_1f1ec:I

    invoke-direct {v1, v3, v4}, Lcom/vanniktech/emoji/emoji/Emoji;-><init>([II)V

    const/16 v3, 0x81

    aput-object v1, v0, v3

    new-instance v1, Lcom/vanniktech/emoji/emoji/Emoji;

    new-array v3, v2, [I

    fill-array-data v3, :array_7d

    sget v4, Lcom/vanniktech/emoji/google/R$drawable;->emoji_google_1f1f2_1f1fc:I

    invoke-direct {v1, v3, v4}, Lcom/vanniktech/emoji/emoji/Emoji;-><init>([II)V

    const/16 v3, 0x82

    aput-object v1, v0, v3

    new-instance v1, Lcom/vanniktech/emoji/emoji/Emoji;

    new-array v3, v2, [I

    fill-array-data v3, :array_7e

    sget v4, Lcom/vanniktech/emoji/google/R$drawable;->emoji_google_1f1f2_1f1fe:I

    invoke-direct {v1, v3, v4}, Lcom/vanniktech/emoji/emoji/Emoji;-><init>([II)V

    const/16 v3, 0x83

    aput-object v1, v0, v3

    new-instance v1, Lcom/vanniktech/emoji/emoji/Emoji;

    new-array v3, v2, [I

    fill-array-data v3, :array_7f

    sget v4, Lcom/vanniktech/emoji/google/R$drawable;->emoji_google_1f1f2_1f1fb:I

    invoke-direct {v1, v3, v4}, Lcom/vanniktech/emoji/emoji/Emoji;-><init>([II)V

    const/16 v3, 0x84

    aput-object v1, v0, v3

    new-instance v1, Lcom/vanniktech/emoji/emoji/Emoji;

    new-array v3, v2, [I

    fill-array-data v3, :array_80

    sget v4, Lcom/vanniktech/emoji/google/R$drawable;->emoji_google_1f1f2_1f1f1:I

    invoke-direct {v1, v3, v4}, Lcom/vanniktech/emoji/emoji/Emoji;-><init>([II)V

    const/16 v3, 0x85

    aput-object v1, v0, v3

    new-instance v1, Lcom/vanniktech/emoji/emoji/Emoji;

    new-array v3, v2, [I

    fill-array-data v3, :array_81

    sget v4, Lcom/vanniktech/emoji/google/R$drawable;->emoji_google_1f1f2_1f1f9:I

    invoke-direct {v1, v3, v4}, Lcom/vanniktech/emoji/emoji/Emoji;-><init>([II)V

    const/16 v3, 0x86

    aput-object v1, v0, v3

    new-instance v1, Lcom/vanniktech/emoji/emoji/Emoji;

    new-array v3, v2, [I

    fill-array-data v3, :array_82

    sget v4, Lcom/vanniktech/emoji/google/R$drawable;->emoji_google_1f1f2_1f1ed:I

    invoke-direct {v1, v3, v4}, Lcom/vanniktech/emoji/emoji/Emoji;-><init>([II)V

    const/16 v3, 0x87

    aput-object v1, v0, v3

    new-instance v1, Lcom/vanniktech/emoji/emoji/Emoji;

    new-array v3, v2, [I

    fill-array-data v3, :array_83

    sget v4, Lcom/vanniktech/emoji/google/R$drawable;->emoji_google_1f1f2_1f1f7:I

    invoke-direct {v1, v3, v4}, Lcom/vanniktech/emoji/emoji/Emoji;-><init>([II)V

    const/16 v3, 0x88

    aput-object v1, v0, v3

    new-instance v1, Lcom/vanniktech/emoji/emoji/Emoji;

    new-array v3, v2, [I

    fill-array-data v3, :array_84

    sget v4, Lcom/vanniktech/emoji/google/R$drawable;->emoji_google_1f1f2_1f1fa:I

    invoke-direct {v1, v3, v4}, Lcom/vanniktech/emoji/emoji/Emoji;-><init>([II)V

    const/16 v3, 0x89

    aput-object v1, v0, v3

    new-instance v1, Lcom/vanniktech/emoji/emoji/Emoji;

    new-array v3, v2, [I

    fill-array-data v3, :array_85

    sget v4, Lcom/vanniktech/emoji/google/R$drawable;->emoji_google_1f1f2_1f1fd:I

    invoke-direct {v1, v3, v4}, Lcom/vanniktech/emoji/emoji/Emoji;-><init>([II)V

    const/16 v3, 0x8a

    aput-object v1, v0, v3

    new-instance v1, Lcom/vanniktech/emoji/emoji/Emoji;

    new-array v3, v2, [I

    fill-array-data v3, :array_86

    sget v4, Lcom/vanniktech/emoji/google/R$drawable;->emoji_google_1f1eb_1f1f2:I

    invoke-direct {v1, v3, v4}, Lcom/vanniktech/emoji/emoji/Emoji;-><init>([II)V

    const/16 v3, 0x8b

    aput-object v1, v0, v3

    new-instance v1, Lcom/vanniktech/emoji/emoji/Emoji;

    new-array v3, v2, [I

    fill-array-data v3, :array_87

    sget v4, Lcom/vanniktech/emoji/google/R$drawable;->emoji_google_1f1f2_1f1e9:I

    invoke-direct {v1, v3, v4}, Lcom/vanniktech/emoji/emoji/Emoji;-><init>([II)V

    const/16 v3, 0x8c

    aput-object v1, v0, v3

    new-instance v1, Lcom/vanniktech/emoji/emoji/Emoji;

    new-array v3, v2, [I

    fill-array-data v3, :array_88

    sget v4, Lcom/vanniktech/emoji/google/R$drawable;->emoji_google_1f1f2_1f1e8:I

    invoke-direct {v1, v3, v4}, Lcom/vanniktech/emoji/emoji/Emoji;-><init>([II)V

    const/16 v3, 0x8d

    aput-object v1, v0, v3

    new-instance v1, Lcom/vanniktech/emoji/emoji/Emoji;

    new-array v3, v2, [I

    fill-array-data v3, :array_89

    sget v4, Lcom/vanniktech/emoji/google/R$drawable;->emoji_google_1f1f2_1f1f3:I

    invoke-direct {v1, v3, v4}, Lcom/vanniktech/emoji/emoji/Emoji;-><init>([II)V

    const/16 v3, 0x8e

    aput-object v1, v0, v3

    new-instance v1, Lcom/vanniktech/emoji/emoji/Emoji;

    new-array v3, v2, [I

    fill-array-data v3, :array_8a

    sget v4, Lcom/vanniktech/emoji/google/R$drawable;->emoji_google_1f1f2_1f1ea:I

    invoke-direct {v1, v3, v4}, Lcom/vanniktech/emoji/emoji/Emoji;-><init>([II)V

    const/16 v3, 0x8f

    aput-object v1, v0, v3

    new-instance v1, Lcom/vanniktech/emoji/emoji/Emoji;

    new-array v3, v2, [I

    fill-array-data v3, :array_8b

    sget v4, Lcom/vanniktech/emoji/google/R$drawable;->emoji_google_1f1f2_1f1f8:I

    invoke-direct {v1, v3, v4}, Lcom/vanniktech/emoji/emoji/Emoji;-><init>([II)V

    const/16 v3, 0x90

    aput-object v1, v0, v3

    new-instance v1, Lcom/vanniktech/emoji/emoji/Emoji;

    new-array v3, v2, [I

    fill-array-data v3, :array_8c

    sget v4, Lcom/vanniktech/emoji/google/R$drawable;->emoji_google_1f1f2_1f1e6:I

    invoke-direct {v1, v3, v4}, Lcom/vanniktech/emoji/emoji/Emoji;-><init>([II)V

    const/16 v3, 0x91

    aput-object v1, v0, v3

    new-instance v1, Lcom/vanniktech/emoji/emoji/Emoji;

    new-array v3, v2, [I

    fill-array-data v3, :array_8d

    sget v4, Lcom/vanniktech/emoji/google/R$drawable;->emoji_google_1f1f2_1f1ff:I

    invoke-direct {v1, v3, v4}, Lcom/vanniktech/emoji/emoji/Emoji;-><init>([II)V

    const/16 v3, 0x92

    aput-object v1, v0, v3

    new-instance v1, Lcom/vanniktech/emoji/emoji/Emoji;

    new-array v3, v2, [I

    fill-array-data v3, :array_8e

    sget v4, Lcom/vanniktech/emoji/google/R$drawable;->emoji_google_1f1f2_1f1f2:I

    invoke-direct {v1, v3, v4}, Lcom/vanniktech/emoji/emoji/Emoji;-><init>([II)V

    const/16 v3, 0x93

    aput-object v1, v0, v3

    new-instance v1, Lcom/vanniktech/emoji/emoji/Emoji;

    new-array v3, v2, [I

    fill-array-data v3, :array_8f

    sget v4, Lcom/vanniktech/emoji/google/R$drawable;->emoji_google_1f1f3_1f1e6:I

    invoke-direct {v1, v3, v4}, Lcom/vanniktech/emoji/emoji/Emoji;-><init>([II)V

    const/16 v3, 0x94

    aput-object v1, v0, v3

    new-instance v1, Lcom/vanniktech/emoji/emoji/Emoji;

    new-array v3, v2, [I

    fill-array-data v3, :array_90

    sget v4, Lcom/vanniktech/emoji/google/R$drawable;->emoji_google_1f1f3_1f1f7:I

    invoke-direct {v1, v3, v4}, Lcom/vanniktech/emoji/emoji/Emoji;-><init>([II)V

    const/16 v3, 0x95

    aput-object v1, v0, v3

    new-instance v1, Lcom/vanniktech/emoji/emoji/Emoji;

    new-array v3, v2, [I

    fill-array-data v3, :array_91

    sget v4, Lcom/vanniktech/emoji/google/R$drawable;->emoji_google_1f1f3_1f1f5:I

    invoke-direct {v1, v3, v4}, Lcom/vanniktech/emoji/emoji/Emoji;-><init>([II)V

    const/16 v3, 0x96

    aput-object v1, v0, v3

    new-instance v1, Lcom/vanniktech/emoji/emoji/Emoji;

    new-array v3, v2, [I

    fill-array-data v3, :array_92

    sget v4, Lcom/vanniktech/emoji/google/R$drawable;->emoji_google_1f1f3_1f1f1:I

    invoke-direct {v1, v3, v4}, Lcom/vanniktech/emoji/emoji/Emoji;-><init>([II)V

    const/16 v3, 0x97

    aput-object v1, v0, v3

    new-instance v1, Lcom/vanniktech/emoji/emoji/Emoji;

    new-array v3, v2, [I

    fill-array-data v3, :array_93

    sget v4, Lcom/vanniktech/emoji/google/R$drawable;->emoji_google_1f1f3_1f1ff:I

    invoke-direct {v1, v3, v4}, Lcom/vanniktech/emoji/emoji/Emoji;-><init>([II)V

    const/16 v3, 0x98

    aput-object v1, v0, v3

    new-instance v1, Lcom/vanniktech/emoji/emoji/Emoji;

    new-array v3, v2, [I

    fill-array-data v3, :array_94

    sget v4, Lcom/vanniktech/emoji/google/R$drawable;->emoji_google_1f1f3_1f1ee:I

    invoke-direct {v1, v3, v4}, Lcom/vanniktech/emoji/emoji/Emoji;-><init>([II)V

    const/16 v3, 0x99

    aput-object v1, v0, v3

    new-instance v1, Lcom/vanniktech/emoji/emoji/Emoji;

    new-array v3, v2, [I

    fill-array-data v3, :array_95

    sget v4, Lcom/vanniktech/emoji/google/R$drawable;->emoji_google_1f1f3_1f1ea:I

    invoke-direct {v1, v3, v4}, Lcom/vanniktech/emoji/emoji/Emoji;-><init>([II)V

    const/16 v3, 0x9a

    aput-object v1, v0, v3

    new-instance v1, Lcom/vanniktech/emoji/emoji/Emoji;

    new-array v3, v2, [I

    fill-array-data v3, :array_96

    sget v4, Lcom/vanniktech/emoji/google/R$drawable;->emoji_google_1f1f3_1f1ec:I

    invoke-direct {v1, v3, v4}, Lcom/vanniktech/emoji/emoji/Emoji;-><init>([II)V

    const/16 v3, 0x9b

    aput-object v1, v0, v3

    new-instance v1, Lcom/vanniktech/emoji/emoji/Emoji;

    new-array v3, v2, [I

    fill-array-data v3, :array_97

    sget v4, Lcom/vanniktech/emoji/google/R$drawable;->emoji_google_1f1f3_1f1fa:I

    invoke-direct {v1, v3, v4}, Lcom/vanniktech/emoji/emoji/Emoji;-><init>([II)V

    const/16 v3, 0x9c

    aput-object v1, v0, v3

    new-instance v1, Lcom/vanniktech/emoji/emoji/Emoji;

    new-array v3, v2, [I

    fill-array-data v3, :array_98

    sget v4, Lcom/vanniktech/emoji/google/R$drawable;->emoji_google_1f1f3_1f1eb:I

    invoke-direct {v1, v3, v4}, Lcom/vanniktech/emoji/emoji/Emoji;-><init>([II)V

    const/16 v3, 0x9d

    aput-object v1, v0, v3

    new-instance v1, Lcom/vanniktech/emoji/emoji/Emoji;

    new-array v3, v2, [I

    fill-array-data v3, :array_99

    sget v4, Lcom/vanniktech/emoji/google/R$drawable;->emoji_google_1f1f0_1f1f5:I

    invoke-direct {v1, v3, v4}, Lcom/vanniktech/emoji/emoji/Emoji;-><init>([II)V

    const/16 v3, 0x9e

    aput-object v1, v0, v3

    new-instance v1, Lcom/vanniktech/emoji/emoji/Emoji;

    new-array v3, v2, [I

    fill-array-data v3, :array_9a

    sget v4, Lcom/vanniktech/emoji/google/R$drawable;->emoji_google_1f1f2_1f1f5:I

    invoke-direct {v1, v3, v4}, Lcom/vanniktech/emoji/emoji/Emoji;-><init>([II)V

    const/16 v3, 0x9f

    aput-object v1, v0, v3

    new-instance v1, Lcom/vanniktech/emoji/emoji/Emoji;

    new-array v3, v2, [I

    fill-array-data v3, :array_9b

    sget v4, Lcom/vanniktech/emoji/google/R$drawable;->emoji_google_1f1f4_1f1f2:I

    invoke-direct {v1, v3, v4}, Lcom/vanniktech/emoji/emoji/Emoji;-><init>([II)V

    const/16 v3, 0xa0

    aput-object v1, v0, v3

    new-instance v1, Lcom/vanniktech/emoji/emoji/Emoji;

    new-array v3, v2, [I

    fill-array-data v3, :array_9c

    sget v4, Lcom/vanniktech/emoji/google/R$drawable;->emoji_google_1f1f5_1f1f0:I

    invoke-direct {v1, v3, v4}, Lcom/vanniktech/emoji/emoji/Emoji;-><init>([II)V

    const/16 v3, 0xa1

    aput-object v1, v0, v3

    new-instance v1, Lcom/vanniktech/emoji/emoji/Emoji;

    new-array v3, v2, [I

    fill-array-data v3, :array_9d

    sget v4, Lcom/vanniktech/emoji/google/R$drawable;->emoji_google_1f1f5_1f1fc:I

    invoke-direct {v1, v3, v4}, Lcom/vanniktech/emoji/emoji/Emoji;-><init>([II)V

    const/16 v3, 0xa2

    aput-object v1, v0, v3

    new-instance v1, Lcom/vanniktech/emoji/emoji/Emoji;

    new-array v3, v2, [I

    fill-array-data v3, :array_9e

    sget v4, Lcom/vanniktech/emoji/google/R$drawable;->emoji_google_1f1f5_1f1f8:I

    invoke-direct {v1, v3, v4}, Lcom/vanniktech/emoji/emoji/Emoji;-><init>([II)V

    const/16 v3, 0xa3

    aput-object v1, v0, v3

    new-instance v1, Lcom/vanniktech/emoji/emoji/Emoji;

    new-array v3, v2, [I

    fill-array-data v3, :array_9f

    sget v4, Lcom/vanniktech/emoji/google/R$drawable;->emoji_google_1f1f5_1f1e6:I

    invoke-direct {v1, v3, v4}, Lcom/vanniktech/emoji/emoji/Emoji;-><init>([II)V

    const/16 v3, 0xa4

    aput-object v1, v0, v3

    new-instance v1, Lcom/vanniktech/emoji/emoji/Emoji;

    new-array v3, v2, [I

    fill-array-data v3, :array_a0

    sget v4, Lcom/vanniktech/emoji/google/R$drawable;->emoji_google_1f1f5_1f1ec:I

    invoke-direct {v1, v3, v4}, Lcom/vanniktech/emoji/emoji/Emoji;-><init>([II)V

    const/16 v3, 0xa5

    aput-object v1, v0, v3

    new-instance v1, Lcom/vanniktech/emoji/emoji/Emoji;

    new-array v3, v2, [I

    fill-array-data v3, :array_a1

    sget v4, Lcom/vanniktech/emoji/google/R$drawable;->emoji_google_1f1f5_1f1fe:I

    invoke-direct {v1, v3, v4}, Lcom/vanniktech/emoji/emoji/Emoji;-><init>([II)V

    const/16 v3, 0xa6

    aput-object v1, v0, v3

    new-instance v1, Lcom/vanniktech/emoji/emoji/Emoji;

    new-array v3, v2, [I

    fill-array-data v3, :array_a2

    sget v4, Lcom/vanniktech/emoji/google/R$drawable;->emoji_google_1f1f5_1f1ea:I

    invoke-direct {v1, v3, v4}, Lcom/vanniktech/emoji/emoji/Emoji;-><init>([II)V

    const/16 v3, 0xa7

    aput-object v1, v0, v3

    new-instance v1, Lcom/vanniktech/emoji/emoji/Emoji;

    new-array v3, v2, [I

    fill-array-data v3, :array_a3

    sget v4, Lcom/vanniktech/emoji/google/R$drawable;->emoji_google_1f1f5_1f1ed:I

    invoke-direct {v1, v3, v4}, Lcom/vanniktech/emoji/emoji/Emoji;-><init>([II)V

    const/16 v3, 0xa8

    aput-object v1, v0, v3

    new-instance v1, Lcom/vanniktech/emoji/emoji/Emoji;

    new-array v3, v2, [I

    fill-array-data v3, :array_a4

    sget v4, Lcom/vanniktech/emoji/google/R$drawable;->emoji_google_1f1f5_1f1f3:I

    invoke-direct {v1, v3, v4}, Lcom/vanniktech/emoji/emoji/Emoji;-><init>([II)V

    const/16 v3, 0xa9

    aput-object v1, v0, v3

    new-instance v1, Lcom/vanniktech/emoji/emoji/Emoji;

    new-array v3, v2, [I

    fill-array-data v3, :array_a5

    sget v4, Lcom/vanniktech/emoji/google/R$drawable;->emoji_google_1f1f5_1f1f1:I

    invoke-direct {v1, v3, v4}, Lcom/vanniktech/emoji/emoji/Emoji;-><init>([II)V

    const/16 v3, 0xaa

    aput-object v1, v0, v3

    new-instance v1, Lcom/vanniktech/emoji/emoji/Emoji;

    new-array v3, v2, [I

    fill-array-data v3, :array_a6

    sget v4, Lcom/vanniktech/emoji/google/R$drawable;->emoji_google_1f1f5_1f1f9:I

    invoke-direct {v1, v3, v4}, Lcom/vanniktech/emoji/emoji/Emoji;-><init>([II)V

    const/16 v3, 0xab

    aput-object v1, v0, v3

    new-instance v1, Lcom/vanniktech/emoji/emoji/Emoji;

    new-array v3, v2, [I

    fill-array-data v3, :array_a7

    sget v4, Lcom/vanniktech/emoji/google/R$drawable;->emoji_google_1f1f5_1f1f7:I

    invoke-direct {v1, v3, v4}, Lcom/vanniktech/emoji/emoji/Emoji;-><init>([II)V

    const/16 v3, 0xac

    aput-object v1, v0, v3

    new-instance v1, Lcom/vanniktech/emoji/emoji/Emoji;

    new-array v3, v2, [I

    fill-array-data v3, :array_a8

    sget v4, Lcom/vanniktech/emoji/google/R$drawable;->emoji_google_1f1f6_1f1e6:I

    invoke-direct {v1, v3, v4}, Lcom/vanniktech/emoji/emoji/Emoji;-><init>([II)V

    const/16 v3, 0xad

    aput-object v1, v0, v3

    new-instance v1, Lcom/vanniktech/emoji/emoji/Emoji;

    new-array v3, v2, [I

    fill-array-data v3, :array_a9

    sget v4, Lcom/vanniktech/emoji/google/R$drawable;->emoji_google_1f1f7_1f1f4:I

    invoke-direct {v1, v3, v4}, Lcom/vanniktech/emoji/emoji/Emoji;-><init>([II)V

    const/16 v3, 0xae

    aput-object v1, v0, v3

    new-instance v1, Lcom/vanniktech/emoji/emoji/Emoji;

    new-array v3, v2, [I

    fill-array-data v3, :array_aa

    sget v4, Lcom/vanniktech/emoji/google/R$drawable;->emoji_google_1f1f7_1f1fa:I

    invoke-direct {v1, v3, v4}, Lcom/vanniktech/emoji/emoji/Emoji;-><init>([II)V

    const/16 v3, 0xaf

    aput-object v1, v0, v3

    new-instance v1, Lcom/vanniktech/emoji/emoji/Emoji;

    new-array v3, v2, [I

    fill-array-data v3, :array_ab

    sget v4, Lcom/vanniktech/emoji/google/R$drawable;->emoji_google_1f1f7_1f1fc:I

    invoke-direct {v1, v3, v4}, Lcom/vanniktech/emoji/emoji/Emoji;-><init>([II)V

    const/16 v3, 0xb0

    aput-object v1, v0, v3

    new-instance v1, Lcom/vanniktech/emoji/emoji/Emoji;

    new-array v3, v2, [I

    fill-array-data v3, :array_ac

    sget v4, Lcom/vanniktech/emoji/google/R$drawable;->emoji_google_1f1fc_1f1f8:I

    invoke-direct {v1, v3, v4}, Lcom/vanniktech/emoji/emoji/Emoji;-><init>([II)V

    const/16 v3, 0xb1

    aput-object v1, v0, v3

    new-instance v1, Lcom/vanniktech/emoji/emoji/Emoji;

    new-array v3, v2, [I

    fill-array-data v3, :array_ad

    sget v4, Lcom/vanniktech/emoji/google/R$drawable;->emoji_google_1f1f8_1f1f2:I

    invoke-direct {v1, v3, v4}, Lcom/vanniktech/emoji/emoji/Emoji;-><init>([II)V

    const/16 v3, 0xb2

    aput-object v1, v0, v3

    new-instance v1, Lcom/vanniktech/emoji/emoji/Emoji;

    new-array v3, v2, [I

    fill-array-data v3, :array_ae

    sget v4, Lcom/vanniktech/emoji/google/R$drawable;->emoji_google_1f1f8_1f1f9:I

    invoke-direct {v1, v3, v4}, Lcom/vanniktech/emoji/emoji/Emoji;-><init>([II)V

    const/16 v3, 0xb3

    aput-object v1, v0, v3

    new-instance v1, Lcom/vanniktech/emoji/emoji/Emoji;

    new-array v3, v2, [I

    fill-array-data v3, :array_af

    sget v4, Lcom/vanniktech/emoji/google/R$drawable;->emoji_google_1f1f8_1f1e6:I

    invoke-direct {v1, v3, v4}, Lcom/vanniktech/emoji/emoji/Emoji;-><init>([II)V

    const/16 v3, 0xb4

    aput-object v1, v0, v3

    new-instance v1, Lcom/vanniktech/emoji/emoji/Emoji;

    new-array v3, v2, [I

    fill-array-data v3, :array_b0

    sget v4, Lcom/vanniktech/emoji/google/R$drawable;->emoji_google_1f1f8_1f1f3:I

    invoke-direct {v1, v3, v4}, Lcom/vanniktech/emoji/emoji/Emoji;-><init>([II)V

    const/16 v3, 0xb5

    aput-object v1, v0, v3

    new-instance v1, Lcom/vanniktech/emoji/emoji/Emoji;

    new-array v3, v2, [I

    fill-array-data v3, :array_b1

    sget v4, Lcom/vanniktech/emoji/google/R$drawable;->emoji_google_1f1f7_1f1f8:I

    invoke-direct {v1, v3, v4}, Lcom/vanniktech/emoji/emoji/Emoji;-><init>([II)V

    const/16 v3, 0xb6

    aput-object v1, v0, v3

    new-instance v1, Lcom/vanniktech/emoji/emoji/Emoji;

    new-array v3, v2, [I

    fill-array-data v3, :array_b2

    sget v4, Lcom/vanniktech/emoji/google/R$drawable;->emoji_google_1f1f8_1f1e8:I

    invoke-direct {v1, v3, v4}, Lcom/vanniktech/emoji/emoji/Emoji;-><init>([II)V

    const/16 v3, 0xb7

    aput-object v1, v0, v3

    new-instance v1, Lcom/vanniktech/emoji/emoji/Emoji;

    new-array v3, v2, [I

    fill-array-data v3, :array_b3

    sget v4, Lcom/vanniktech/emoji/google/R$drawable;->emoji_google_1f1f8_1f1f1:I

    invoke-direct {v1, v3, v4}, Lcom/vanniktech/emoji/emoji/Emoji;-><init>([II)V

    const/16 v3, 0xb8

    aput-object v1, v0, v3

    new-instance v1, Lcom/vanniktech/emoji/emoji/Emoji;

    new-array v3, v2, [I

    fill-array-data v3, :array_b4

    sget v4, Lcom/vanniktech/emoji/google/R$drawable;->emoji_google_1f1f8_1f1ec:I

    invoke-direct {v1, v3, v4}, Lcom/vanniktech/emoji/emoji/Emoji;-><init>([II)V

    const/16 v3, 0xb9

    aput-object v1, v0, v3

    new-instance v1, Lcom/vanniktech/emoji/emoji/Emoji;

    new-array v3, v2, [I

    fill-array-data v3, :array_b5

    sget v4, Lcom/vanniktech/emoji/google/R$drawable;->emoji_google_1f1f8_1f1fd:I

    invoke-direct {v1, v3, v4}, Lcom/vanniktech/emoji/emoji/Emoji;-><init>([II)V

    const/16 v3, 0xba

    aput-object v1, v0, v3

    new-instance v1, Lcom/vanniktech/emoji/emoji/Emoji;

    new-array v3, v2, [I

    fill-array-data v3, :array_b6

    sget v4, Lcom/vanniktech/emoji/google/R$drawable;->emoji_google_1f1f8_1f1f0:I

    invoke-direct {v1, v3, v4}, Lcom/vanniktech/emoji/emoji/Emoji;-><init>([II)V

    const/16 v3, 0xbb

    aput-object v1, v0, v3

    new-instance v1, Lcom/vanniktech/emoji/emoji/Emoji;

    new-array v3, v2, [I

    fill-array-data v3, :array_b7

    sget v4, Lcom/vanniktech/emoji/google/R$drawable;->emoji_google_1f1f8_1f1ee:I

    invoke-direct {v1, v3, v4}, Lcom/vanniktech/emoji/emoji/Emoji;-><init>([II)V

    const/16 v3, 0xbc

    aput-object v1, v0, v3

    new-instance v1, Lcom/vanniktech/emoji/emoji/Emoji;

    new-array v3, v2, [I

    fill-array-data v3, :array_b8

    sget v4, Lcom/vanniktech/emoji/google/R$drawable;->emoji_google_1f1f8_1f1e7:I

    invoke-direct {v1, v3, v4}, Lcom/vanniktech/emoji/emoji/Emoji;-><init>([II)V

    const/16 v3, 0xbd

    aput-object v1, v0, v3

    new-instance v1, Lcom/vanniktech/emoji/emoji/Emoji;

    new-array v3, v2, [I

    fill-array-data v3, :array_b9

    sget v4, Lcom/vanniktech/emoji/google/R$drawable;->emoji_google_1f1f8_1f1f4:I

    invoke-direct {v1, v3, v4}, Lcom/vanniktech/emoji/emoji/Emoji;-><init>([II)V

    const/16 v3, 0xbe

    aput-object v1, v0, v3

    new-instance v1, Lcom/vanniktech/emoji/emoji/Emoji;

    new-array v3, v2, [I

    fill-array-data v3, :array_ba

    sget v4, Lcom/vanniktech/emoji/google/R$drawable;->emoji_google_1f1ff_1f1e6:I

    invoke-direct {v1, v3, v4}, Lcom/vanniktech/emoji/emoji/Emoji;-><init>([II)V

    const/16 v3, 0xbf

    aput-object v1, v0, v3

    new-instance v1, Lcom/vanniktech/emoji/emoji/Emoji;

    new-array v3, v2, [I

    fill-array-data v3, :array_bb

    sget v4, Lcom/vanniktech/emoji/google/R$drawable;->emoji_google_1f1f0_1f1f7:I

    invoke-direct {v1, v3, v4}, Lcom/vanniktech/emoji/emoji/Emoji;-><init>([II)V

    const/16 v3, 0xc0

    aput-object v1, v0, v3

    new-instance v1, Lcom/vanniktech/emoji/emoji/Emoji;

    new-array v3, v2, [I

    fill-array-data v3, :array_bc

    sget v4, Lcom/vanniktech/emoji/google/R$drawable;->emoji_google_1f1f8_1f1f8:I

    invoke-direct {v1, v3, v4}, Lcom/vanniktech/emoji/emoji/Emoji;-><init>([II)V

    const/16 v3, 0xc1

    aput-object v1, v0, v3

    new-instance v1, Lcom/vanniktech/emoji/emoji/Emoji;

    new-array v3, v2, [I

    fill-array-data v3, :array_bd

    sget v4, Lcom/vanniktech/emoji/google/R$drawable;->emoji_google_1f1f1_1f1f0:I

    invoke-direct {v1, v3, v4}, Lcom/vanniktech/emoji/emoji/Emoji;-><init>([II)V

    const/16 v3, 0xc2

    aput-object v1, v0, v3

    new-instance v1, Lcom/vanniktech/emoji/emoji/Emoji;

    new-array v3, v2, [I

    fill-array-data v3, :array_be

    sget v4, Lcom/vanniktech/emoji/google/R$drawable;->emoji_google_1f1f8_1f1ed:I

    invoke-direct {v1, v3, v4}, Lcom/vanniktech/emoji/emoji/Emoji;-><init>([II)V

    const/16 v3, 0xc3

    aput-object v1, v0, v3

    new-instance v1, Lcom/vanniktech/emoji/emoji/Emoji;

    new-array v3, v2, [I

    fill-array-data v3, :array_bf

    sget v4, Lcom/vanniktech/emoji/google/R$drawable;->emoji_google_1f1f0_1f1f3:I

    invoke-direct {v1, v3, v4}, Lcom/vanniktech/emoji/emoji/Emoji;-><init>([II)V

    const/16 v3, 0xc4

    aput-object v1, v0, v3

    new-instance v1, Lcom/vanniktech/emoji/emoji/Emoji;

    new-array v3, v2, [I

    fill-array-data v3, :array_c0

    sget v4, Lcom/vanniktech/emoji/google/R$drawable;->emoji_google_1f1f1_1f1e8:I

    invoke-direct {v1, v3, v4}, Lcom/vanniktech/emoji/emoji/Emoji;-><init>([II)V

    const/16 v3, 0xc5

    aput-object v1, v0, v3

    new-instance v1, Lcom/vanniktech/emoji/emoji/Emoji;

    new-array v3, v2, [I

    fill-array-data v3, :array_c1

    sget v4, Lcom/vanniktech/emoji/google/R$drawable;->emoji_google_1f1fb_1f1e8:I

    invoke-direct {v1, v3, v4}, Lcom/vanniktech/emoji/emoji/Emoji;-><init>([II)V

    const/16 v3, 0xc6

    aput-object v1, v0, v3

    new-instance v1, Lcom/vanniktech/emoji/emoji/Emoji;

    new-array v3, v2, [I

    fill-array-data v3, :array_c2

    sget v4, Lcom/vanniktech/emoji/google/R$drawable;->emoji_google_1f1f8_1f1e9:I

    invoke-direct {v1, v3, v4}, Lcom/vanniktech/emoji/emoji/Emoji;-><init>([II)V

    const/16 v3, 0xc7

    aput-object v1, v0, v3

    new-instance v1, Lcom/vanniktech/emoji/emoji/Emoji;

    new-array v3, v2, [I

    fill-array-data v3, :array_c3

    sget v4, Lcom/vanniktech/emoji/google/R$drawable;->emoji_google_1f1f8_1f1f7:I

    invoke-direct {v1, v3, v4}, Lcom/vanniktech/emoji/emoji/Emoji;-><init>([II)V

    const/16 v3, 0xc8

    aput-object v1, v0, v3

    new-instance v1, Lcom/vanniktech/emoji/emoji/Emoji;

    new-array v3, v2, [I

    fill-array-data v3, :array_c4

    sget v4, Lcom/vanniktech/emoji/google/R$drawable;->emoji_google_1f1f8_1f1ff:I

    invoke-direct {v1, v3, v4}, Lcom/vanniktech/emoji/emoji/Emoji;-><init>([II)V

    const/16 v3, 0xc9

    aput-object v1, v0, v3

    new-instance v1, Lcom/vanniktech/emoji/emoji/Emoji;

    new-array v3, v2, [I

    fill-array-data v3, :array_c5

    sget v4, Lcom/vanniktech/emoji/google/R$drawable;->emoji_google_1f1f8_1f1ea:I

    invoke-direct {v1, v3, v4}, Lcom/vanniktech/emoji/emoji/Emoji;-><init>([II)V

    const/16 v3, 0xca

    aput-object v1, v0, v3

    new-instance v1, Lcom/vanniktech/emoji/emoji/Emoji;

    new-array v3, v2, [I

    fill-array-data v3, :array_c6

    sget v4, Lcom/vanniktech/emoji/google/R$drawable;->emoji_google_1f1e8_1f1ed:I

    invoke-direct {v1, v3, v4}, Lcom/vanniktech/emoji/emoji/Emoji;-><init>([II)V

    const/16 v3, 0xcb

    aput-object v1, v0, v3

    new-instance v1, Lcom/vanniktech/emoji/emoji/Emoji;

    new-array v3, v2, [I

    fill-array-data v3, :array_c7

    sget v4, Lcom/vanniktech/emoji/google/R$drawable;->emoji_google_1f1f8_1f1fe:I

    invoke-direct {v1, v3, v4}, Lcom/vanniktech/emoji/emoji/Emoji;-><init>([II)V

    const/16 v3, 0xcc

    aput-object v1, v0, v3

    new-instance v1, Lcom/vanniktech/emoji/emoji/Emoji;

    new-array v3, v2, [I

    fill-array-data v3, :array_c8

    sget v4, Lcom/vanniktech/emoji/google/R$drawable;->emoji_google_1f1f9_1f1fc:I

    invoke-direct {v1, v3, v4}, Lcom/vanniktech/emoji/emoji/Emoji;-><init>([II)V

    const/16 v3, 0xcd

    aput-object v1, v0, v3

    new-instance v1, Lcom/vanniktech/emoji/emoji/Emoji;

    new-array v3, v2, [I

    fill-array-data v3, :array_c9

    sget v4, Lcom/vanniktech/emoji/google/R$drawable;->emoji_google_1f1f9_1f1ef:I

    invoke-direct {v1, v3, v4}, Lcom/vanniktech/emoji/emoji/Emoji;-><init>([II)V

    const/16 v3, 0xce

    aput-object v1, v0, v3

    new-instance v1, Lcom/vanniktech/emoji/emoji/Emoji;

    new-array v3, v2, [I

    fill-array-data v3, :array_ca

    sget v4, Lcom/vanniktech/emoji/google/R$drawable;->emoji_google_1f1f9_1f1ff:I

    invoke-direct {v1, v3, v4}, Lcom/vanniktech/emoji/emoji/Emoji;-><init>([II)V

    const/16 v3, 0xcf

    aput-object v1, v0, v3

    new-instance v1, Lcom/vanniktech/emoji/emoji/Emoji;

    new-array v3, v2, [I

    fill-array-data v3, :array_cb

    sget v4, Lcom/vanniktech/emoji/google/R$drawable;->emoji_google_1f1f9_1f1ed:I

    invoke-direct {v1, v3, v4}, Lcom/vanniktech/emoji/emoji/Emoji;-><init>([II)V

    const/16 v3, 0xd0

    aput-object v1, v0, v3

    new-instance v1, Lcom/vanniktech/emoji/emoji/Emoji;

    new-array v3, v2, [I

    fill-array-data v3, :array_cc

    sget v4, Lcom/vanniktech/emoji/google/R$drawable;->emoji_google_1f1f9_1f1f1:I

    invoke-direct {v1, v3, v4}, Lcom/vanniktech/emoji/emoji/Emoji;-><init>([II)V

    const/16 v3, 0xd1

    aput-object v1, v0, v3

    new-instance v1, Lcom/vanniktech/emoji/emoji/Emoji;

    new-array v3, v2, [I

    fill-array-data v3, :array_cd

    sget v4, Lcom/vanniktech/emoji/google/R$drawable;->emoji_google_1f1f9_1f1ec:I

    invoke-direct {v1, v3, v4}, Lcom/vanniktech/emoji/emoji/Emoji;-><init>([II)V

    const/16 v3, 0xd2

    aput-object v1, v0, v3

    new-instance v1, Lcom/vanniktech/emoji/emoji/Emoji;

    new-array v3, v2, [I

    fill-array-data v3, :array_ce

    sget v4, Lcom/vanniktech/emoji/google/R$drawable;->emoji_google_1f1f9_1f1f0:I

    invoke-direct {v1, v3, v4}, Lcom/vanniktech/emoji/emoji/Emoji;-><init>([II)V

    const/16 v3, 0xd3

    aput-object v1, v0, v3

    new-instance v1, Lcom/vanniktech/emoji/emoji/Emoji;

    new-array v3, v2, [I

    fill-array-data v3, :array_cf

    sget v4, Lcom/vanniktech/emoji/google/R$drawable;->emoji_google_1f1f9_1f1f4:I

    invoke-direct {v1, v3, v4}, Lcom/vanniktech/emoji/emoji/Emoji;-><init>([II)V

    const/16 v3, 0xd4

    aput-object v1, v0, v3

    new-instance v1, Lcom/vanniktech/emoji/emoji/Emoji;

    new-array v3, v2, [I

    fill-array-data v3, :array_d0

    sget v4, Lcom/vanniktech/emoji/google/R$drawable;->emoji_google_1f1f9_1f1f9:I

    invoke-direct {v1, v3, v4}, Lcom/vanniktech/emoji/emoji/Emoji;-><init>([II)V

    const/16 v3, 0xd5

    aput-object v1, v0, v3

    new-instance v1, Lcom/vanniktech/emoji/emoji/Emoji;

    new-array v3, v2, [I

    fill-array-data v3, :array_d1

    sget v4, Lcom/vanniktech/emoji/google/R$drawable;->emoji_google_1f1f9_1f1f3:I

    invoke-direct {v1, v3, v4}, Lcom/vanniktech/emoji/emoji/Emoji;-><init>([II)V

    const/16 v3, 0xd6

    aput-object v1, v0, v3

    new-instance v1, Lcom/vanniktech/emoji/emoji/Emoji;

    new-array v3, v2, [I

    fill-array-data v3, :array_d2

    sget v4, Lcom/vanniktech/emoji/google/R$drawable;->emoji_google_1f1f9_1f1f7:I

    invoke-direct {v1, v3, v4}, Lcom/vanniktech/emoji/emoji/Emoji;-><init>([II)V

    const/16 v3, 0xd7

    aput-object v1, v0, v3

    new-instance v1, Lcom/vanniktech/emoji/emoji/Emoji;

    new-array v3, v2, [I

    fill-array-data v3, :array_d3

    sget v4, Lcom/vanniktech/emoji/google/R$drawable;->emoji_google_1f1f9_1f1f2:I

    invoke-direct {v1, v3, v4}, Lcom/vanniktech/emoji/emoji/Emoji;-><init>([II)V

    const/16 v3, 0xd8

    aput-object v1, v0, v3

    new-instance v1, Lcom/vanniktech/emoji/emoji/Emoji;

    new-array v3, v2, [I

    fill-array-data v3, :array_d4

    sget v4, Lcom/vanniktech/emoji/google/R$drawable;->emoji_google_1f1f9_1f1e8:I

    invoke-direct {v1, v3, v4}, Lcom/vanniktech/emoji/emoji/Emoji;-><init>([II)V

    const/16 v3, 0xd9

    aput-object v1, v0, v3

    new-instance v1, Lcom/vanniktech/emoji/emoji/Emoji;

    new-array v3, v2, [I

    fill-array-data v3, :array_d5

    sget v4, Lcom/vanniktech/emoji/google/R$drawable;->emoji_google_1f1f9_1f1fb:I

    invoke-direct {v1, v3, v4}, Lcom/vanniktech/emoji/emoji/Emoji;-><init>([II)V

    const/16 v3, 0xda

    aput-object v1, v0, v3

    new-instance v1, Lcom/vanniktech/emoji/emoji/Emoji;

    new-array v3, v2, [I

    fill-array-data v3, :array_d6

    sget v4, Lcom/vanniktech/emoji/google/R$drawable;->emoji_google_1f1fb_1f1ee:I

    invoke-direct {v1, v3, v4}, Lcom/vanniktech/emoji/emoji/Emoji;-><init>([II)V

    const/16 v3, 0xdb

    aput-object v1, v0, v3

    new-instance v1, Lcom/vanniktech/emoji/emoji/Emoji;

    new-array v3, v2, [I

    fill-array-data v3, :array_d7

    sget v4, Lcom/vanniktech/emoji/google/R$drawable;->emoji_google_1f1fa_1f1ec:I

    invoke-direct {v1, v3, v4}, Lcom/vanniktech/emoji/emoji/Emoji;-><init>([II)V

    const/16 v3, 0xdc

    aput-object v1, v0, v3

    new-instance v1, Lcom/vanniktech/emoji/emoji/Emoji;

    new-array v3, v2, [I

    fill-array-data v3, :array_d8

    sget v4, Lcom/vanniktech/emoji/google/R$drawable;->emoji_google_1f1fa_1f1e6:I

    invoke-direct {v1, v3, v4}, Lcom/vanniktech/emoji/emoji/Emoji;-><init>([II)V

    const/16 v3, 0xdd

    aput-object v1, v0, v3

    new-instance v1, Lcom/vanniktech/emoji/emoji/Emoji;

    new-array v3, v2, [I

    fill-array-data v3, :array_d9

    sget v4, Lcom/vanniktech/emoji/google/R$drawable;->emoji_google_1f1e6_1f1ea:I

    invoke-direct {v1, v3, v4}, Lcom/vanniktech/emoji/emoji/Emoji;-><init>([II)V

    const/16 v3, 0xde

    aput-object v1, v0, v3

    new-instance v1, Lcom/vanniktech/emoji/emoji/Emoji;

    new-array v3, v2, [I

    fill-array-data v3, :array_da

    sget v4, Lcom/vanniktech/emoji/google/R$drawable;->emoji_google_1f1ec_1f1e7:I

    invoke-direct {v1, v3, v4}, Lcom/vanniktech/emoji/emoji/Emoji;-><init>([II)V

    const/16 v3, 0xdf

    aput-object v1, v0, v3

    new-instance v1, Lcom/vanniktech/emoji/emoji/Emoji;

    new-array v3, v2, [I

    fill-array-data v3, :array_db

    sget v4, Lcom/vanniktech/emoji/google/R$drawable;->emoji_google_1f1fa_1f1fe:I

    invoke-direct {v1, v3, v4}, Lcom/vanniktech/emoji/emoji/Emoji;-><init>([II)V

    const/16 v3, 0xe0

    aput-object v1, v0, v3

    new-instance v1, Lcom/vanniktech/emoji/emoji/Emoji;

    new-array v3, v2, [I

    fill-array-data v3, :array_dc

    sget v4, Lcom/vanniktech/emoji/google/R$drawable;->emoji_google_1f1fa_1f1ff:I

    invoke-direct {v1, v3, v4}, Lcom/vanniktech/emoji/emoji/Emoji;-><init>([II)V

    const/16 v3, 0xe1

    aput-object v1, v0, v3

    new-instance v1, Lcom/vanniktech/emoji/emoji/Emoji;

    new-array v3, v2, [I

    fill-array-data v3, :array_dd

    sget v4, Lcom/vanniktech/emoji/google/R$drawable;->emoji_google_1f1fb_1f1fa:I

    invoke-direct {v1, v3, v4}, Lcom/vanniktech/emoji/emoji/Emoji;-><init>([II)V

    const/16 v3, 0xe2

    aput-object v1, v0, v3

    new-instance v1, Lcom/vanniktech/emoji/emoji/Emoji;

    new-array v3, v2, [I

    fill-array-data v3, :array_de

    sget v4, Lcom/vanniktech/emoji/google/R$drawable;->emoji_google_1f1fb_1f1e6:I

    invoke-direct {v1, v3, v4}, Lcom/vanniktech/emoji/emoji/Emoji;-><init>([II)V

    const/16 v3, 0xe3

    aput-object v1, v0, v3

    new-instance v1, Lcom/vanniktech/emoji/emoji/Emoji;

    new-array v3, v2, [I

    fill-array-data v3, :array_df

    sget v4, Lcom/vanniktech/emoji/google/R$drawable;->emoji_google_1f1fb_1f1ea:I

    invoke-direct {v1, v3, v4}, Lcom/vanniktech/emoji/emoji/Emoji;-><init>([II)V

    const/16 v3, 0xe4

    aput-object v1, v0, v3

    new-instance v1, Lcom/vanniktech/emoji/emoji/Emoji;

    new-array v3, v2, [I

    fill-array-data v3, :array_e0

    sget v4, Lcom/vanniktech/emoji/google/R$drawable;->emoji_google_1f1fb_1f1f3:I

    invoke-direct {v1, v3, v4}, Lcom/vanniktech/emoji/emoji/Emoji;-><init>([II)V

    const/16 v3, 0xe5

    aput-object v1, v0, v3

    new-instance v1, Lcom/vanniktech/emoji/emoji/Emoji;

    new-array v3, v2, [I

    fill-array-data v3, :array_e1

    sget v4, Lcom/vanniktech/emoji/google/R$drawable;->emoji_google_1f1fe_1f1ea:I

    invoke-direct {v1, v3, v4}, Lcom/vanniktech/emoji/emoji/Emoji;-><init>([II)V

    const/16 v3, 0xe6

    aput-object v1, v0, v3

    new-instance v1, Lcom/vanniktech/emoji/emoji/Emoji;

    new-array v3, v2, [I

    fill-array-data v3, :array_e2

    sget v4, Lcom/vanniktech/emoji/google/R$drawable;->emoji_google_1f1ff_1f1f2:I

    invoke-direct {v1, v3, v4}, Lcom/vanniktech/emoji/emoji/Emoji;-><init>([II)V

    const/16 v3, 0xe7

    aput-object v1, v0, v3

    new-instance v1, Lcom/vanniktech/emoji/emoji/Emoji;

    new-array v3, v2, [I

    fill-array-data v3, :array_e3

    sget v4, Lcom/vanniktech/emoji/google/R$drawable;->emoji_google_1f1ff_1f1fc:I

    invoke-direct {v1, v3, v4}, Lcom/vanniktech/emoji/emoji/Emoji;-><init>([II)V

    const/16 v3, 0xe8

    aput-object v1, v0, v3

    new-instance v1, Lcom/vanniktech/emoji/emoji/Emoji;

    new-array v3, v2, [I

    fill-array-data v3, :array_e4

    sget v4, Lcom/vanniktech/emoji/google/R$drawable;->emoji_google_1f1e6_1f1e8:I

    invoke-direct {v1, v3, v4}, Lcom/vanniktech/emoji/emoji/Emoji;-><init>([II)V

    const/16 v3, 0xe9

    aput-object v1, v0, v3

    new-instance v1, Lcom/vanniktech/emoji/emoji/Emoji;

    new-array v2, v2, [I

    fill-array-data v2, :array_e5

    sget v3, Lcom/vanniktech/emoji/google/R$drawable;->emoji_google_1f1fa_1f1f3:I

    invoke-direct {v1, v2, v3}, Lcom/vanniktech/emoji/emoji/Emoji;-><init>([II)V

    const/16 v2, 0xea

    aput-object v1, v0, v2

    sput-object v0, Lcom/vanniktech/emoji/google/category/FlagsCategory;->DATA:[Lcom/vanniktech/emoji/emoji/Emoji;

    return-void

    nop

    :array_0
    .array-data 4
        0x1f3f3
        0xfe0f
        0x200d
        0x1f308
    .end array-data

    :array_1
    .array-data 4
        0x1f1e6
        0x1f1eb
    .end array-data

    :array_2
    .array-data 4
        0x1f1e6
        0x1f1fd
    .end array-data

    :array_3
    .array-data 4
        0x1f1e6
        0x1f1f1
    .end array-data

    :array_4
    .array-data 4
        0x1f1e9
        0x1f1ff
    .end array-data

    :array_5
    .array-data 4
        0x1f1e6
        0x1f1f8
    .end array-data

    :array_6
    .array-data 4
        0x1f1e6
        0x1f1e9
    .end array-data

    :array_7
    .array-data 4
        0x1f1e6
        0x1f1f4
    .end array-data

    :array_8
    .array-data 4
        0x1f1e6
        0x1f1ee
    .end array-data

    :array_9
    .array-data 4
        0x1f1e6
        0x1f1f6
    .end array-data

    :array_a
    .array-data 4
        0x1f1e6
        0x1f1ec
    .end array-data

    :array_b
    .array-data 4
        0x1f1e6
        0x1f1f7
    .end array-data

    :array_c
    .array-data 4
        0x1f1e6
        0x1f1f2
    .end array-data

    :array_d
    .array-data 4
        0x1f1e6
        0x1f1fc
    .end array-data

    :array_e
    .array-data 4
        0x1f1e6
        0x1f1f9
    .end array-data

    :array_f
    .array-data 4
        0x1f1e6
        0x1f1ff
    .end array-data

    :array_10
    .array-data 4
        0x1f1e7
        0x1f1f8
    .end array-data

    :array_11
    .array-data 4
        0x1f1e7
        0x1f1ed
    .end array-data

    :array_12
    .array-data 4
        0x1f1e7
        0x1f1e9
    .end array-data

    :array_13
    .array-data 4
        0x1f1e7
        0x1f1e7
    .end array-data

    :array_14
    .array-data 4
        0x1f1e7
        0x1f1fe
    .end array-data

    :array_15
    .array-data 4
        0x1f1e7
        0x1f1ea
    .end array-data

    :array_16
    .array-data 4
        0x1f1e7
        0x1f1ff
    .end array-data

    :array_17
    .array-data 4
        0x1f1e7
        0x1f1ef
    .end array-data

    :array_18
    .array-data 4
        0x1f1e7
        0x1f1f2
    .end array-data

    :array_19
    .array-data 4
        0x1f1e7
        0x1f1f9
    .end array-data

    :array_1a
    .array-data 4
        0x1f1e7
        0x1f1f4
    .end array-data

    :array_1b
    .array-data 4
        0x1f1e7
        0x1f1e6
    .end array-data

    :array_1c
    .array-data 4
        0x1f1e7
        0x1f1fc
    .end array-data

    :array_1d
    .array-data 4
        0x1f1e7
        0x1f1f7
    .end array-data

    :array_1e
    .array-data 4
        0x1f1fb
        0x1f1ec
    .end array-data

    :array_1f
    .array-data 4
        0x1f1e7
        0x1f1f3
    .end array-data

    :array_20
    .array-data 4
        0x1f1e7
        0x1f1ec
    .end array-data

    :array_21
    .array-data 4
        0x1f1e7
        0x1f1eb
    .end array-data

    :array_22
    .array-data 4
        0x1f1e7
        0x1f1ee
    .end array-data

    :array_23
    .array-data 4
        0x1f1f0
        0x1f1ed
    .end array-data

    :array_24
    .array-data 4
        0x1f1e8
        0x1f1f2
    .end array-data

    :array_25
    .array-data 4
        0x1f1e8
        0x1f1e6
    .end array-data

    :array_26
    .array-data 4
        0x1f1ee
        0x1f1e8
    .end array-data

    :array_27
    .array-data 4
        0x1f1e8
        0x1f1fb
    .end array-data

    :array_28
    .array-data 4
        0x1f1f0
        0x1f1fe
    .end array-data

    :array_29
    .array-data 4
        0x1f1e8
        0x1f1eb
    .end array-data

    :array_2a
    .array-data 4
        0x1f1f9
        0x1f1e9
    .end array-data

    :array_2b
    .array-data 4
        0x1f1e8
        0x1f1f1
    .end array-data

    :array_2c
    .array-data 4
        0x1f1e8
        0x1f1f3
    .end array-data

    :array_2d
    .array-data 4
        0x1f1e8
        0x1f1fd
    .end array-data

    :array_2e
    .array-data 4
        0x1f1e8
        0x1f1e8
    .end array-data

    :array_2f
    .array-data 4
        0x1f1e8
        0x1f1f4
    .end array-data

    :array_30
    .array-data 4
        0x1f1f0
        0x1f1f2
    .end array-data

    :array_31
    .array-data 4
        0x1f1e8
        0x1f1ec
    .end array-data

    :array_32
    .array-data 4
        0x1f1e8
        0x1f1e9
    .end array-data

    :array_33
    .array-data 4
        0x1f1e8
        0x1f1f0
    .end array-data

    :array_34
    .array-data 4
        0x1f1e8
        0x1f1f7
    .end array-data

    :array_35
    .array-data 4
        0x1f1e8
        0x1f1ee
    .end array-data

    :array_36
    .array-data 4
        0x1f1ed
        0x1f1f7
    .end array-data

    :array_37
    .array-data 4
        0x1f1e8
        0x1f1fa
    .end array-data

    :array_38
    .array-data 4
        0x1f1e8
        0x1f1fc
    .end array-data

    :array_39
    .array-data 4
        0x1f1e8
        0x1f1fe
    .end array-data

    :array_3a
    .array-data 4
        0x1f1e8
        0x1f1ff
    .end array-data

    :array_3b
    .array-data 4
        0x1f1e9
        0x1f1f0
    .end array-data

    :array_3c
    .array-data 4
        0x1f1e9
        0x1f1ef
    .end array-data

    :array_3d
    .array-data 4
        0x1f1e9
        0x1f1f2
    .end array-data

    :array_3e
    .array-data 4
        0x1f1e9
        0x1f1f4
    .end array-data

    :array_3f
    .array-data 4
        0x1f1ea
        0x1f1e8
    .end array-data

    :array_40
    .array-data 4
        0x1f1ea
        0x1f1ec
    .end array-data

    :array_41
    .array-data 4
        0x1f1f8
        0x1f1fb
    .end array-data

    :array_42
    .array-data 4
        0x1f1ec
        0x1f1f6
    .end array-data

    :array_43
    .array-data 4
        0x1f1ea
        0x1f1f7
    .end array-data

    :array_44
    .array-data 4
        0x1f1ea
        0x1f1ea
    .end array-data

    :array_45
    .array-data 4
        0x1f1ea
        0x1f1f9
    .end array-data

    :array_46
    .array-data 4
        0x1f1ea
        0x1f1fa
    .end array-data

    :array_47
    .array-data 4
        0x1f1eb
        0x1f1f4
    .end array-data

    :array_48
    .array-data 4
        0x1f1eb
        0x1f1ef
    .end array-data

    :array_49
    .array-data 4
        0x1f1eb
        0x1f1ee
    .end array-data

    :array_4a
    .array-data 4
        0x1f1eb
        0x1f1f7
    .end array-data

    :array_4b
    .array-data 4
        0x1f1f5
        0x1f1eb
    .end array-data

    :array_4c
    .array-data 4
        0x1f1ec
        0x1f1e6
    .end array-data

    :array_4d
    .array-data 4
        0x1f1ec
        0x1f1f2
    .end array-data

    :array_4e
    .array-data 4
        0x1f1ec
        0x1f1ea
    .end array-data

    :array_4f
    .array-data 4
        0x1f1e9
        0x1f1ea
    .end array-data

    :array_50
    .array-data 4
        0x1f1ec
        0x1f1ed
    .end array-data

    :array_51
    .array-data 4
        0x1f1ec
        0x1f1ee
    .end array-data

    :array_52
    .array-data 4
        0x1f1ec
        0x1f1f7
    .end array-data

    :array_53
    .array-data 4
        0x1f1ec
        0x1f1f1
    .end array-data

    :array_54
    .array-data 4
        0x1f1ec
        0x1f1e9
    .end array-data

    :array_55
    .array-data 4
        0x1f1ec
        0x1f1fa
    .end array-data

    :array_56
    .array-data 4
        0x1f1ec
        0x1f1f9
    .end array-data

    :array_57
    .array-data 4
        0x1f1ec
        0x1f1ec
    .end array-data

    :array_58
    .array-data 4
        0x1f1ec
        0x1f1f3
    .end array-data

    :array_59
    .array-data 4
        0x1f1ec
        0x1f1fc
    .end array-data

    :array_5a
    .array-data 4
        0x1f1ec
        0x1f1fe
    .end array-data

    :array_5b
    .array-data 4
        0x1f1ed
        0x1f1f9
    .end array-data

    :array_5c
    .array-data 4
        0x1f1ed
        0x1f1f3
    .end array-data

    :array_5d
    .array-data 4
        0x1f1ed
        0x1f1f0
    .end array-data

    :array_5e
    .array-data 4
        0x1f1ed
        0x1f1fa
    .end array-data

    :array_5f
    .array-data 4
        0x1f1ee
        0x1f1f8
    .end array-data

    :array_60
    .array-data 4
        0x1f1ee
        0x1f1f3
    .end array-data

    :array_61
    .array-data 4
        0x1f1ee
        0x1f1e9
    .end array-data

    :array_62
    .array-data 4
        0x1f1ee
        0x1f1f7
    .end array-data

    :array_63
    .array-data 4
        0x1f1ee
        0x1f1f6
    .end array-data

    :array_64
    .array-data 4
        0x1f1ee
        0x1f1ea
    .end array-data

    :array_65
    .array-data 4
        0x1f1ee
        0x1f1f2
    .end array-data

    :array_66
    .array-data 4
        0x1f1ee
        0x1f1f1
    .end array-data

    :array_67
    .array-data 4
        0x1f1ee
        0x1f1f9
    .end array-data

    :array_68
    .array-data 4
        0x1f1ef
        0x1f1f2
    .end array-data

    :array_69
    .array-data 4
        0x1f1ef
        0x1f1f5
    .end array-data

    :array_6a
    .array-data 4
        0x1f1ef
        0x1f1ea
    .end array-data

    :array_6b
    .array-data 4
        0x1f1ef
        0x1f1f4
    .end array-data

    :array_6c
    .array-data 4
        0x1f1f0
        0x1f1ff
    .end array-data

    :array_6d
    .array-data 4
        0x1f1f0
        0x1f1ea
    .end array-data

    :array_6e
    .array-data 4
        0x1f1f0
        0x1f1ee
    .end array-data

    :array_6f
    .array-data 4
        0x1f1f0
        0x1f1fc
    .end array-data

    :array_70
    .array-data 4
        0x1f1f0
        0x1f1ec
    .end array-data

    :array_71
    .array-data 4
        0x1f1f1
        0x1f1e6
    .end array-data

    :array_72
    .array-data 4
        0x1f1f1
        0x1f1fb
    .end array-data

    :array_73
    .array-data 4
        0x1f1f1
        0x1f1e7
    .end array-data

    :array_74
    .array-data 4
        0x1f1f1
        0x1f1f8
    .end array-data

    :array_75
    .array-data 4
        0x1f1f1
        0x1f1f7
    .end array-data

    :array_76
    .array-data 4
        0x1f1f1
        0x1f1fe
    .end array-data

    :array_77
    .array-data 4
        0x1f1f1
        0x1f1ee
    .end array-data

    :array_78
    .array-data 4
        0x1f1f1
        0x1f1f9
    .end array-data

    :array_79
    .array-data 4
        0x1f1f1
        0x1f1fa
    .end array-data

    :array_7a
    .array-data 4
        0x1f1f2
        0x1f1f4
    .end array-data

    :array_7b
    .array-data 4
        0x1f1f2
        0x1f1f0
    .end array-data

    :array_7c
    .array-data 4
        0x1f1f2
        0x1f1ec
    .end array-data

    :array_7d
    .array-data 4
        0x1f1f2
        0x1f1fc
    .end array-data

    :array_7e
    .array-data 4
        0x1f1f2
        0x1f1fe
    .end array-data

    :array_7f
    .array-data 4
        0x1f1f2
        0x1f1fb
    .end array-data

    :array_80
    .array-data 4
        0x1f1f2
        0x1f1f1
    .end array-data

    :array_81
    .array-data 4
        0x1f1f2
        0x1f1f9
    .end array-data

    :array_82
    .array-data 4
        0x1f1f2
        0x1f1ed
    .end array-data

    :array_83
    .array-data 4
        0x1f1f2
        0x1f1f7
    .end array-data

    :array_84
    .array-data 4
        0x1f1f2
        0x1f1fa
    .end array-data

    :array_85
    .array-data 4
        0x1f1f2
        0x1f1fd
    .end array-data

    :array_86
    .array-data 4
        0x1f1eb
        0x1f1f2
    .end array-data

    :array_87
    .array-data 4
        0x1f1f2
        0x1f1e9
    .end array-data

    :array_88
    .array-data 4
        0x1f1f2
        0x1f1e8
    .end array-data

    :array_89
    .array-data 4
        0x1f1f2
        0x1f1f3
    .end array-data

    :array_8a
    .array-data 4
        0x1f1f2
        0x1f1ea
    .end array-data

    :array_8b
    .array-data 4
        0x1f1f2
        0x1f1f8
    .end array-data

    :array_8c
    .array-data 4
        0x1f1f2
        0x1f1e6
    .end array-data

    :array_8d
    .array-data 4
        0x1f1f2
        0x1f1ff
    .end array-data

    :array_8e
    .array-data 4
        0x1f1f2
        0x1f1f2
    .end array-data

    :array_8f
    .array-data 4
        0x1f1f3
        0x1f1e6
    .end array-data

    :array_90
    .array-data 4
        0x1f1f3
        0x1f1f7
    .end array-data

    :array_91
    .array-data 4
        0x1f1f3
        0x1f1f5
    .end array-data

    :array_92
    .array-data 4
        0x1f1f3
        0x1f1f1
    .end array-data

    :array_93
    .array-data 4
        0x1f1f3
        0x1f1ff
    .end array-data

    :array_94
    .array-data 4
        0x1f1f3
        0x1f1ee
    .end array-data

    :array_95
    .array-data 4
        0x1f1f3
        0x1f1ea
    .end array-data

    :array_96
    .array-data 4
        0x1f1f3
        0x1f1ec
    .end array-data

    :array_97
    .array-data 4
        0x1f1f3
        0x1f1fa
    .end array-data

    :array_98
    .array-data 4
        0x1f1f3
        0x1f1eb
    .end array-data

    :array_99
    .array-data 4
        0x1f1f0
        0x1f1f5
    .end array-data

    :array_9a
    .array-data 4
        0x1f1f2
        0x1f1f5
    .end array-data

    :array_9b
    .array-data 4
        0x1f1f4
        0x1f1f2
    .end array-data

    :array_9c
    .array-data 4
        0x1f1f5
        0x1f1f0
    .end array-data

    :array_9d
    .array-data 4
        0x1f1f5
        0x1f1fc
    .end array-data

    :array_9e
    .array-data 4
        0x1f1f5
        0x1f1f8
    .end array-data

    :array_9f
    .array-data 4
        0x1f1f5
        0x1f1e6
    .end array-data

    :array_a0
    .array-data 4
        0x1f1f5
        0x1f1ec
    .end array-data

    :array_a1
    .array-data 4
        0x1f1f5
        0x1f1fe
    .end array-data

    :array_a2
    .array-data 4
        0x1f1f5
        0x1f1ea
    .end array-data

    :array_a3
    .array-data 4
        0x1f1f5
        0x1f1ed
    .end array-data

    :array_a4
    .array-data 4
        0x1f1f5
        0x1f1f3
    .end array-data

    :array_a5
    .array-data 4
        0x1f1f5
        0x1f1f1
    .end array-data

    :array_a6
    .array-data 4
        0x1f1f5
        0x1f1f9
    .end array-data

    :array_a7
    .array-data 4
        0x1f1f5
        0x1f1f7
    .end array-data

    :array_a8
    .array-data 4
        0x1f1f6
        0x1f1e6
    .end array-data

    :array_a9
    .array-data 4
        0x1f1f7
        0x1f1f4
    .end array-data

    :array_aa
    .array-data 4
        0x1f1f7
        0x1f1fa
    .end array-data

    :array_ab
    .array-data 4
        0x1f1f7
        0x1f1fc
    .end array-data

    :array_ac
    .array-data 4
        0x1f1fc
        0x1f1f8
    .end array-data

    :array_ad
    .array-data 4
        0x1f1f8
        0x1f1f2
    .end array-data

    :array_ae
    .array-data 4
        0x1f1f8
        0x1f1f9
    .end array-data

    :array_af
    .array-data 4
        0x1f1f8
        0x1f1e6
    .end array-data

    :array_b0
    .array-data 4
        0x1f1f8
        0x1f1f3
    .end array-data

    :array_b1
    .array-data 4
        0x1f1f7
        0x1f1f8
    .end array-data

    :array_b2
    .array-data 4
        0x1f1f8
        0x1f1e8
    .end array-data

    :array_b3
    .array-data 4
        0x1f1f8
        0x1f1f1
    .end array-data

    :array_b4
    .array-data 4
        0x1f1f8
        0x1f1ec
    .end array-data

    :array_b5
    .array-data 4
        0x1f1f8
        0x1f1fd
    .end array-data

    :array_b6
    .array-data 4
        0x1f1f8
        0x1f1f0
    .end array-data

    :array_b7
    .array-data 4
        0x1f1f8
        0x1f1ee
    .end array-data

    :array_b8
    .array-data 4
        0x1f1f8
        0x1f1e7
    .end array-data

    :array_b9
    .array-data 4
        0x1f1f8
        0x1f1f4
    .end array-data

    :array_ba
    .array-data 4
        0x1f1ff
        0x1f1e6
    .end array-data

    :array_bb
    .array-data 4
        0x1f1f0
        0x1f1f7
    .end array-data

    :array_bc
    .array-data 4
        0x1f1f8
        0x1f1f8
    .end array-data

    :array_bd
    .array-data 4
        0x1f1f1
        0x1f1f0
    .end array-data

    :array_be
    .array-data 4
        0x1f1f8
        0x1f1ed
    .end array-data

    :array_bf
    .array-data 4
        0x1f1f0
        0x1f1f3
    .end array-data

    :array_c0
    .array-data 4
        0x1f1f1
        0x1f1e8
    .end array-data

    :array_c1
    .array-data 4
        0x1f1fb
        0x1f1e8
    .end array-data

    :array_c2
    .array-data 4
        0x1f1f8
        0x1f1e9
    .end array-data

    :array_c3
    .array-data 4
        0x1f1f8
        0x1f1f7
    .end array-data

    :array_c4
    .array-data 4
        0x1f1f8
        0x1f1ff
    .end array-data

    :array_c5
    .array-data 4
        0x1f1f8
        0x1f1ea
    .end array-data

    :array_c6
    .array-data 4
        0x1f1e8
        0x1f1ed
    .end array-data

    :array_c7
    .array-data 4
        0x1f1f8
        0x1f1fe
    .end array-data

    :array_c8
    .array-data 4
        0x1f1f9
        0x1f1fc
    .end array-data

    :array_c9
    .array-data 4
        0x1f1f9
        0x1f1ef
    .end array-data

    :array_ca
    .array-data 4
        0x1f1f9
        0x1f1ff
    .end array-data

    :array_cb
    .array-data 4
        0x1f1f9
        0x1f1ed
    .end array-data

    :array_cc
    .array-data 4
        0x1f1f9
        0x1f1f1
    .end array-data

    :array_cd
    .array-data 4
        0x1f1f9
        0x1f1ec
    .end array-data

    :array_ce
    .array-data 4
        0x1f1f9
        0x1f1f0
    .end array-data

    :array_cf
    .array-data 4
        0x1f1f9
        0x1f1f4
    .end array-data

    :array_d0
    .array-data 4
        0x1f1f9
        0x1f1f9
    .end array-data

    :array_d1
    .array-data 4
        0x1f1f9
        0x1f1f3
    .end array-data

    :array_d2
    .array-data 4
        0x1f1f9
        0x1f1f7
    .end array-data

    :array_d3
    .array-data 4
        0x1f1f9
        0x1f1f2
    .end array-data

    :array_d4
    .array-data 4
        0x1f1f9
        0x1f1e8
    .end array-data

    :array_d5
    .array-data 4
        0x1f1f9
        0x1f1fb
    .end array-data

    :array_d6
    .array-data 4
        0x1f1fb
        0x1f1ee
    .end array-data

    :array_d7
    .array-data 4
        0x1f1fa
        0x1f1ec
    .end array-data

    :array_d8
    .array-data 4
        0x1f1fa
        0x1f1e6
    .end array-data

    :array_d9
    .array-data 4
        0x1f1e6
        0x1f1ea
    .end array-data

    :array_da
    .array-data 4
        0x1f1ec
        0x1f1e7
    .end array-data

    :array_db
    .array-data 4
        0x1f1fa
        0x1f1fe
    .end array-data

    :array_dc
    .array-data 4
        0x1f1fa
        0x1f1ff
    .end array-data

    :array_dd
    .array-data 4
        0x1f1fb
        0x1f1fa
    .end array-data

    :array_de
    .array-data 4
        0x1f1fb
        0x1f1e6
    .end array-data

    :array_df
    .array-data 4
        0x1f1fb
        0x1f1ea
    .end array-data

    :array_e0
    .array-data 4
        0x1f1fb
        0x1f1f3
    .end array-data

    :array_e1
    .array-data 4
        0x1f1fe
        0x1f1ea
    .end array-data

    :array_e2
    .array-data 4
        0x1f1ff
        0x1f1f2
    .end array-data

    :array_e3
    .array-data 4
        0x1f1ff
        0x1f1fc
    .end array-data

    :array_e4
    .array-data 4
        0x1f1e6
        0x1f1e8
    .end array-data

    :array_e5
    .array-data 4
        0x1f1fa
        0x1f1f3
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

    .line 249
    sget-object v0, Lcom/vanniktech/emoji/google/category/FlagsCategory;->DATA:[Lcom/vanniktech/emoji/emoji/Emoji;

    return-object v0
.end method

.method public getIcon()I
    .locals 1

    .line 253
    sget v0, Lcom/vanniktech/emoji/google/R$drawable;->emoji_google_category_flags:I

    return v0
.end method
