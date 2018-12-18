.class public interface abstract Lorg/briarproject/briar/test/TestData;
.super Ljava/lang/Object;
.source "TestData.java"


# static fields
.field public static final AUTHOR_NAMES:[Ljava/lang/String;

.field public static final GROUP_NAMES:[Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 17

    const/16 v0, 0x29

    .line 9
    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "Thales"

    const/4 v2, 0x0

    aput-object v1, v0, v2

    const-string v1, "Pythagoras"

    const/4 v3, 0x1

    aput-object v1, v0, v3

    const-string v1, "Plato"

    const/4 v4, 0x2

    aput-object v1, v0, v4

    const-string v1, "Aristotle"

    const/4 v5, 0x3

    aput-object v1, v0, v5

    const-string v1, "Euclid"

    const/4 v6, 0x4

    aput-object v1, v0, v6

    const-string v1, "Archimedes"

    const/4 v7, 0x5

    aput-object v1, v0, v7

    const-string v1, "Hipparchus"

    const/4 v8, 0x6

    aput-object v1, v0, v8

    const-string v1, "Ptolemy"

    const/4 v9, 0x7

    aput-object v1, v0, v9

    const-string v1, "Sun Tzu"

    const/16 v10, 0x8

    aput-object v1, v0, v10

    const-string v1, "Ibrahim ibn Sinan"

    const/16 v11, 0x9

    aput-object v1, v0, v11

    const-string v1, "Muhammad Al-Karaji"

    const/16 v12, 0xa

    aput-object v1, v0, v12

    const-string v1, "Yang Hui"

    const/16 v13, 0xb

    aput-object v1, v0, v13

    const-string v1, "Ren\u00e9 Descartes"

    const/16 v14, 0xc

    aput-object v1, v0, v14

    const-string v1, "Pierre de Fermat"

    const/16 v15, 0xd

    aput-object v1, v0, v15

    const-string v1, "Blaise Pascal"

    const/16 v15, 0xe

    aput-object v1, v0, v15

    const-string v1, "Jacob Bernoulli"

    const/16 v15, 0xf

    aput-object v1, v0, v15

    const-string v1, "Christian Goldbach"

    const/16 v15, 0x10

    aput-object v1, v0, v15

    const-string v1, "Leonhard Euler"

    const/16 v15, 0x11

    aput-object v1, v0, v15

    const-string v1, "Joseph Louis Lagrange"

    const/16 v15, 0x12

    aput-object v1, v0, v15

    const-string v1, "Pierre-Simon Laplace"

    const/16 v15, 0x13

    aput-object v1, v0, v15

    const-string v1, "Joseph Fourier"

    const/16 v15, 0x14

    aput-object v1, v0, v15

    const-string v1, "Carl Friedrich Gauss"

    const/16 v15, 0x15

    aput-object v1, v0, v15

    const-string v1, "Charles Babbage"

    const/16 v15, 0x16

    aput-object v1, v0, v15

    const-string v1, "George Boole"

    const/16 v15, 0x17

    aput-object v1, v0, v15

    const-string v1, "John Venn"

    const/16 v15, 0x18

    aput-object v1, v0, v15

    const-string v1, "Gottlob Frege"

    const/16 v15, 0x19

    aput-object v1, v0, v15

    const-string v1, "Henri Poincar\u00e9"

    const/16 v15, 0x1a

    aput-object v1, v0, v15

    const-string v1, "David Hilbert"

    const/16 v15, 0x1b

    aput-object v1, v0, v15

    const-string v1, "Bertrand Russell"

    const/16 v15, 0x1c

    aput-object v1, v0, v15

    const-string v1, "John von Neumann"

    const/16 v15, 0x1d

    aput-object v1, v0, v15

    const-string v1, "Kurt G\u00f6del"

    const/16 v15, 0x1e

    aput-object v1, v0, v15

    const-string v1, "Alan Turing"

    const/16 v15, 0x1f

    aput-object v1, v0, v15

    const-string v1, "Beno\u00eet Mandelbrot"

    const/16 v15, 0x20

    aput-object v1, v0, v15

    const-string v1, "John Nash"

    const/16 v15, 0x21

    aput-object v1, v0, v15

    const/16 v1, 0x32

    .line 44
    invoke-static {v1}, Lorg/briarproject/bramble/util/StringUtils;->getRandomString(I)Ljava/lang/String;

    move-result-object v15

    const/16 v16, 0x22

    aput-object v15, v0, v16

    .line 45
    invoke-static {v1}, Lorg/briarproject/bramble/util/StringUtils;->getRandomString(I)Ljava/lang/String;

    move-result-object v15

    const/16 v16, 0x23

    aput-object v15, v0, v16

    .line 46
    invoke-static {v1}, Lorg/briarproject/bramble/util/StringUtils;->getRandomString(I)Ljava/lang/String;

    move-result-object v15

    const/16 v16, 0x24

    aput-object v15, v0, v16

    .line 47
    invoke-static {v1}, Lorg/briarproject/bramble/util/StringUtils;->getRandomString(I)Ljava/lang/String;

    move-result-object v15

    const/16 v16, 0x25

    aput-object v15, v0, v16

    .line 48
    invoke-static {v1}, Lorg/briarproject/bramble/util/StringUtils;->getRandomString(I)Ljava/lang/String;

    move-result-object v15

    const/16 v16, 0x26

    aput-object v15, v0, v16

    .line 49
    invoke-static {v1}, Lorg/briarproject/bramble/util/StringUtils;->getRandomString(I)Ljava/lang/String;

    move-result-object v15

    const/16 v16, 0x27

    aput-object v15, v0, v16

    .line 50
    invoke-static {v1}, Lorg/briarproject/bramble/util/StringUtils;->getRandomString(I)Ljava/lang/String;

    move-result-object v1

    const/16 v15, 0x28

    aput-object v1, v0, v15

    sput-object v0, Lorg/briarproject/briar/test/TestData;->AUTHOR_NAMES:[Ljava/lang/String;

    .line 53
    new-array v0, v14, [Ljava/lang/String;

    const-string v1, "Private Messengers"

    aput-object v1, v0, v2

    const-string v1, "The Darknet"

    aput-object v1, v0, v3

    const-string v1, "Bletchley Park"

    aput-object v1, v0, v4

    const-string v1, "Acropolis"

    aput-object v1, v0, v5

    const-string v1, "General Discussion"

    aput-object v1, v0, v6

    const-string v1, "The Undiscovered Country"

    aput-object v1, v0, v7

    const-string v1, "The Place to Be"

    aput-object v1, v0, v8

    const-string v1, "Forum Romanum"

    aput-object v1, v0, v9

    const/16 v1, 0x64

    .line 62
    invoke-static {v1}, Lorg/briarproject/bramble/util/StringUtils;->getRandomString(I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v10

    .line 63
    invoke-static {v1}, Lorg/briarproject/bramble/util/StringUtils;->getRandomString(I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v11

    .line 64
    invoke-static {v1}, Lorg/briarproject/bramble/util/StringUtils;->getRandomString(I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v12

    .line 65
    invoke-static {v1}, Lorg/briarproject/bramble/util/StringUtils;->getRandomString(I)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v0, v13

    sput-object v0, Lorg/briarproject/briar/test/TestData;->GROUP_NAMES:[Ljava/lang/String;

    return-void
.end method
