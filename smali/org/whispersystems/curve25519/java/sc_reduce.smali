.class public Lorg/whispersystems/curve25519/java/sc_reduce;
.super Ljava/lang/Object;
.source "sc_reduce.java"


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

.method public static sc_reduce([B)V
    .locals 65

    move-object/from16 v0, p0

    const/4 v1, 0x0

    .line 41
    invoke-static {v0, v1}, Lorg/whispersystems/curve25519/java/sc_reduce;->load_3([BI)J

    move-result-wide v1

    const-wide/32 v3, 0x1fffff

    and-long/2addr v1, v3

    const/4 v5, 0x2

    .line 42
    invoke-static {v0, v5}, Lorg/whispersystems/curve25519/java/sc_reduce;->load_4([BI)J

    move-result-wide v6

    const/4 v8, 0x5

    ushr-long/2addr v6, v8

    and-long/2addr v6, v3

    .line 43
    invoke-static {v0, v8}, Lorg/whispersystems/curve25519/java/sc_reduce;->load_3([BI)J

    move-result-wide v9

    ushr-long/2addr v9, v5

    and-long/2addr v9, v3

    const/4 v11, 0x7

    .line 44
    invoke-static {v0, v11}, Lorg/whispersystems/curve25519/java/sc_reduce;->load_4([BI)J

    move-result-wide v12

    ushr-long/2addr v12, v11

    and-long/2addr v12, v3

    const/16 v14, 0xa

    .line 45
    invoke-static {v0, v14}, Lorg/whispersystems/curve25519/java/sc_reduce;->load_4([BI)J

    move-result-wide v14

    const/16 v16, 0x4

    ushr-long v14, v14, v16

    and-long/2addr v14, v3

    const/16 v11, 0xd

    .line 46
    invoke-static {v0, v11}, Lorg/whispersystems/curve25519/java/sc_reduce;->load_3([BI)J

    move-result-wide v17

    const/4 v11, 0x1

    ushr-long v17, v17, v11

    and-long v17, v17, v3

    const/16 v11, 0xf

    .line 47
    invoke-static {v0, v11}, Lorg/whispersystems/curve25519/java/sc_reduce;->load_4([BI)J

    move-result-wide v19

    const/4 v11, 0x6

    ushr-long v19, v19, v11

    and-long v19, v19, v3

    const/16 v11, 0x12

    .line 48
    invoke-static {v0, v11}, Lorg/whispersystems/curve25519/java/sc_reduce;->load_3([BI)J

    move-result-wide v21

    const/4 v11, 0x3

    ushr-long v21, v21, v11

    and-long v21, v21, v3

    const/16 v11, 0x15

    .line 49
    invoke-static {v0, v11}, Lorg/whispersystems/curve25519/java/sc_reduce;->load_3([BI)J

    move-result-wide v23

    and-long v23, v23, v3

    const/16 v11, 0x17

    .line 50
    invoke-static {v0, v11}, Lorg/whispersystems/curve25519/java/sc_reduce;->load_4([BI)J

    move-result-wide v25

    ushr-long v25, v25, v8

    and-long v25, v25, v3

    const/16 v11, 0x1a

    .line 51
    invoke-static {v0, v11}, Lorg/whispersystems/curve25519/java/sc_reduce;->load_3([BI)J

    move-result-wide v27

    ushr-long v27, v27, v5

    and-long v27, v27, v3

    const/16 v11, 0x1c

    .line 52
    invoke-static {v0, v11}, Lorg/whispersystems/curve25519/java/sc_reduce;->load_4([BI)J

    move-result-wide v29

    const/4 v11, 0x7

    ushr-long v29, v29, v11

    and-long v29, v29, v3

    const/16 v11, 0x1f

    .line 53
    invoke-static {v0, v11}, Lorg/whispersystems/curve25519/java/sc_reduce;->load_4([BI)J

    move-result-wide v31

    const/4 v11, 0x4

    ushr-long v31, v31, v11

    and-long v31, v31, v3

    const/16 v11, 0x22

    .line 54
    invoke-static {v0, v11}, Lorg/whispersystems/curve25519/java/sc_reduce;->load_3([BI)J

    move-result-wide v33

    const/4 v11, 0x1

    ushr-long v33, v33, v11

    and-long v33, v33, v3

    const/16 v11, 0x24

    .line 55
    invoke-static {v0, v11}, Lorg/whispersystems/curve25519/java/sc_reduce;->load_4([BI)J

    move-result-wide v35

    const/4 v11, 0x6

    ushr-long v35, v35, v11

    and-long v35, v35, v3

    const/16 v11, 0x27

    .line 56
    invoke-static {v0, v11}, Lorg/whispersystems/curve25519/java/sc_reduce;->load_3([BI)J

    move-result-wide v37

    const/4 v11, 0x3

    ushr-long v37, v37, v11

    and-long v37, v37, v3

    const/16 v11, 0x2a

    .line 57
    invoke-static {v0, v11}, Lorg/whispersystems/curve25519/java/sc_reduce;->load_3([BI)J

    move-result-wide v39

    and-long v39, v39, v3

    const/16 v11, 0x2c

    .line 58
    invoke-static {v0, v11}, Lorg/whispersystems/curve25519/java/sc_reduce;->load_4([BI)J

    move-result-wide v41

    ushr-long v41, v41, v8

    and-long v41, v41, v3

    const/16 v11, 0x2f

    .line 59
    invoke-static {v0, v11}, Lorg/whispersystems/curve25519/java/sc_reduce;->load_3([BI)J

    move-result-wide v43

    ushr-long v43, v43, v5

    and-long v43, v43, v3

    const/16 v11, 0x31

    .line 60
    invoke-static {v0, v11}, Lorg/whispersystems/curve25519/java/sc_reduce;->load_4([BI)J

    move-result-wide v45

    const/4 v11, 0x7

    ushr-long v45, v45, v11

    and-long v45, v45, v3

    const/16 v11, 0x34

    .line 61
    invoke-static {v0, v11}, Lorg/whispersystems/curve25519/java/sc_reduce;->load_4([BI)J

    move-result-wide v47

    const/4 v11, 0x4

    ushr-long v47, v47, v11

    and-long v47, v47, v3

    const/16 v11, 0x37

    .line 62
    invoke-static {v0, v11}, Lorg/whispersystems/curve25519/java/sc_reduce;->load_3([BI)J

    move-result-wide v49

    const/4 v11, 0x1

    ushr-long v49, v49, v11

    and-long v49, v49, v3

    const/16 v11, 0x39

    .line 63
    invoke-static {v0, v11}, Lorg/whispersystems/curve25519/java/sc_reduce;->load_4([BI)J

    move-result-wide v51

    const/4 v11, 0x6

    ushr-long v51, v51, v11

    and-long v3, v51, v3

    const/16 v11, 0x3c

    .line 64
    invoke-static {v0, v11}, Lorg/whispersystems/curve25519/java/sc_reduce;->load_4([BI)J

    move-result-wide v51

    const/4 v11, 0x3

    ushr-long v51, v51, v11

    const-wide/32 v53, 0xa2c13

    mul-long v55, v51, v53

    add-long v29, v29, v55

    const-wide/32 v55, 0x72d18

    mul-long v57, v51, v55

    add-long v31, v31, v57

    const-wide/32 v57, 0x9fb67

    mul-long v59, v51, v57

    add-long v33, v33, v59

    const-wide/32 v59, 0xf39ad

    mul-long v61, v51, v59

    sub-long v35, v35, v61

    const-wide/32 v61, 0x215d1

    mul-long v63, v51, v61

    add-long v37, v37, v63

    const-wide/32 v63, 0xa6f7d

    mul-long v51, v51, v63

    sub-long v39, v39, v51

    mul-long v51, v3, v53

    add-long v27, v27, v51

    mul-long v51, v3, v55

    add-long v29, v29, v51

    mul-long v51, v3, v57

    add-long v31, v31, v51

    mul-long v51, v3, v59

    sub-long v33, v33, v51

    mul-long v51, v3, v61

    add-long v35, v35, v51

    mul-long v3, v3, v63

    sub-long v37, v37, v3

    mul-long v3, v49, v53

    add-long v25, v25, v3

    mul-long v3, v49, v55

    add-long v27, v27, v3

    mul-long v3, v49, v57

    add-long v29, v29, v3

    mul-long v3, v49, v59

    sub-long v31, v31, v3

    mul-long v3, v49, v61

    add-long v33, v33, v3

    mul-long v49, v49, v63

    sub-long v35, v35, v49

    mul-long v3, v47, v53

    add-long v23, v23, v3

    mul-long v3, v47, v55

    add-long v25, v25, v3

    mul-long v3, v47, v57

    add-long v27, v27, v3

    mul-long v3, v47, v59

    sub-long v29, v29, v3

    mul-long v3, v47, v61

    add-long v31, v31, v3

    mul-long v47, v47, v63

    sub-long v33, v33, v47

    mul-long v3, v45, v53

    add-long v21, v21, v3

    mul-long v3, v45, v55

    add-long v23, v23, v3

    mul-long v3, v45, v57

    add-long v25, v25, v3

    mul-long v3, v45, v59

    sub-long v27, v27, v3

    mul-long v3, v45, v61

    add-long v29, v29, v3

    mul-long v45, v45, v63

    sub-long v31, v31, v45

    mul-long v3, v43, v53

    add-long v19, v19, v3

    mul-long v3, v43, v55

    add-long v21, v21, v3

    mul-long v3, v43, v57

    add-long v23, v23, v3

    mul-long v3, v43, v59

    sub-long v25, v25, v3

    mul-long v3, v43, v61

    add-long v27, v27, v3

    mul-long v43, v43, v63

    sub-long v29, v29, v43

    const-wide/32 v3, 0x100000

    add-long v43, v19, v3

    const/16 v11, 0x15

    shr-long v43, v43, v11

    add-long v21, v21, v43

    shl-long v43, v43, v11

    sub-long v19, v19, v43

    add-long v43, v23, v3

    shr-long v43, v43, v11

    add-long v25, v25, v43

    shl-long v43, v43, v11

    sub-long v23, v23, v43

    add-long v43, v27, v3

    shr-long v43, v43, v11

    add-long v29, v29, v43

    shl-long v43, v43, v11

    sub-long v27, v27, v43

    add-long v43, v31, v3

    shr-long v43, v43, v11

    add-long v33, v33, v43

    shl-long v43, v43, v11

    sub-long v31, v31, v43

    add-long v43, v35, v3

    shr-long v43, v43, v11

    add-long v37, v37, v43

    shl-long v43, v43, v11

    sub-long v35, v35, v43

    add-long v43, v39, v3

    shr-long v43, v43, v11

    add-long v41, v41, v43

    shl-long v43, v43, v11

    sub-long v39, v39, v43

    add-long v43, v21, v3

    shr-long v43, v43, v11

    add-long v23, v23, v43

    shl-long v43, v43, v11

    sub-long v21, v21, v43

    add-long v43, v25, v3

    shr-long v43, v43, v11

    add-long v27, v27, v43

    shl-long v43, v43, v11

    sub-long v25, v25, v43

    add-long v43, v29, v3

    shr-long v43, v43, v11

    add-long v31, v31, v43

    shl-long v43, v43, v11

    sub-long v29, v29, v43

    add-long v43, v33, v3

    shr-long v43, v43, v11

    add-long v35, v35, v43

    shl-long v43, v43, v11

    sub-long v33, v33, v43

    add-long v43, v37, v3

    shr-long v43, v43, v11

    add-long v39, v39, v43

    shl-long v43, v43, v11

    sub-long v37, v37, v43

    mul-long v43, v41, v53

    add-long v17, v17, v43

    mul-long v43, v41, v55

    add-long v19, v19, v43

    mul-long v43, v41, v57

    add-long v21, v21, v43

    mul-long v43, v41, v59

    sub-long v23, v23, v43

    mul-long v43, v41, v61

    add-long v25, v25, v43

    mul-long v41, v41, v63

    sub-long v27, v27, v41

    mul-long v41, v39, v53

    add-long v14, v14, v41

    mul-long v41, v39, v55

    add-long v17, v17, v41

    mul-long v41, v39, v57

    add-long v19, v19, v41

    mul-long v41, v39, v59

    sub-long v21, v21, v41

    mul-long v41, v39, v61

    add-long v23, v23, v41

    mul-long v39, v39, v63

    sub-long v25, v25, v39

    mul-long v39, v37, v53

    add-long v12, v12, v39

    mul-long v39, v37, v55

    add-long v14, v14, v39

    mul-long v39, v37, v57

    add-long v17, v17, v39

    mul-long v39, v37, v59

    sub-long v19, v19, v39

    mul-long v39, v37, v61

    add-long v21, v21, v39

    mul-long v37, v37, v63

    sub-long v23, v23, v37

    mul-long v37, v35, v53

    add-long v9, v9, v37

    mul-long v37, v35, v55

    add-long v12, v12, v37

    mul-long v37, v35, v57

    add-long v14, v14, v37

    mul-long v37, v35, v59

    sub-long v17, v17, v37

    mul-long v37, v35, v61

    add-long v19, v19, v37

    mul-long v35, v35, v63

    sub-long v21, v21, v35

    mul-long v35, v33, v53

    add-long v6, v6, v35

    mul-long v35, v33, v55

    add-long v9, v9, v35

    mul-long v35, v33, v57

    add-long v12, v12, v35

    mul-long v35, v33, v59

    sub-long v14, v14, v35

    mul-long v35, v33, v61

    add-long v17, v17, v35

    mul-long v33, v33, v63

    sub-long v19, v19, v33

    mul-long v33, v31, v53

    add-long v1, v1, v33

    mul-long v33, v31, v55

    add-long v6, v6, v33

    mul-long v33, v31, v57

    add-long v9, v9, v33

    mul-long v33, v31, v59

    sub-long v12, v12, v33

    mul-long v33, v31, v61

    add-long v14, v14, v33

    mul-long v31, v31, v63

    sub-long v17, v17, v31

    add-long v31, v1, v3

    const/16 v11, 0x15

    shr-long v31, v31, v11

    add-long v6, v6, v31

    shl-long v31, v31, v11

    sub-long v1, v1, v31

    add-long v31, v9, v3

    shr-long v31, v31, v11

    add-long v12, v12, v31

    shl-long v31, v31, v11

    sub-long v9, v9, v31

    add-long v31, v14, v3

    shr-long v31, v31, v11

    add-long v17, v17, v31

    shl-long v31, v31, v11

    sub-long v14, v14, v31

    add-long v31, v19, v3

    shr-long v31, v31, v11

    add-long v21, v21, v31

    shl-long v31, v31, v11

    sub-long v19, v19, v31

    add-long v31, v23, v3

    shr-long v31, v31, v11

    add-long v25, v25, v31

    shl-long v31, v31, v11

    sub-long v23, v23, v31

    add-long v31, v27, v3

    shr-long v31, v31, v11

    add-long v29, v29, v31

    shl-long v31, v31, v11

    sub-long v27, v27, v31

    add-long v31, v6, v3

    shr-long v31, v31, v11

    add-long v9, v9, v31

    shl-long v31, v31, v11

    sub-long v6, v6, v31

    add-long v31, v12, v3

    shr-long v31, v31, v11

    add-long v14, v14, v31

    shl-long v31, v31, v11

    sub-long v12, v12, v31

    add-long v31, v17, v3

    shr-long v31, v31, v11

    add-long v19, v19, v31

    shl-long v31, v31, v11

    sub-long v17, v17, v31

    add-long v31, v21, v3

    shr-long v31, v31, v11

    add-long v23, v23, v31

    shl-long v31, v31, v11

    sub-long v21, v21, v31

    add-long v31, v25, v3

    shr-long v31, v31, v11

    add-long v27, v27, v31

    shl-long v31, v31, v11

    sub-long v25, v25, v31

    add-long v3, v29, v3

    shr-long/2addr v3, v11

    const-wide/16 v31, 0x0

    add-long v31, v3, v31

    shl-long/2addr v3, v11

    sub-long v29, v29, v3

    mul-long v3, v31, v53

    add-long/2addr v1, v3

    mul-long v3, v31, v55

    add-long/2addr v6, v3

    mul-long v3, v31, v57

    add-long/2addr v9, v3

    mul-long v3, v31, v59

    sub-long/2addr v12, v3

    mul-long v3, v31, v61

    add-long/2addr v14, v3

    mul-long v31, v31, v63

    sub-long v17, v17, v31

    const/16 v3, 0x15

    shr-long v31, v1, v3

    add-long v6, v6, v31

    shl-long v31, v31, v3

    sub-long v1, v1, v31

    shr-long v31, v6, v3

    add-long v9, v9, v31

    shl-long v31, v31, v3

    sub-long v6, v6, v31

    shr-long v31, v9, v3

    add-long v12, v12, v31

    shl-long v31, v31, v3

    sub-long v9, v9, v31

    shr-long v31, v12, v3

    add-long v14, v14, v31

    shl-long v31, v31, v3

    sub-long v12, v12, v31

    shr-long v31, v14, v3

    add-long v17, v17, v31

    shl-long v31, v31, v3

    sub-long v14, v14, v31

    shr-long v31, v17, v3

    add-long v19, v19, v31

    shl-long v31, v31, v3

    sub-long v17, v17, v31

    shr-long v31, v19, v3

    add-long v21, v21, v31

    shl-long v31, v31, v3

    sub-long v19, v19, v31

    shr-long v31, v21, v3

    add-long v23, v23, v31

    shl-long v31, v31, v3

    sub-long v21, v21, v31

    shr-long v31, v23, v3

    add-long v25, v25, v31

    shl-long v31, v31, v3

    sub-long v23, v23, v31

    shr-long v31, v25, v3

    add-long v27, v27, v31

    shl-long v31, v31, v3

    sub-long v25, v25, v31

    shr-long v31, v27, v3

    add-long v29, v29, v31

    shl-long v31, v31, v3

    sub-long v27, v27, v31

    shr-long v31, v29, v3

    const-wide/16 v33, 0x0

    add-long v33, v31, v33

    shl-long v31, v31, v3

    sub-long v29, v29, v31

    mul-long v53, v53, v33

    add-long v1, v1, v53

    mul-long v55, v55, v33

    add-long v6, v6, v55

    mul-long v57, v57, v33

    add-long v9, v9, v57

    mul-long v59, v59, v33

    sub-long v12, v12, v59

    mul-long v61, v61, v33

    add-long v14, v14, v61

    mul-long v33, v33, v63

    sub-long v17, v17, v33

    const/16 v3, 0x15

    shr-long v31, v1, v3

    add-long v6, v6, v31

    shl-long v31, v31, v3

    sub-long v1, v1, v31

    shr-long v31, v6, v3

    add-long v9, v9, v31

    shl-long v31, v31, v3

    sub-long v6, v6, v31

    shr-long v31, v9, v3

    add-long v12, v12, v31

    shl-long v31, v31, v3

    sub-long v9, v9, v31

    shr-long v31, v12, v3

    add-long v14, v14, v31

    shl-long v31, v31, v3

    sub-long v12, v12, v31

    shr-long v31, v14, v3

    add-long v17, v17, v31

    shl-long v31, v31, v3

    sub-long v14, v14, v31

    shr-long v31, v17, v3

    add-long v19, v19, v31

    shl-long v31, v31, v3

    sub-long v17, v17, v31

    shr-long v31, v19, v3

    add-long v21, v21, v31

    shl-long v31, v31, v3

    sub-long v19, v19, v31

    shr-long v31, v21, v3

    add-long v23, v23, v31

    shl-long v31, v31, v3

    sub-long v21, v21, v31

    shr-long v31, v23, v3

    add-long v25, v25, v31

    shl-long v31, v31, v3

    sub-long v23, v23, v31

    shr-long v31, v25, v3

    add-long v27, v27, v31

    shl-long v31, v31, v3

    sub-long v25, v25, v31

    shr-long v31, v27, v3

    add-long v29, v29, v31

    shl-long v31, v31, v3

    sub-long v27, v27, v31

    const/4 v3, 0x0

    shr-long v3, v1, v3

    long-to-int v3, v3

    int-to-byte v3, v3

    const/4 v4, 0x0

    .line 247
    aput-byte v3, v0, v4

    const/16 v3, 0x8

    shr-long v3, v1, v3

    long-to-int v3, v3

    int-to-byte v3, v3

    const/4 v4, 0x1

    .line 248
    aput-byte v3, v0, v4

    const/16 v3, 0x10

    shr-long/2addr v1, v3

    shl-long v3, v6, v8

    or-long/2addr v1, v3

    long-to-int v1, v1

    int-to-byte v1, v1

    .line 249
    aput-byte v1, v0, v5

    const/4 v1, 0x3

    shr-long v2, v6, v1

    long-to-int v2, v2

    int-to-byte v2, v2

    .line 250
    aput-byte v2, v0, v1

    const/16 v1, 0xb

    shr-long v1, v6, v1

    long-to-int v1, v1

    int-to-byte v1, v1

    const/4 v2, 0x4

    .line 251
    aput-byte v1, v0, v2

    const/16 v1, 0x13

    shr-long v1, v6, v1

    shl-long v3, v9, v5

    or-long/2addr v1, v3

    long-to-int v1, v1

    int-to-byte v1, v1

    .line 252
    aput-byte v1, v0, v8

    const/4 v1, 0x6

    shr-long v2, v9, v1

    long-to-int v2, v2

    int-to-byte v2, v2

    .line 253
    aput-byte v2, v0, v1

    const/16 v1, 0xe

    shr-long v1, v9, v1

    const/4 v3, 0x7

    shl-long v6, v12, v3

    or-long/2addr v1, v6

    long-to-int v1, v1

    int-to-byte v1, v1

    .line 254
    aput-byte v1, v0, v3

    const/4 v1, 0x1

    shr-long v2, v12, v1

    long-to-int v1, v2

    int-to-byte v1, v1

    const/16 v2, 0x8

    .line 255
    aput-byte v1, v0, v2

    const/16 v1, 0x9

    shr-long v1, v12, v1

    long-to-int v1, v1

    int-to-byte v1, v1

    const/16 v2, 0x9

    .line 256
    aput-byte v1, v0, v2

    const/16 v1, 0x11

    shr-long v1, v12, v1

    const/4 v3, 0x4

    shl-long v3, v14, v3

    or-long/2addr v1, v3

    long-to-int v1, v1

    int-to-byte v1, v1

    const/16 v2, 0xa

    .line 257
    aput-byte v1, v0, v2

    const/4 v1, 0x4

    shr-long v1, v14, v1

    long-to-int v1, v1

    int-to-byte v1, v1

    const/16 v2, 0xb

    .line 258
    aput-byte v1, v0, v2

    const/16 v1, 0xc

    shr-long v1, v14, v1

    long-to-int v1, v1

    int-to-byte v1, v1

    const/16 v2, 0xc

    .line 259
    aput-byte v1, v0, v2

    const/16 v1, 0x14

    shr-long v1, v14, v1

    const/4 v3, 0x1

    shl-long v6, v17, v3

    or-long/2addr v1, v6

    long-to-int v1, v1

    int-to-byte v1, v1

    const/16 v2, 0xd

    .line 260
    aput-byte v1, v0, v2

    const/4 v1, 0x7

    shr-long v2, v17, v1

    long-to-int v1, v2

    int-to-byte v1, v1

    const/16 v2, 0xe

    .line 261
    aput-byte v1, v0, v2

    const/16 v1, 0xf

    shr-long v1, v17, v1

    const/4 v3, 0x6

    shl-long v6, v19, v3

    or-long/2addr v1, v6

    long-to-int v1, v1

    int-to-byte v1, v1

    const/16 v2, 0xf

    .line 262
    aput-byte v1, v0, v2

    shr-long v1, v19, v5

    long-to-int v1, v1

    int-to-byte v1, v1

    const/16 v2, 0x10

    .line 263
    aput-byte v1, v0, v2

    const/16 v1, 0xa

    shr-long v1, v19, v1

    long-to-int v1, v1

    int-to-byte v1, v1

    const/16 v2, 0x11

    .line 264
    aput-byte v1, v0, v2

    const/16 v1, 0x12

    shr-long v1, v19, v1

    const/4 v3, 0x3

    shl-long v6, v21, v3

    or-long/2addr v1, v6

    long-to-int v1, v1

    int-to-byte v1, v1

    const/16 v2, 0x12

    .line 265
    aput-byte v1, v0, v2

    shr-long v1, v21, v8

    long-to-int v1, v1

    int-to-byte v1, v1

    const/16 v2, 0x13

    .line 266
    aput-byte v1, v0, v2

    const/16 v1, 0xd

    shr-long v1, v21, v1

    long-to-int v1, v1

    int-to-byte v1, v1

    const/16 v2, 0x14

    .line 267
    aput-byte v1, v0, v2

    const/4 v1, 0x0

    shr-long v1, v23, v1

    long-to-int v1, v1

    int-to-byte v1, v1

    const/16 v2, 0x15

    .line 268
    aput-byte v1, v0, v2

    const/16 v1, 0x8

    shr-long v1, v23, v1

    long-to-int v1, v1

    int-to-byte v1, v1

    const/16 v2, 0x16

    .line 269
    aput-byte v1, v0, v2

    const/16 v1, 0x10

    shr-long v1, v23, v1

    shl-long v3, v25, v8

    or-long/2addr v1, v3

    long-to-int v1, v1

    int-to-byte v1, v1

    const/16 v2, 0x17

    .line 270
    aput-byte v1, v0, v2

    const/4 v1, 0x3

    shr-long v1, v25, v1

    long-to-int v1, v1

    int-to-byte v1, v1

    const/16 v2, 0x18

    .line 271
    aput-byte v1, v0, v2

    const/16 v1, 0xb

    shr-long v1, v25, v1

    long-to-int v1, v1

    int-to-byte v1, v1

    const/16 v2, 0x19

    .line 272
    aput-byte v1, v0, v2

    const/16 v1, 0x13

    shr-long v1, v25, v1

    shl-long v3, v27, v5

    or-long/2addr v1, v3

    long-to-int v1, v1

    int-to-byte v1, v1

    const/16 v2, 0x1a

    .line 273
    aput-byte v1, v0, v2

    const/4 v1, 0x6

    shr-long v1, v27, v1

    long-to-int v1, v1

    int-to-byte v1, v1

    const/16 v2, 0x1b

    .line 274
    aput-byte v1, v0, v2

    const/16 v1, 0xe

    shr-long v1, v27, v1

    const/4 v3, 0x7

    shl-long v3, v29, v3

    or-long/2addr v1, v3

    long-to-int v1, v1

    int-to-byte v1, v1

    const/16 v2, 0x1c

    .line 275
    aput-byte v1, v0, v2

    const/4 v1, 0x1

    shr-long v1, v29, v1

    long-to-int v1, v1

    int-to-byte v1, v1

    const/16 v2, 0x1d

    .line 276
    aput-byte v1, v0, v2

    const/16 v1, 0x9

    shr-long v1, v29, v1

    long-to-int v1, v1

    int-to-byte v1, v1

    const/16 v2, 0x1e

    .line 277
    aput-byte v1, v0, v2

    const/16 v1, 0x11

    shr-long v1, v29, v1

    long-to-int v1, v1

    int-to-byte v1, v1

    const/16 v2, 0x1f

    .line 278
    aput-byte v1, v0, v2

    return-void
.end method
