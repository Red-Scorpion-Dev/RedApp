.class public Lorg/whispersystems/curve25519/java/sc_muladd;
.super Ljava/lang/Object;
.source "sc_muladd.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static load_3([BI)J
    .locals 6

    add-int/lit8 v0, p1, 0x0

    .line 13
    aget-byte v0, p0, v0

    int-to-long v0, v0

    const-wide/16 v2, 0xff

    and-long/2addr v0, v2

    add-int/lit8 v2, p1, 0x1

    .line 14
    aget-byte v2, p0, v2

    int-to-long v2, v2

    const/16 v4, 0x8

    shl-long/2addr v2, v4

    const-wide/32 v4, 0xff00

    and-long/2addr v2, v4

    or-long/2addr v0, v2

    add-int/lit8 p1, p1, 0x2

    .line 15
    aget-byte p0, p0, p1

    int-to-long p0, p0

    const/16 v2, 0x10

    shl-long/2addr p0, v2

    const-wide/32 v2, 0xff0000

    and-long/2addr p0, v2

    or-long/2addr p0, v0

    return-wide p0
.end method

.method public static load_4([BI)J
    .locals 6

    add-int/lit8 v0, p1, 0x0

    .line 22
    aget-byte v0, p0, v0

    int-to-long v0, v0

    const-wide/16 v2, 0xff

    and-long/2addr v0, v2

    add-int/lit8 v2, p1, 0x1

    .line 23
    aget-byte v2, p0, v2

    int-to-long v2, v2

    const/16 v4, 0x8

    shl-long/2addr v2, v4

    const-wide/32 v4, 0xff00

    and-long/2addr v2, v4

    or-long/2addr v0, v2

    add-int/lit8 v2, p1, 0x2

    .line 24
    aget-byte v2, p0, v2

    int-to-long v2, v2

    const/16 v4, 0x10

    shl-long/2addr v2, v4

    const-wide/32 v4, 0xff0000

    and-long/2addr v2, v4

    or-long/2addr v0, v2

    add-int/lit8 p1, p1, 0x3

    .line 25
    aget-byte p0, p0, p1

    int-to-long p0, p0

    const/16 v2, 0x18

    shl-long/2addr p0, v2

    const-wide v2, 0xff000000L

    and-long/2addr p0, v2

    or-long/2addr p0, v0

    return-wide p0
.end method

.method public static sc_muladd([B[B[B[B)V
    .locals 78

    move-object/from16 v0, p1

    move-object/from16 v1, p2

    move-object/from16 v2, p3

    const/4 v3, 0x0

    .line 42
    invoke-static {v0, v3}, Lorg/whispersystems/curve25519/java/sc_muladd;->load_3([BI)J

    move-result-wide v3

    const-wide/32 v5, 0x1fffff

    and-long/2addr v3, v5

    const/4 v7, 0x2

    .line 43
    invoke-static {v0, v7}, Lorg/whispersystems/curve25519/java/sc_muladd;->load_4([BI)J

    move-result-wide v8

    const/4 v10, 0x5

    ushr-long/2addr v8, v10

    and-long/2addr v8, v5

    .line 44
    invoke-static {v0, v10}, Lorg/whispersystems/curve25519/java/sc_muladd;->load_3([BI)J

    move-result-wide v11

    ushr-long/2addr v11, v7

    and-long/2addr v11, v5

    const/4 v13, 0x7

    .line 45
    invoke-static {v0, v13}, Lorg/whispersystems/curve25519/java/sc_muladd;->load_4([BI)J

    move-result-wide v14

    ushr-long/2addr v14, v13

    and-long/2addr v14, v5

    const/16 v13, 0xa

    .line 46
    invoke-static {v0, v13}, Lorg/whispersystems/curve25519/java/sc_muladd;->load_4([BI)J

    move-result-wide v16

    const/4 v13, 0x4

    ushr-long v16, v16, v13

    and-long v16, v16, v5

    const/16 v13, 0xd

    .line 47
    invoke-static {v0, v13}, Lorg/whispersystems/curve25519/java/sc_muladd;->load_3([BI)J

    move-result-wide v18

    const/4 v13, 0x1

    ushr-long v18, v18, v13

    and-long v18, v18, v5

    const/16 v13, 0xf

    .line 48
    invoke-static {v0, v13}, Lorg/whispersystems/curve25519/java/sc_muladd;->load_4([BI)J

    move-result-wide v20

    const/4 v13, 0x6

    ushr-long v20, v20, v13

    and-long v20, v20, v5

    const/16 v13, 0x12

    .line 49
    invoke-static {v0, v13}, Lorg/whispersystems/curve25519/java/sc_muladd;->load_3([BI)J

    move-result-wide v22

    const/4 v13, 0x3

    ushr-long v22, v22, v13

    and-long v22, v22, v5

    const/16 v13, 0x15

    .line 50
    invoke-static {v0, v13}, Lorg/whispersystems/curve25519/java/sc_muladd;->load_3([BI)J

    move-result-wide v24

    and-long v24, v24, v5

    const/16 v13, 0x17

    .line 51
    invoke-static {v0, v13}, Lorg/whispersystems/curve25519/java/sc_muladd;->load_4([BI)J

    move-result-wide v26

    ushr-long v26, v26, v10

    and-long v26, v26, v5

    const/16 v13, 0x1a

    .line 52
    invoke-static {v0, v13}, Lorg/whispersystems/curve25519/java/sc_muladd;->load_3([BI)J

    move-result-wide v28

    ushr-long v28, v28, v7

    and-long v28, v28, v5

    const/16 v13, 0x1c

    .line 53
    invoke-static {v0, v13}, Lorg/whispersystems/curve25519/java/sc_muladd;->load_4([BI)J

    move-result-wide v30

    const/4 v0, 0x7

    ushr-long v30, v30, v0

    const/4 v13, 0x0

    .line 54
    invoke-static {v1, v13}, Lorg/whispersystems/curve25519/java/sc_muladd;->load_3([BI)J

    move-result-wide v32

    and-long v32, v32, v5

    .line 55
    invoke-static {v1, v7}, Lorg/whispersystems/curve25519/java/sc_muladd;->load_4([BI)J

    move-result-wide v34

    ushr-long v34, v34, v10

    and-long v34, v34, v5

    .line 56
    invoke-static {v1, v10}, Lorg/whispersystems/curve25519/java/sc_muladd;->load_3([BI)J

    move-result-wide v36

    ushr-long v36, v36, v7

    and-long v36, v36, v5

    .line 57
    invoke-static {v1, v0}, Lorg/whispersystems/curve25519/java/sc_muladd;->load_4([BI)J

    move-result-wide v38

    ushr-long v38, v38, v0

    and-long v38, v38, v5

    const/16 v0, 0xa

    .line 58
    invoke-static {v1, v0}, Lorg/whispersystems/curve25519/java/sc_muladd;->load_4([BI)J

    move-result-wide v40

    const/4 v0, 0x4

    ushr-long v40, v40, v0

    and-long v40, v40, v5

    const/16 v0, 0xd

    .line 59
    invoke-static {v1, v0}, Lorg/whispersystems/curve25519/java/sc_muladd;->load_3([BI)J

    move-result-wide v42

    const/4 v0, 0x1

    ushr-long v42, v42, v0

    and-long v42, v42, v5

    const/16 v0, 0xf

    .line 60
    invoke-static {v1, v0}, Lorg/whispersystems/curve25519/java/sc_muladd;->load_4([BI)J

    move-result-wide v44

    const/4 v0, 0x6

    ushr-long v44, v44, v0

    and-long v44, v44, v5

    const/16 v0, 0x12

    .line 61
    invoke-static {v1, v0}, Lorg/whispersystems/curve25519/java/sc_muladd;->load_3([BI)J

    move-result-wide v46

    const/4 v0, 0x3

    ushr-long v46, v46, v0

    and-long v46, v46, v5

    const/16 v0, 0x15

    .line 62
    invoke-static {v1, v0}, Lorg/whispersystems/curve25519/java/sc_muladd;->load_3([BI)J

    move-result-wide v48

    and-long v48, v48, v5

    const/16 v0, 0x17

    .line 63
    invoke-static {v1, v0}, Lorg/whispersystems/curve25519/java/sc_muladd;->load_4([BI)J

    move-result-wide v50

    ushr-long v50, v50, v10

    and-long v50, v50, v5

    const/16 v0, 0x1a

    .line 64
    invoke-static {v1, v0}, Lorg/whispersystems/curve25519/java/sc_muladd;->load_3([BI)J

    move-result-wide v52

    ushr-long v52, v52, v7

    and-long v52, v52, v5

    const/16 v0, 0x1c

    .line 65
    invoke-static {v1, v0}, Lorg/whispersystems/curve25519/java/sc_muladd;->load_4([BI)J

    move-result-wide v0

    const/4 v13, 0x7

    ushr-long/2addr v0, v13

    const/4 v13, 0x0

    .line 66
    invoke-static {v2, v13}, Lorg/whispersystems/curve25519/java/sc_muladd;->load_3([BI)J

    move-result-wide v54

    and-long v54, v54, v5

    .line 67
    invoke-static {v2, v7}, Lorg/whispersystems/curve25519/java/sc_muladd;->load_4([BI)J

    move-result-wide v56

    ushr-long v56, v56, v10

    and-long v56, v56, v5

    .line 68
    invoke-static {v2, v10}, Lorg/whispersystems/curve25519/java/sc_muladd;->load_3([BI)J

    move-result-wide v58

    ushr-long v58, v58, v7

    and-long v58, v58, v5

    const/4 v13, 0x7

    .line 69
    invoke-static {v2, v13}, Lorg/whispersystems/curve25519/java/sc_muladd;->load_4([BI)J

    move-result-wide v60

    ushr-long v60, v60, v13

    and-long v60, v60, v5

    const/16 v13, 0xa

    .line 70
    invoke-static {v2, v13}, Lorg/whispersystems/curve25519/java/sc_muladd;->load_4([BI)J

    move-result-wide v62

    const/4 v13, 0x4

    ushr-long v62, v62, v13

    and-long v62, v62, v5

    const/16 v13, 0xd

    .line 71
    invoke-static {v2, v13}, Lorg/whispersystems/curve25519/java/sc_muladd;->load_3([BI)J

    move-result-wide v64

    const/4 v13, 0x1

    ushr-long v64, v64, v13

    and-long v64, v64, v5

    const/16 v13, 0xf

    .line 72
    invoke-static {v2, v13}, Lorg/whispersystems/curve25519/java/sc_muladd;->load_4([BI)J

    move-result-wide v66

    const/4 v13, 0x6

    ushr-long v66, v66, v13

    and-long v66, v66, v5

    const/16 v13, 0x12

    .line 73
    invoke-static {v2, v13}, Lorg/whispersystems/curve25519/java/sc_muladd;->load_3([BI)J

    move-result-wide v68

    const/4 v13, 0x3

    ushr-long v68, v68, v13

    and-long v68, v68, v5

    const/16 v13, 0x15

    .line 74
    invoke-static {v2, v13}, Lorg/whispersystems/curve25519/java/sc_muladd;->load_3([BI)J

    move-result-wide v70

    and-long v70, v70, v5

    const/16 v13, 0x17

    .line 75
    invoke-static {v2, v13}, Lorg/whispersystems/curve25519/java/sc_muladd;->load_4([BI)J

    move-result-wide v72

    ushr-long v72, v72, v10

    and-long v72, v72, v5

    const/16 v13, 0x1a

    .line 76
    invoke-static {v2, v13}, Lorg/whispersystems/curve25519/java/sc_muladd;->load_3([BI)J

    move-result-wide v74

    ushr-long v74, v74, v7

    and-long v5, v74, v5

    const/16 v13, 0x1c

    .line 77
    invoke-static {v2, v13}, Lorg/whispersystems/curve25519/java/sc_muladd;->load_4([BI)J

    move-result-wide v74

    const/4 v2, 0x7

    ushr-long v74, v74, v2

    mul-long v76, v3, v32

    add-long v54, v54, v76

    mul-long v76, v3, v34

    add-long v56, v56, v76

    mul-long v76, v8, v32

    add-long v56, v56, v76

    mul-long v76, v3, v36

    add-long v58, v58, v76

    mul-long v76, v8, v34

    add-long v58, v58, v76

    mul-long v76, v11, v32

    add-long v58, v58, v76

    mul-long v76, v3, v38

    add-long v60, v60, v76

    mul-long v76, v8, v36

    add-long v60, v60, v76

    mul-long v76, v11, v34

    add-long v60, v60, v76

    mul-long v76, v14, v32

    add-long v60, v60, v76

    mul-long v76, v3, v40

    add-long v62, v62, v76

    mul-long v76, v8, v38

    add-long v62, v62, v76

    mul-long v76, v11, v36

    add-long v62, v62, v76

    mul-long v76, v14, v34

    add-long v62, v62, v76

    mul-long v76, v16, v32

    add-long v62, v62, v76

    mul-long v76, v3, v42

    add-long v64, v64, v76

    mul-long v76, v8, v40

    add-long v64, v64, v76

    mul-long v76, v11, v38

    add-long v64, v64, v76

    mul-long v76, v14, v36

    add-long v64, v64, v76

    mul-long v76, v16, v34

    add-long v64, v64, v76

    mul-long v76, v18, v32

    add-long v64, v64, v76

    mul-long v76, v3, v44

    add-long v66, v66, v76

    mul-long v76, v8, v42

    add-long v66, v66, v76

    mul-long v76, v11, v40

    add-long v66, v66, v76

    mul-long v76, v14, v38

    add-long v66, v66, v76

    mul-long v76, v16, v36

    add-long v66, v66, v76

    mul-long v76, v18, v34

    add-long v66, v66, v76

    mul-long v76, v20, v32

    add-long v66, v66, v76

    mul-long v76, v3, v46

    add-long v68, v68, v76

    mul-long v76, v8, v44

    add-long v68, v68, v76

    mul-long v76, v11, v42

    add-long v68, v68, v76

    mul-long v76, v14, v40

    add-long v68, v68, v76

    mul-long v76, v16, v38

    add-long v68, v68, v76

    mul-long v76, v18, v36

    add-long v68, v68, v76

    mul-long v76, v20, v34

    add-long v68, v68, v76

    mul-long v76, v22, v32

    add-long v68, v68, v76

    mul-long v76, v3, v48

    add-long v70, v70, v76

    mul-long v76, v8, v46

    add-long v70, v70, v76

    mul-long v76, v11, v44

    add-long v70, v70, v76

    mul-long v76, v14, v42

    add-long v70, v70, v76

    mul-long v76, v16, v40

    add-long v70, v70, v76

    mul-long v76, v18, v38

    add-long v70, v70, v76

    mul-long v76, v20, v36

    add-long v70, v70, v76

    mul-long v76, v22, v34

    add-long v70, v70, v76

    mul-long v76, v24, v32

    add-long v70, v70, v76

    mul-long v76, v3, v50

    add-long v72, v72, v76

    mul-long v76, v8, v48

    add-long v72, v72, v76

    mul-long v76, v11, v46

    add-long v72, v72, v76

    mul-long v76, v14, v44

    add-long v72, v72, v76

    mul-long v76, v16, v42

    add-long v72, v72, v76

    mul-long v76, v18, v40

    add-long v72, v72, v76

    mul-long v76, v20, v38

    add-long v72, v72, v76

    mul-long v76, v22, v36

    add-long v72, v72, v76

    mul-long v76, v24, v34

    add-long v72, v72, v76

    mul-long v76, v26, v32

    add-long v72, v72, v76

    mul-long v76, v3, v52

    add-long v5, v5, v76

    mul-long v76, v8, v50

    add-long v5, v5, v76

    mul-long v76, v11, v48

    add-long v5, v5, v76

    mul-long v76, v14, v46

    add-long v5, v5, v76

    mul-long v76, v16, v44

    add-long v5, v5, v76

    mul-long v76, v18, v42

    add-long v5, v5, v76

    mul-long v76, v20, v40

    add-long v5, v5, v76

    mul-long v76, v22, v38

    add-long v5, v5, v76

    mul-long v76, v24, v36

    add-long v5, v5, v76

    mul-long v76, v26, v34

    add-long v5, v5, v76

    mul-long v76, v28, v32

    add-long v5, v5, v76

    mul-long v3, v3, v0

    add-long v74, v74, v3

    mul-long v2, v8, v52

    add-long v74, v74, v2

    mul-long v2, v11, v50

    add-long v74, v74, v2

    mul-long v2, v14, v48

    add-long v74, v74, v2

    mul-long v2, v16, v46

    add-long v74, v74, v2

    mul-long v2, v18, v44

    add-long v74, v74, v2

    mul-long v2, v20, v42

    add-long v74, v74, v2

    mul-long v2, v22, v40

    add-long v74, v74, v2

    mul-long v2, v24, v38

    add-long v74, v74, v2

    mul-long v2, v26, v36

    add-long v74, v74, v2

    mul-long v2, v28, v34

    add-long v74, v74, v2

    mul-long v32, v32, v30

    add-long v74, v74, v32

    mul-long v8, v8, v0

    mul-long v2, v11, v52

    add-long/2addr v8, v2

    mul-long v2, v14, v50

    add-long/2addr v8, v2

    mul-long v2, v16, v48

    add-long/2addr v8, v2

    mul-long v2, v18, v46

    add-long/2addr v8, v2

    mul-long v2, v20, v44

    add-long/2addr v8, v2

    mul-long v2, v22, v42

    add-long/2addr v8, v2

    mul-long v2, v24, v40

    add-long/2addr v8, v2

    mul-long v2, v26, v38

    add-long/2addr v8, v2

    mul-long v2, v28, v36

    add-long/2addr v8, v2

    mul-long v34, v34, v30

    add-long v8, v8, v34

    mul-long v11, v11, v0

    mul-long v2, v14, v52

    add-long/2addr v11, v2

    mul-long v2, v16, v50

    add-long/2addr v11, v2

    mul-long v2, v18, v48

    add-long/2addr v11, v2

    mul-long v2, v20, v46

    add-long/2addr v11, v2

    mul-long v2, v22, v44

    add-long/2addr v11, v2

    mul-long v2, v24, v42

    add-long/2addr v11, v2

    mul-long v2, v26, v40

    add-long/2addr v11, v2

    mul-long v2, v28, v38

    add-long/2addr v11, v2

    mul-long v36, v36, v30

    add-long v11, v11, v36

    mul-long v14, v14, v0

    mul-long v2, v16, v52

    add-long/2addr v14, v2

    mul-long v2, v18, v50

    add-long/2addr v14, v2

    mul-long v2, v20, v48

    add-long/2addr v14, v2

    mul-long v2, v22, v46

    add-long/2addr v14, v2

    mul-long v2, v24, v44

    add-long/2addr v14, v2

    mul-long v2, v26, v42

    add-long/2addr v14, v2

    mul-long v2, v28, v40

    add-long/2addr v14, v2

    mul-long v38, v38, v30

    add-long v14, v14, v38

    mul-long v16, v16, v0

    mul-long v2, v18, v52

    add-long v16, v16, v2

    mul-long v2, v20, v50

    add-long v16, v16, v2

    mul-long v2, v22, v48

    add-long v16, v16, v2

    mul-long v2, v24, v46

    add-long v16, v16, v2

    mul-long v2, v26, v44

    add-long v16, v16, v2

    mul-long v2, v28, v42

    add-long v16, v16, v2

    mul-long v40, v40, v30

    add-long v16, v16, v40

    mul-long v18, v18, v0

    mul-long v2, v20, v52

    add-long v18, v18, v2

    mul-long v2, v22, v50

    add-long v18, v18, v2

    mul-long v2, v24, v48

    add-long v18, v18, v2

    mul-long v2, v26, v46

    add-long v18, v18, v2

    mul-long v2, v28, v44

    add-long v18, v18, v2

    mul-long v42, v42, v30

    add-long v18, v18, v42

    mul-long v20, v20, v0

    mul-long v2, v22, v52

    add-long v20, v20, v2

    mul-long v2, v24, v50

    add-long v20, v20, v2

    mul-long v2, v26, v48

    add-long v20, v20, v2

    mul-long v2, v28, v46

    add-long v20, v20, v2

    mul-long v44, v44, v30

    add-long v20, v20, v44

    mul-long v22, v22, v0

    mul-long v2, v24, v52

    add-long v22, v22, v2

    mul-long v2, v26, v50

    add-long v22, v22, v2

    mul-long v2, v28, v48

    add-long v22, v22, v2

    mul-long v46, v46, v30

    add-long v22, v22, v46

    mul-long v24, v24, v0

    mul-long v2, v26, v52

    add-long v24, v24, v2

    mul-long v2, v28, v50

    add-long v24, v24, v2

    mul-long v48, v48, v30

    add-long v24, v24, v48

    mul-long v26, v26, v0

    mul-long v2, v28, v52

    add-long v26, v26, v2

    mul-long v50, v50, v30

    add-long v26, v26, v50

    mul-long v28, v28, v0

    mul-long v52, v52, v30

    add-long v28, v28, v52

    mul-long v30, v30, v0

    const-wide/32 v0, 0x100000

    add-long v2, v54, v0

    const/16 v4, 0x15

    shr-long/2addr v2, v4

    add-long v56, v56, v2

    shl-long/2addr v2, v4

    sub-long v54, v54, v2

    add-long v2, v58, v0

    shr-long/2addr v2, v4

    add-long v60, v60, v2

    shl-long/2addr v2, v4

    sub-long v58, v58, v2

    add-long v2, v62, v0

    shr-long/2addr v2, v4

    add-long v64, v64, v2

    shl-long/2addr v2, v4

    sub-long v62, v62, v2

    add-long v2, v66, v0

    shr-long/2addr v2, v4

    add-long v68, v68, v2

    shl-long/2addr v2, v4

    sub-long v66, v66, v2

    add-long v2, v70, v0

    shr-long/2addr v2, v4

    add-long v72, v72, v2

    shl-long/2addr v2, v4

    sub-long v70, v70, v2

    add-long v2, v5, v0

    shr-long/2addr v2, v4

    add-long v74, v74, v2

    shl-long/2addr v2, v4

    sub-long/2addr v5, v2

    add-long v2, v8, v0

    shr-long/2addr v2, v4

    add-long/2addr v11, v2

    shl-long/2addr v2, v4

    sub-long/2addr v8, v2

    add-long v2, v14, v0

    shr-long/2addr v2, v4

    add-long v16, v16, v2

    shl-long/2addr v2, v4

    sub-long/2addr v14, v2

    add-long v2, v18, v0

    shr-long/2addr v2, v4

    add-long v20, v20, v2

    shl-long/2addr v2, v4

    sub-long v18, v18, v2

    add-long v2, v22, v0

    shr-long/2addr v2, v4

    add-long v24, v24, v2

    shl-long/2addr v2, v4

    sub-long v22, v22, v2

    add-long v2, v26, v0

    shr-long/2addr v2, v4

    add-long v28, v28, v2

    shl-long/2addr v2, v4

    sub-long v26, v26, v2

    add-long v2, v30, v0

    shr-long/2addr v2, v4

    const-wide/16 v32, 0x0

    add-long v32, v2, v32

    shl-long/2addr v2, v4

    sub-long v30, v30, v2

    add-long v2, v56, v0

    shr-long/2addr v2, v4

    add-long v58, v58, v2

    shl-long/2addr v2, v4

    sub-long v56, v56, v2

    add-long v2, v60, v0

    shr-long/2addr v2, v4

    add-long v62, v62, v2

    shl-long/2addr v2, v4

    sub-long v60, v60, v2

    add-long v2, v64, v0

    shr-long/2addr v2, v4

    add-long v66, v66, v2

    shl-long/2addr v2, v4

    sub-long v64, v64, v2

    add-long v2, v68, v0

    shr-long/2addr v2, v4

    add-long v70, v70, v2

    shl-long/2addr v2, v4

    sub-long v68, v68, v2

    add-long v2, v72, v0

    shr-long/2addr v2, v4

    add-long/2addr v5, v2

    shl-long/2addr v2, v4

    sub-long v72, v72, v2

    add-long v2, v74, v0

    shr-long/2addr v2, v4

    add-long/2addr v8, v2

    shl-long/2addr v2, v4

    sub-long v74, v74, v2

    add-long v2, v11, v0

    shr-long/2addr v2, v4

    add-long/2addr v14, v2

    shl-long/2addr v2, v4

    sub-long/2addr v11, v2

    add-long v2, v16, v0

    shr-long/2addr v2, v4

    add-long v18, v18, v2

    shl-long/2addr v2, v4

    sub-long v16, v16, v2

    add-long v2, v20, v0

    shr-long/2addr v2, v4

    add-long v22, v22, v2

    shl-long/2addr v2, v4

    sub-long v20, v20, v2

    add-long v2, v24, v0

    shr-long/2addr v2, v4

    add-long v26, v26, v2

    shl-long/2addr v2, v4

    sub-long v24, v24, v2

    add-long v2, v28, v0

    shr-long/2addr v2, v4

    add-long v30, v30, v2

    shl-long/2addr v2, v4

    sub-long v28, v28, v2

    const-wide/32 v2, 0xa2c13

    mul-long v34, v32, v2

    add-long v74, v74, v34

    const-wide/32 v34, 0x72d18

    mul-long v36, v32, v34

    add-long v8, v8, v36

    const-wide/32 v36, 0x9fb67

    mul-long v38, v32, v36

    add-long v11, v11, v38

    const-wide/32 v38, 0xf39ad

    mul-long v40, v32, v38

    sub-long v14, v14, v40

    const-wide/32 v40, 0x215d1

    mul-long v42, v32, v40

    add-long v16, v16, v42

    const-wide/32 v42, 0xa6f7d

    mul-long v32, v32, v42

    sub-long v18, v18, v32

    mul-long v32, v30, v2

    add-long v5, v5, v32

    mul-long v32, v30, v34

    add-long v74, v74, v32

    mul-long v32, v30, v36

    add-long v8, v8, v32

    mul-long v32, v30, v38

    sub-long v11, v11, v32

    mul-long v32, v30, v40

    add-long v14, v14, v32

    mul-long v30, v30, v42

    sub-long v16, v16, v30

    mul-long v30, v28, v2

    add-long v72, v72, v30

    mul-long v30, v28, v34

    add-long v5, v5, v30

    mul-long v30, v28, v36

    add-long v74, v74, v30

    mul-long v30, v28, v38

    sub-long v8, v8, v30

    mul-long v30, v28, v40

    add-long v11, v11, v30

    mul-long v28, v28, v42

    sub-long v14, v14, v28

    mul-long v28, v26, v2

    add-long v70, v70, v28

    mul-long v28, v26, v34

    add-long v72, v72, v28

    mul-long v28, v26, v36

    add-long v5, v5, v28

    mul-long v28, v26, v38

    sub-long v74, v74, v28

    mul-long v28, v26, v40

    add-long v8, v8, v28

    mul-long v26, v26, v42

    sub-long v11, v11, v26

    mul-long v26, v24, v2

    add-long v68, v68, v26

    mul-long v26, v24, v34

    add-long v70, v70, v26

    mul-long v26, v24, v36

    add-long v72, v72, v26

    mul-long v26, v24, v38

    sub-long v5, v5, v26

    mul-long v26, v24, v40

    add-long v74, v74, v26

    mul-long v24, v24, v42

    sub-long v8, v8, v24

    mul-long v24, v22, v2

    add-long v66, v66, v24

    mul-long v24, v22, v34

    add-long v68, v68, v24

    mul-long v24, v22, v36

    add-long v70, v70, v24

    mul-long v24, v22, v38

    sub-long v72, v72, v24

    mul-long v24, v22, v40

    add-long v5, v5, v24

    mul-long v22, v22, v42

    sub-long v74, v74, v22

    add-long v22, v66, v0

    const/16 v4, 0x15

    shr-long v22, v22, v4

    add-long v68, v68, v22

    shl-long v22, v22, v4

    sub-long v66, v66, v22

    add-long v22, v70, v0

    shr-long v22, v22, v4

    add-long v72, v72, v22

    shl-long v22, v22, v4

    sub-long v70, v70, v22

    add-long v22, v5, v0

    shr-long v22, v22, v4

    add-long v74, v74, v22

    shl-long v22, v22, v4

    sub-long v5, v5, v22

    add-long v22, v8, v0

    shr-long v22, v22, v4

    add-long v11, v11, v22

    shl-long v22, v22, v4

    sub-long v8, v8, v22

    add-long v22, v14, v0

    shr-long v22, v22, v4

    add-long v16, v16, v22

    shl-long v22, v22, v4

    sub-long v14, v14, v22

    add-long v22, v18, v0

    shr-long v22, v22, v4

    add-long v20, v20, v22

    shl-long v22, v22, v4

    sub-long v18, v18, v22

    add-long v22, v68, v0

    shr-long v22, v22, v4

    add-long v70, v70, v22

    shl-long v22, v22, v4

    sub-long v68, v68, v22

    add-long v22, v72, v0

    shr-long v22, v22, v4

    add-long v5, v5, v22

    shl-long v22, v22, v4

    sub-long v72, v72, v22

    add-long v22, v74, v0

    shr-long v22, v22, v4

    add-long v8, v8, v22

    shl-long v22, v22, v4

    sub-long v74, v74, v22

    add-long v22, v11, v0

    shr-long v22, v22, v4

    add-long v14, v14, v22

    shl-long v22, v22, v4

    sub-long v11, v11, v22

    add-long v22, v16, v0

    shr-long v22, v22, v4

    add-long v18, v18, v22

    shl-long v22, v22, v4

    sub-long v16, v16, v22

    mul-long v22, v20, v2

    add-long v64, v64, v22

    mul-long v22, v20, v34

    add-long v66, v66, v22

    mul-long v22, v20, v36

    add-long v68, v68, v22

    mul-long v22, v20, v38

    sub-long v70, v70, v22

    mul-long v22, v20, v40

    add-long v72, v72, v22

    mul-long v20, v20, v42

    sub-long v5, v5, v20

    mul-long v20, v18, v2

    add-long v62, v62, v20

    mul-long v20, v18, v34

    add-long v64, v64, v20

    mul-long v20, v18, v36

    add-long v66, v66, v20

    mul-long v20, v18, v38

    sub-long v68, v68, v20

    mul-long v20, v18, v40

    add-long v70, v70, v20

    mul-long v18, v18, v42

    sub-long v72, v72, v18

    mul-long v18, v16, v2

    add-long v60, v60, v18

    mul-long v18, v16, v34

    add-long v62, v62, v18

    mul-long v18, v16, v36

    add-long v64, v64, v18

    mul-long v18, v16, v38

    sub-long v66, v66, v18

    mul-long v18, v16, v40

    add-long v68, v68, v18

    mul-long v16, v16, v42

    sub-long v70, v70, v16

    mul-long v16, v14, v2

    add-long v58, v58, v16

    mul-long v16, v14, v34

    add-long v60, v60, v16

    mul-long v16, v14, v36

    add-long v62, v62, v16

    mul-long v16, v14, v38

    sub-long v64, v64, v16

    mul-long v16, v14, v40

    add-long v66, v66, v16

    mul-long v14, v14, v42

    sub-long v68, v68, v14

    mul-long v13, v11, v2

    add-long v56, v56, v13

    mul-long v13, v11, v34

    add-long v58, v58, v13

    mul-long v13, v11, v36

    add-long v60, v60, v13

    mul-long v13, v11, v38

    sub-long v62, v62, v13

    mul-long v13, v11, v40

    add-long v64, v64, v13

    mul-long v11, v11, v42

    sub-long v66, v66, v11

    mul-long v11, v8, v2

    add-long v54, v54, v11

    mul-long v11, v8, v34

    add-long v56, v56, v11

    mul-long v11, v8, v36

    add-long v58, v58, v11

    mul-long v11, v8, v38

    sub-long v60, v60, v11

    mul-long v11, v8, v40

    add-long v62, v62, v11

    mul-long v8, v8, v42

    sub-long v64, v64, v8

    add-long v8, v54, v0

    const/16 v4, 0x15

    shr-long/2addr v8, v4

    add-long v56, v56, v8

    shl-long/2addr v8, v4

    sub-long v54, v54, v8

    add-long v8, v58, v0

    shr-long/2addr v8, v4

    add-long v60, v60, v8

    shl-long/2addr v8, v4

    sub-long v58, v58, v8

    add-long v8, v62, v0

    shr-long/2addr v8, v4

    add-long v64, v64, v8

    shl-long/2addr v8, v4

    sub-long v62, v62, v8

    add-long v8, v66, v0

    shr-long/2addr v8, v4

    add-long v68, v68, v8

    shl-long/2addr v8, v4

    sub-long v66, v66, v8

    add-long v8, v70, v0

    shr-long/2addr v8, v4

    add-long v72, v72, v8

    shl-long/2addr v8, v4

    sub-long v70, v70, v8

    add-long v8, v5, v0

    shr-long/2addr v8, v4

    add-long v74, v74, v8

    shl-long/2addr v8, v4

    sub-long/2addr v5, v8

    add-long v8, v56, v0

    shr-long/2addr v8, v4

    add-long v58, v58, v8

    shl-long/2addr v8, v4

    sub-long v56, v56, v8

    add-long v8, v60, v0

    shr-long/2addr v8, v4

    add-long v62, v62, v8

    shl-long/2addr v8, v4

    sub-long v60, v60, v8

    add-long v8, v64, v0

    shr-long/2addr v8, v4

    add-long v66, v66, v8

    shl-long/2addr v8, v4

    sub-long v64, v64, v8

    add-long v8, v68, v0

    shr-long/2addr v8, v4

    add-long v70, v70, v8

    shl-long/2addr v8, v4

    sub-long v68, v68, v8

    add-long v8, v72, v0

    shr-long/2addr v8, v4

    add-long/2addr v5, v8

    shl-long/2addr v8, v4

    sub-long v72, v72, v8

    add-long v0, v74, v0

    shr-long/2addr v0, v4

    const-wide/16 v8, 0x0

    add-long/2addr v8, v0

    shl-long/2addr v0, v4

    sub-long v74, v74, v0

    mul-long v0, v8, v2

    add-long v54, v54, v0

    mul-long v0, v8, v34

    add-long v56, v56, v0

    mul-long v0, v8, v36

    add-long v58, v58, v0

    mul-long v0, v8, v38

    sub-long v60, v60, v0

    mul-long v0, v8, v40

    add-long v62, v62, v0

    mul-long v8, v8, v42

    sub-long v64, v64, v8

    const/16 v0, 0x15

    shr-long v8, v54, v0

    add-long v56, v56, v8

    shl-long/2addr v8, v0

    sub-long v54, v54, v8

    shr-long v8, v56, v0

    add-long v58, v58, v8

    shl-long/2addr v8, v0

    sub-long v56, v56, v8

    shr-long v8, v58, v0

    add-long v60, v60, v8

    shl-long/2addr v8, v0

    sub-long v58, v58, v8

    shr-long v8, v60, v0

    add-long v62, v62, v8

    shl-long/2addr v8, v0

    sub-long v60, v60, v8

    shr-long v8, v62, v0

    add-long v64, v64, v8

    shl-long/2addr v8, v0

    sub-long v62, v62, v8

    shr-long v8, v64, v0

    add-long v66, v66, v8

    shl-long/2addr v8, v0

    sub-long v64, v64, v8

    shr-long v8, v66, v0

    add-long v68, v68, v8

    shl-long/2addr v8, v0

    sub-long v66, v66, v8

    shr-long v8, v68, v0

    add-long v70, v70, v8

    shl-long/2addr v8, v0

    sub-long v68, v68, v8

    shr-long v8, v70, v0

    add-long v72, v72, v8

    shl-long/2addr v8, v0

    sub-long v70, v70, v8

    shr-long v8, v72, v0

    add-long/2addr v5, v8

    shl-long/2addr v8, v0

    sub-long v72, v72, v8

    shr-long v8, v5, v0

    add-long v74, v74, v8

    shl-long/2addr v8, v0

    sub-long/2addr v5, v8

    shr-long v8, v74, v0

    const-wide/16 v11, 0x0

    add-long/2addr v11, v8

    shl-long/2addr v8, v0

    sub-long v74, v74, v8

    mul-long v2, v2, v11

    add-long v54, v54, v2

    mul-long v34, v34, v11

    add-long v56, v56, v34

    mul-long v36, v36, v11

    add-long v58, v58, v36

    mul-long v38, v38, v11

    sub-long v60, v60, v38

    mul-long v40, v40, v11

    add-long v62, v62, v40

    mul-long v11, v11, v42

    sub-long v64, v64, v11

    const/16 v0, 0x15

    shr-long v1, v54, v0

    add-long v56, v56, v1

    shl-long/2addr v1, v0

    sub-long v54, v54, v1

    shr-long v1, v56, v0

    add-long v58, v58, v1

    shl-long/2addr v1, v0

    sub-long v56, v56, v1

    shr-long v1, v58, v0

    add-long v60, v60, v1

    shl-long/2addr v1, v0

    sub-long v58, v58, v1

    shr-long v1, v60, v0

    add-long v62, v62, v1

    shl-long/2addr v1, v0

    sub-long v60, v60, v1

    shr-long v1, v62, v0

    add-long v64, v64, v1

    shl-long/2addr v1, v0

    sub-long v62, v62, v1

    shr-long v1, v64, v0

    add-long v66, v66, v1

    shl-long/2addr v1, v0

    sub-long v64, v64, v1

    shr-long v1, v66, v0

    add-long v68, v68, v1

    shl-long/2addr v1, v0

    sub-long v66, v66, v1

    shr-long v1, v68, v0

    add-long v70, v70, v1

    shl-long/2addr v1, v0

    sub-long v68, v68, v1

    shr-long v1, v70, v0

    add-long v72, v72, v1

    shl-long/2addr v1, v0

    sub-long v70, v70, v1

    shr-long v1, v72, v0

    add-long/2addr v5, v1

    shl-long/2addr v1, v0

    sub-long v72, v72, v1

    shr-long v1, v5, v0

    add-long v74, v74, v1

    shl-long/2addr v1, v0

    sub-long/2addr v5, v1

    const/4 v0, 0x0

    shr-long v0, v54, v0

    long-to-int v0, v0

    int-to-byte v0, v0

    const/4 v1, 0x0

    .line 340
    aput-byte v0, p0, v1

    const/16 v0, 0x8

    shr-long v0, v54, v0

    long-to-int v0, v0

    int-to-byte v0, v0

    const/4 v1, 0x1

    .line 341
    aput-byte v0, p0, v1

    const/16 v0, 0x10

    shr-long v0, v54, v0

    shl-long v2, v56, v10

    or-long/2addr v0, v2

    long-to-int v0, v0

    int-to-byte v0, v0

    .line 342
    aput-byte v0, p0, v7

    const/4 v0, 0x3

    shr-long v1, v56, v0

    long-to-int v1, v1

    int-to-byte v1, v1

    .line 343
    aput-byte v1, p0, v0

    const/16 v0, 0xb

    shr-long v0, v56, v0

    long-to-int v0, v0

    int-to-byte v0, v0

    const/4 v1, 0x4

    .line 344
    aput-byte v0, p0, v1

    const/16 v0, 0x13

    shr-long v0, v56, v0

    shl-long v2, v58, v7

    or-long/2addr v0, v2

    long-to-int v0, v0

    int-to-byte v0, v0

    .line 345
    aput-byte v0, p0, v10

    const/4 v0, 0x6

    shr-long v1, v58, v0

    long-to-int v1, v1

    int-to-byte v1, v1

    .line 346
    aput-byte v1, p0, v0

    const/16 v0, 0xe

    shr-long v0, v58, v0

    const/4 v2, 0x7

    shl-long v3, v60, v2

    or-long/2addr v0, v3

    long-to-int v0, v0

    int-to-byte v0, v0

    .line 347
    aput-byte v0, p0, v2

    const/4 v0, 0x1

    shr-long v1, v60, v0

    long-to-int v0, v1

    int-to-byte v0, v0

    const/16 v1, 0x8

    .line 348
    aput-byte v0, p0, v1

    const/16 v0, 0x9

    shr-long v0, v60, v0

    long-to-int v0, v0

    int-to-byte v0, v0

    const/16 v1, 0x9

    .line 349
    aput-byte v0, p0, v1

    const/16 v0, 0x11

    shr-long v0, v60, v0

    const/4 v2, 0x4

    shl-long v2, v62, v2

    or-long/2addr v0, v2

    long-to-int v0, v0

    int-to-byte v0, v0

    const/16 v1, 0xa

    .line 350
    aput-byte v0, p0, v1

    const/4 v0, 0x4

    shr-long v0, v62, v0

    long-to-int v0, v0

    int-to-byte v0, v0

    const/16 v1, 0xb

    .line 351
    aput-byte v0, p0, v1

    const/16 v0, 0xc

    shr-long v0, v62, v0

    long-to-int v0, v0

    int-to-byte v0, v0

    const/16 v1, 0xc

    .line 352
    aput-byte v0, p0, v1

    const/16 v0, 0x14

    shr-long v0, v62, v0

    const/4 v2, 0x1

    shl-long v3, v64, v2

    or-long/2addr v0, v3

    long-to-int v0, v0

    int-to-byte v0, v0

    const/16 v1, 0xd

    .line 353
    aput-byte v0, p0, v1

    const/4 v0, 0x7

    shr-long v1, v64, v0

    long-to-int v0, v1

    int-to-byte v0, v0

    const/16 v1, 0xe

    .line 354
    aput-byte v0, p0, v1

    const/16 v0, 0xf

    shr-long v0, v64, v0

    const/4 v2, 0x6

    shl-long v3, v66, v2

    or-long/2addr v0, v3

    long-to-int v0, v0

    int-to-byte v0, v0

    const/16 v1, 0xf

    .line 355
    aput-byte v0, p0, v1

    shr-long v0, v66, v7

    long-to-int v0, v0

    int-to-byte v0, v0

    const/16 v1, 0x10

    .line 356
    aput-byte v0, p0, v1

    const/16 v0, 0xa

    shr-long v0, v66, v0

    long-to-int v0, v0

    int-to-byte v0, v0

    const/16 v1, 0x11

    .line 357
    aput-byte v0, p0, v1

    const/16 v0, 0x12

    shr-long v0, v66, v0

    const/4 v2, 0x3

    shl-long v3, v68, v2

    or-long/2addr v0, v3

    long-to-int v0, v0

    int-to-byte v0, v0

    const/16 v1, 0x12

    .line 358
    aput-byte v0, p0, v1

    shr-long v0, v68, v10

    long-to-int v0, v0

    int-to-byte v0, v0

    const/16 v1, 0x13

    .line 359
    aput-byte v0, p0, v1

    const/16 v0, 0xd

    shr-long v0, v68, v0

    long-to-int v0, v0

    int-to-byte v0, v0

    const/16 v1, 0x14

    .line 360
    aput-byte v0, p0, v1

    const/4 v0, 0x0

    shr-long v0, v70, v0

    long-to-int v0, v0

    int-to-byte v0, v0

    const/16 v1, 0x15

    .line 361
    aput-byte v0, p0, v1

    const/16 v0, 0x8

    shr-long v0, v70, v0

    long-to-int v0, v0

    int-to-byte v0, v0

    const/16 v1, 0x16

    .line 362
    aput-byte v0, p0, v1

    const/16 v0, 0x10

    shr-long v0, v70, v0

    shl-long v2, v72, v10

    or-long/2addr v0, v2

    long-to-int v0, v0

    int-to-byte v0, v0

    const/16 v1, 0x17

    .line 363
    aput-byte v0, p0, v1

    const/4 v0, 0x3

    shr-long v0, v72, v0

    long-to-int v0, v0

    int-to-byte v0, v0

    const/16 v1, 0x18

    .line 364
    aput-byte v0, p0, v1

    const/16 v0, 0xb

    shr-long v0, v72, v0

    long-to-int v0, v0

    int-to-byte v0, v0

    const/16 v1, 0x19

    .line 365
    aput-byte v0, p0, v1

    const/16 v0, 0x13

    shr-long v0, v72, v0

    shl-long v2, v5, v7

    or-long/2addr v0, v2

    long-to-int v0, v0

    int-to-byte v0, v0

    const/16 v1, 0x1a

    .line 366
    aput-byte v0, p0, v1

    const/4 v0, 0x6

    shr-long v0, v5, v0

    long-to-int v0, v0

    int-to-byte v0, v0

    const/16 v1, 0x1b

    .line 367
    aput-byte v0, p0, v1

    const/16 v0, 0xe

    shr-long v0, v5, v0

    const/4 v2, 0x7

    shl-long v2, v74, v2

    or-long/2addr v0, v2

    long-to-int v0, v0

    int-to-byte v0, v0

    const/16 v1, 0x1c

    .line 368
    aput-byte v0, p0, v1

    const/4 v0, 0x1

    shr-long v0, v74, v0

    long-to-int v0, v0

    int-to-byte v0, v0

    const/16 v1, 0x1d

    .line 369
    aput-byte v0, p0, v1

    const/16 v0, 0x9

    shr-long v0, v74, v0

    long-to-int v0, v0

    int-to-byte v0, v0

    const/16 v1, 0x1e

    .line 370
    aput-byte v0, p0, v1

    const/16 v0, 0x11

    shr-long v0, v74, v0

    long-to-int v0, v0

    int-to-byte v0, v0

    const/16 v1, 0x1f

    .line 371
    aput-byte v0, p0, v1

    return-void
.end method
