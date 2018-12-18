.class public Lnet/i2p/crypto/eddsa/math/ed25519/Ed25519ScalarOps;
.super Ljava/lang/Object;
.source "Ed25519ScalarOps.java"

# interfaces
.implements Lnet/i2p/crypto/eddsa/math/ScalarOps;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public multiplyAndAdd([B[B[B)[B
    .locals 85

    move-object/from16 v0, p1

    move-object/from16 v1, p2

    move-object/from16 v2, p3

    const/4 v3, 0x0

    .line 342
    invoke-static {v0, v3}, Lnet/i2p/crypto/eddsa/math/ed25519/Ed25519LittleEndianEncoding;->load_3([BI)I

    move-result v3

    const v4, 0x1fffff

    and-int/2addr v3, v4

    int-to-long v5, v3

    const/4 v3, 0x2

    .line 343
    invoke-static {v0, v3}, Lnet/i2p/crypto/eddsa/math/ed25519/Ed25519LittleEndianEncoding;->load_4([BI)J

    move-result-wide v7

    const/4 v9, 0x5

    shr-long/2addr v7, v9

    const-wide/32 v10, 0x1fffff

    and-long/2addr v7, v10

    .line 344
    invoke-static {v0, v9}, Lnet/i2p/crypto/eddsa/math/ed25519/Ed25519LittleEndianEncoding;->load_3([BI)I

    move-result v12

    shr-int/2addr v12, v3

    and-int/2addr v12, v4

    int-to-long v12, v12

    const/4 v14, 0x7

    .line 345
    invoke-static {v0, v14}, Lnet/i2p/crypto/eddsa/math/ed25519/Ed25519LittleEndianEncoding;->load_4([BI)J

    move-result-wide v15

    shr-long/2addr v15, v14

    and-long/2addr v15, v10

    const/16 v14, 0xa

    .line 346
    invoke-static {v0, v14}, Lnet/i2p/crypto/eddsa/math/ed25519/Ed25519LittleEndianEncoding;->load_4([BI)J

    move-result-wide v18

    const/4 v14, 0x4

    shr-long v18, v18, v14

    and-long v18, v18, v10

    const/16 v14, 0xd

    .line 347
    invoke-static {v0, v14}, Lnet/i2p/crypto/eddsa/math/ed25519/Ed25519LittleEndianEncoding;->load_3([BI)I

    move-result v14

    const/16 v20, 0x1

    shr-int/lit8 v14, v14, 0x1

    and-int/2addr v14, v4

    int-to-long v3, v14

    const/16 v14, 0xf

    .line 348
    invoke-static {v0, v14}, Lnet/i2p/crypto/eddsa/math/ed25519/Ed25519LittleEndianEncoding;->load_4([BI)J

    move-result-wide v23

    const/4 v14, 0x6

    shr-long v23, v23, v14

    and-long v23, v23, v10

    const/16 v14, 0x12

    .line 349
    invoke-static {v0, v14}, Lnet/i2p/crypto/eddsa/math/ed25519/Ed25519LittleEndianEncoding;->load_3([BI)I

    move-result v14

    shr-int/lit8 v14, v14, 0x3

    const v21, 0x1fffff

    and-int v14, v14, v21

    int-to-long v10, v14

    const/16 v14, 0x15

    .line 350
    invoke-static {v0, v14}, Lnet/i2p/crypto/eddsa/math/ed25519/Ed25519LittleEndianEncoding;->load_3([BI)I

    move-result v27

    and-int v14, v27, v21

    move-wide/from16 v29, v10

    int-to-long v9, v14

    const/16 v11, 0x17

    .line 351
    invoke-static {v0, v11}, Lnet/i2p/crypto/eddsa/math/ed25519/Ed25519LittleEndianEncoding;->load_4([BI)J

    move-result-wide v31

    const/4 v11, 0x5

    shr-long v31, v31, v11

    const-wide/32 v25, 0x1fffff

    and-long v31, v31, v25

    const/16 v11, 0x1a

    .line 352
    invoke-static {v0, v11}, Lnet/i2p/crypto/eddsa/math/ed25519/Ed25519LittleEndianEncoding;->load_3([BI)I

    move-result v11

    const/4 v14, 0x2

    shr-int/2addr v11, v14

    and-int v11, v11, v21

    move-wide/from16 v33, v15

    int-to-long v14, v11

    const/16 v11, 0x1c

    .line 353
    invoke-static {v0, v11}, Lnet/i2p/crypto/eddsa/math/ed25519/Ed25519LittleEndianEncoding;->load_4([BI)J

    move-result-wide v36

    const/4 v0, 0x7

    shr-long v36, v36, v0

    const/4 v0, 0x0

    .line 354
    invoke-static {v1, v0}, Lnet/i2p/crypto/eddsa/math/ed25519/Ed25519LittleEndianEncoding;->load_3([BI)I

    move-result v0

    and-int v0, v0, v21

    move-wide/from16 v38, v14

    int-to-long v14, v0

    const/4 v0, 0x2

    .line 355
    invoke-static {v1, v0}, Lnet/i2p/crypto/eddsa/math/ed25519/Ed25519LittleEndianEncoding;->load_4([BI)J

    move-result-wide v40

    const/4 v11, 0x5

    shr-long v40, v40, v11

    const-wide/32 v25, 0x1fffff

    and-long v40, v40, v25

    .line 356
    invoke-static {v1, v11}, Lnet/i2p/crypto/eddsa/math/ed25519/Ed25519LittleEndianEncoding;->load_3([BI)I

    move-result v16

    shr-int/lit8 v11, v16, 0x2

    and-int v0, v11, v21

    move-wide/from16 v42, v9

    int-to-long v9, v0

    const/4 v0, 0x7

    .line 357
    invoke-static {v1, v0}, Lnet/i2p/crypto/eddsa/math/ed25519/Ed25519LittleEndianEncoding;->load_4([BI)J

    move-result-wide v16

    shr-long v44, v16, v0

    and-long v44, v44, v25

    const/16 v0, 0xa

    .line 358
    invoke-static {v1, v0}, Lnet/i2p/crypto/eddsa/math/ed25519/Ed25519LittleEndianEncoding;->load_4([BI)J

    move-result-wide v46

    const/4 v0, 0x4

    shr-long v46, v46, v0

    and-long v46, v46, v25

    const/16 v0, 0xd

    .line 359
    invoke-static {v1, v0}, Lnet/i2p/crypto/eddsa/math/ed25519/Ed25519LittleEndianEncoding;->load_3([BI)I

    move-result v0

    shr-int/lit8 v0, v0, 0x1

    const v11, 0x1fffff

    and-int/2addr v0, v11

    move-wide/from16 v48, v12

    int-to-long v11, v0

    const/16 v0, 0xf

    .line 360
    invoke-static {v1, v0}, Lnet/i2p/crypto/eddsa/math/ed25519/Ed25519LittleEndianEncoding;->load_4([BI)J

    move-result-wide v51

    const/4 v0, 0x6

    shr-long v51, v51, v0

    and-long v51, v51, v25

    const/16 v0, 0x12

    .line 361
    invoke-static {v1, v0}, Lnet/i2p/crypto/eddsa/math/ed25519/Ed25519LittleEndianEncoding;->load_3([BI)I

    move-result v0

    shr-int/lit8 v0, v0, 0x3

    const v13, 0x1fffff

    and-int/2addr v0, v13

    move-wide/from16 v53, v3

    int-to-long v3, v0

    const/16 v0, 0x15

    .line 362
    invoke-static {v1, v0}, Lnet/i2p/crypto/eddsa/math/ed25519/Ed25519LittleEndianEncoding;->load_3([BI)I

    move-result v16

    and-int v0, v16, v13

    move-wide/from16 v55, v14

    int-to-long v13, v0

    const/16 v0, 0x17

    .line 363
    invoke-static {v1, v0}, Lnet/i2p/crypto/eddsa/math/ed25519/Ed25519LittleEndianEncoding;->load_4([BI)J

    move-result-wide v15

    const/4 v0, 0x5

    shr-long/2addr v15, v0

    const-wide/32 v25, 0x1fffff

    and-long v15, v15, v25

    const/16 v0, 0x1a

    .line 364
    invoke-static {v1, v0}, Lnet/i2p/crypto/eddsa/math/ed25519/Ed25519LittleEndianEncoding;->load_3([BI)I

    move-result v0

    move-wide/from16 v58, v15

    const/4 v15, 0x2

    shr-int/2addr v0, v15

    const v16, 0x1fffff

    and-int v0, v0, v16

    move-wide/from16 v60, v13

    int-to-long v13, v0

    const/16 v0, 0x1c

    .line 365
    invoke-static {v1, v0}, Lnet/i2p/crypto/eddsa/math/ed25519/Ed25519LittleEndianEncoding;->load_4([BI)J

    move-result-wide v0

    const/16 v17, 0x7

    shr-long v0, v0, v17

    const/4 v15, 0x0

    .line 366
    invoke-static {v2, v15}, Lnet/i2p/crypto/eddsa/math/ed25519/Ed25519LittleEndianEncoding;->load_3([BI)I

    move-result v15

    and-int v15, v15, v16

    move-wide/from16 v62, v0

    int-to-long v0, v15

    const/4 v15, 0x2

    .line 367
    invoke-static {v2, v15}, Lnet/i2p/crypto/eddsa/math/ed25519/Ed25519LittleEndianEncoding;->load_4([BI)J

    move-result-wide v21

    const/4 v15, 0x5

    shr-long v21, v21, v15

    const-wide/32 v25, 0x1fffff

    and-long v64, v21, v25

    .line 368
    invoke-static {v2, v15}, Lnet/i2p/crypto/eddsa/math/ed25519/Ed25519LittleEndianEncoding;->load_3([BI)I

    move-result v21

    const/4 v15, 0x2

    shr-int/lit8 v21, v21, 0x2

    and-int v15, v21, v16

    move-wide/from16 v66, v13

    int-to-long v13, v15

    const/4 v15, 0x7

    .line 369
    invoke-static {v2, v15}, Lnet/i2p/crypto/eddsa/math/ed25519/Ed25519LittleEndianEncoding;->load_4([BI)J

    move-result-wide v16

    shr-long v68, v16, v15

    and-long v15, v68, v25

    move-wide/from16 v70, v3

    const/16 v3, 0xa

    .line 370
    invoke-static {v2, v3}, Lnet/i2p/crypto/eddsa/math/ed25519/Ed25519LittleEndianEncoding;->load_4([BI)J

    move-result-wide v3

    const/16 v27, 0x4

    shr-long v3, v3, v27

    and-long v3, v3, v25

    move-wide/from16 v72, v11

    const/16 v11, 0xd

    .line 371
    invoke-static {v2, v11}, Lnet/i2p/crypto/eddsa/math/ed25519/Ed25519LittleEndianEncoding;->load_3([BI)I

    move-result v11

    shr-int/lit8 v11, v11, 0x1

    const v12, 0x1fffff

    and-int/2addr v11, v12

    move-wide/from16 v74, v13

    int-to-long v12, v11

    const/16 v11, 0xf

    .line 372
    invoke-static {v2, v11}, Lnet/i2p/crypto/eddsa/math/ed25519/Ed25519LittleEndianEncoding;->load_4([BI)J

    move-result-wide v68

    const/4 v11, 0x6

    shr-long v68, v68, v11

    and-long v68, v68, v25

    const/16 v11, 0x12

    .line 373
    invoke-static {v2, v11}, Lnet/i2p/crypto/eddsa/math/ed25519/Ed25519LittleEndianEncoding;->load_3([BI)I

    move-result v11

    shr-int/lit8 v11, v11, 0x3

    const v14, 0x1fffff

    and-int/2addr v11, v14

    move-wide/from16 v76, v12

    int-to-long v11, v11

    const/16 v13, 0x15

    .line 374
    invoke-static {v2, v13}, Lnet/i2p/crypto/eddsa/math/ed25519/Ed25519LittleEndianEncoding;->load_3([BI)I

    move-result v21

    and-int v13, v21, v14

    move-wide/from16 v78, v15

    int-to-long v14, v13

    const/16 v13, 0x17

    .line 375
    invoke-static {v2, v13}, Lnet/i2p/crypto/eddsa/math/ed25519/Ed25519LittleEndianEncoding;->load_4([BI)J

    move-result-wide v81

    const/4 v13, 0x5

    shr-long v81, v81, v13

    const-wide/32 v25, 0x1fffff

    and-long v25, v81, v25

    const/16 v13, 0x1a

    .line 376
    invoke-static {v2, v13}, Lnet/i2p/crypto/eddsa/math/ed25519/Ed25519LittleEndianEncoding;->load_3([BI)I

    move-result v13

    const/16 v16, 0x2

    shr-int/lit8 v13, v13, 0x2

    const v16, 0x1fffff

    and-int v13, v13, v16

    move-wide/from16 v83, v14

    int-to-long v13, v13

    const/16 v15, 0x1c

    .line 377
    invoke-static {v2, v15}, Lnet/i2p/crypto/eddsa/math/ed25519/Ed25519LittleEndianEncoding;->load_4([BI)J

    move-result-wide v15

    const/4 v2, 0x7

    shr-long/2addr v15, v2

    mul-long v80, v5, v55

    add-long v0, v0, v80

    mul-long v80, v5, v40

    add-long v64, v64, v80

    mul-long v80, v7, v55

    add-long v64, v64, v80

    mul-long v80, v5, v9

    add-long v74, v74, v80

    mul-long v80, v7, v40

    add-long v74, v74, v80

    mul-long v80, v48, v55

    add-long v74, v74, v80

    mul-long v80, v5, v44

    add-long v78, v78, v80

    mul-long v80, v7, v9

    add-long v78, v78, v80

    mul-long v80, v48, v40

    add-long v78, v78, v80

    mul-long v80, v33, v55

    add-long v78, v78, v80

    mul-long v80, v5, v46

    add-long v3, v3, v80

    mul-long v80, v7, v44

    add-long v3, v3, v80

    mul-long v80, v48, v9

    add-long v3, v3, v80

    mul-long v80, v33, v40

    add-long v3, v3, v80

    mul-long v80, v18, v55

    add-long v3, v3, v80

    mul-long v80, v5, v72

    add-long v76, v76, v80

    mul-long v80, v7, v46

    add-long v76, v76, v80

    mul-long v80, v48, v44

    add-long v76, v76, v80

    mul-long v80, v33, v9

    add-long v76, v76, v80

    mul-long v80, v18, v40

    add-long v76, v76, v80

    mul-long v80, v53, v55

    add-long v76, v76, v80

    mul-long v80, v5, v51

    add-long v68, v68, v80

    mul-long v80, v7, v72

    add-long v68, v68, v80

    mul-long v80, v48, v46

    add-long v68, v68, v80

    mul-long v80, v33, v44

    add-long v68, v68, v80

    mul-long v80, v18, v9

    add-long v68, v68, v80

    mul-long v80, v53, v40

    add-long v68, v68, v80

    mul-long v80, v23, v55

    add-long v68, v68, v80

    mul-long v80, v5, v70

    add-long v11, v11, v80

    mul-long v80, v7, v51

    add-long v11, v11, v80

    mul-long v80, v48, v72

    add-long v11, v11, v80

    mul-long v80, v33, v46

    add-long v11, v11, v80

    mul-long v80, v18, v44

    add-long v11, v11, v80

    mul-long v80, v53, v9

    add-long v11, v11, v80

    mul-long v80, v23, v40

    add-long v11, v11, v80

    mul-long v80, v29, v55

    add-long v11, v11, v80

    mul-long v80, v5, v60

    add-long v80, v83, v80

    mul-long v82, v7, v70

    add-long v80, v80, v82

    mul-long v82, v48, v51

    add-long v80, v80, v82

    mul-long v82, v33, v72

    add-long v80, v80, v82

    mul-long v82, v18, v46

    add-long v80, v80, v82

    mul-long v82, v53, v44

    add-long v80, v80, v82

    mul-long v82, v23, v9

    add-long v80, v80, v82

    mul-long v82, v29, v40

    add-long v80, v80, v82

    mul-long v82, v42, v55

    add-long v80, v80, v82

    mul-long v82, v5, v58

    add-long v25, v25, v82

    mul-long v82, v7, v60

    add-long v25, v25, v82

    mul-long v82, v48, v70

    add-long v25, v25, v82

    mul-long v82, v33, v51

    add-long v25, v25, v82

    mul-long v82, v18, v72

    add-long v25, v25, v82

    mul-long v82, v53, v46

    add-long v25, v25, v82

    mul-long v82, v23, v44

    add-long v25, v25, v82

    mul-long v82, v29, v9

    add-long v25, v25, v82

    mul-long v82, v42, v40

    add-long v25, v25, v82

    mul-long v82, v31, v55

    add-long v25, v25, v82

    mul-long v82, v5, v66

    add-long v13, v13, v82

    mul-long v82, v7, v58

    add-long v13, v13, v82

    mul-long v82, v48, v60

    add-long v13, v13, v82

    mul-long v82, v33, v70

    add-long v13, v13, v82

    mul-long v82, v18, v51

    add-long v13, v13, v82

    mul-long v82, v53, v72

    add-long v13, v13, v82

    mul-long v82, v23, v46

    add-long v13, v13, v82

    mul-long v82, v29, v44

    add-long v13, v13, v82

    mul-long v82, v42, v9

    add-long v13, v13, v82

    mul-long v82, v31, v40

    add-long v13, v13, v82

    mul-long v82, v38, v55

    add-long v13, v13, v82

    mul-long v5, v5, v62

    add-long/2addr v15, v5

    mul-long v5, v7, v66

    add-long/2addr v15, v5

    mul-long v5, v48, v58

    add-long/2addr v15, v5

    mul-long v5, v33, v60

    add-long/2addr v15, v5

    mul-long v5, v18, v70

    add-long/2addr v15, v5

    mul-long v5, v53, v51

    add-long/2addr v15, v5

    mul-long v5, v23, v72

    add-long/2addr v15, v5

    mul-long v5, v29, v46

    add-long/2addr v15, v5

    mul-long v5, v42, v44

    add-long/2addr v15, v5

    mul-long v5, v31, v9

    add-long/2addr v15, v5

    mul-long v5, v38, v40

    add-long/2addr v15, v5

    mul-long v5, v36, v55

    add-long/2addr v15, v5

    mul-long v7, v7, v62

    mul-long v5, v48, v66

    add-long/2addr v7, v5

    mul-long v5, v33, v58

    add-long/2addr v7, v5

    mul-long v5, v18, v60

    add-long/2addr v7, v5

    mul-long v5, v53, v70

    add-long/2addr v7, v5

    mul-long v5, v23, v51

    add-long/2addr v7, v5

    mul-long v5, v29, v72

    add-long/2addr v7, v5

    mul-long v5, v42, v46

    add-long/2addr v7, v5

    mul-long v5, v31, v44

    add-long/2addr v7, v5

    mul-long v5, v38, v9

    add-long/2addr v7, v5

    mul-long v40, v40, v36

    add-long v7, v7, v40

    mul-long v5, v48, v62

    mul-long v40, v33, v66

    add-long v5, v5, v40

    mul-long v40, v18, v58

    add-long v5, v5, v40

    mul-long v40, v53, v60

    add-long v5, v5, v40

    mul-long v40, v23, v70

    add-long v5, v5, v40

    mul-long v40, v29, v51

    add-long v5, v5, v40

    mul-long v40, v42, v72

    add-long v5, v5, v40

    mul-long v40, v31, v46

    add-long v5, v5, v40

    mul-long v40, v38, v44

    add-long v5, v5, v40

    mul-long v9, v9, v36

    add-long/2addr v5, v9

    mul-long v9, v33, v62

    mul-long v33, v18, v66

    add-long v9, v9, v33

    mul-long v33, v53, v58

    add-long v9, v9, v33

    mul-long v33, v23, v60

    add-long v9, v9, v33

    mul-long v33, v29, v70

    add-long v9, v9, v33

    mul-long v33, v42, v51

    add-long v9, v9, v33

    mul-long v33, v31, v72

    add-long v9, v9, v33

    mul-long v33, v38, v46

    add-long v9, v9, v33

    mul-long v44, v44, v36

    add-long v9, v9, v44

    mul-long v18, v18, v62

    mul-long v33, v53, v66

    add-long v18, v18, v33

    mul-long v33, v23, v58

    add-long v18, v18, v33

    mul-long v33, v29, v60

    add-long v18, v18, v33

    mul-long v33, v42, v70

    add-long v18, v18, v33

    mul-long v33, v31, v51

    add-long v18, v18, v33

    mul-long v33, v38, v72

    add-long v18, v18, v33

    mul-long v46, v46, v36

    add-long v18, v18, v46

    mul-long v33, v53, v62

    mul-long v40, v23, v66

    add-long v33, v33, v40

    mul-long v40, v29, v58

    add-long v33, v33, v40

    mul-long v40, v42, v60

    add-long v33, v33, v40

    mul-long v40, v31, v70

    add-long v33, v33, v40

    mul-long v40, v38, v51

    add-long v33, v33, v40

    mul-long v40, v36, v72

    add-long v33, v33, v40

    mul-long v23, v23, v62

    mul-long v40, v29, v66

    add-long v23, v23, v40

    mul-long v40, v42, v58

    add-long v23, v23, v40

    mul-long v40, v31, v60

    add-long v23, v23, v40

    mul-long v40, v38, v70

    add-long v23, v23, v40

    mul-long v51, v51, v36

    add-long v23, v23, v51

    mul-long v29, v29, v62

    mul-long v40, v42, v66

    add-long v29, v29, v40

    mul-long v40, v31, v58

    add-long v29, v29, v40

    mul-long v40, v38, v60

    add-long v29, v29, v40

    mul-long v40, v36, v70

    add-long v29, v29, v40

    mul-long v40, v42, v62

    mul-long v42, v31, v66

    add-long v40, v40, v42

    mul-long v42, v38, v58

    add-long v40, v40, v42

    mul-long v42, v36, v60

    add-long v40, v40, v42

    mul-long v31, v31, v62

    mul-long v42, v38, v66

    add-long v31, v31, v42

    mul-long v42, v36, v58

    add-long v31, v31, v42

    mul-long v38, v38, v62

    mul-long v42, v36, v66

    add-long v38, v38, v42

    mul-long v36, v36, v62

    const-wide/32 v42, 0x100000

    add-long v44, v0, v42

    const/16 v2, 0x15

    shr-long v27, v44, v2

    add-long v64, v64, v27

    shl-long v27, v27, v2

    sub-long v0, v0, v27

    add-long v27, v74, v42

    shr-long v27, v27, v2

    add-long v78, v78, v27

    shl-long v27, v27, v2

    sub-long v74, v74, v27

    add-long v27, v3, v42

    shr-long v27, v27, v2

    add-long v76, v76, v27

    shl-long v27, v27, v2

    sub-long v3, v3, v27

    add-long v27, v68, v42

    shr-long v27, v27, v2

    add-long v11, v11, v27

    shl-long v27, v27, v2

    sub-long v68, v68, v27

    add-long v27, v80, v42

    shr-long v27, v27, v2

    add-long v25, v25, v27

    shl-long v27, v27, v2

    sub-long v80, v80, v27

    add-long v27, v13, v42

    shr-long v27, v27, v2

    add-long v15, v15, v27

    shl-long v27, v27, v2

    sub-long v13, v13, v27

    add-long v27, v7, v42

    shr-long v27, v27, v2

    add-long v5, v5, v27

    shl-long v27, v27, v2

    sub-long v7, v7, v27

    add-long v27, v9, v42

    shr-long v27, v27, v2

    add-long v18, v18, v27

    shl-long v27, v27, v2

    sub-long v9, v9, v27

    add-long v27, v33, v42

    shr-long v27, v27, v2

    add-long v23, v23, v27

    shl-long v27, v27, v2

    sub-long v33, v33, v27

    add-long v27, v29, v42

    shr-long v27, v27, v2

    add-long v40, v40, v27

    shl-long v27, v27, v2

    sub-long v29, v29, v27

    add-long v27, v31, v42

    shr-long v27, v27, v2

    add-long v38, v38, v27

    shl-long v27, v27, v2

    sub-long v31, v31, v27

    add-long v27, v36, v42

    shr-long v44, v27, v2

    shl-long v27, v44, v2

    sub-long v36, v36, v27

    add-long v27, v64, v42

    shr-long v27, v27, v2

    add-long v74, v74, v27

    shl-long v27, v27, v2

    sub-long v64, v64, v27

    add-long v27, v78, v42

    shr-long v27, v27, v2

    add-long v3, v3, v27

    shl-long v27, v27, v2

    sub-long v78, v78, v27

    add-long v27, v76, v42

    shr-long v27, v27, v2

    add-long v68, v68, v27

    shl-long v27, v27, v2

    sub-long v76, v76, v27

    add-long v27, v11, v42

    shr-long v27, v27, v2

    add-long v80, v80, v27

    shl-long v27, v27, v2

    sub-long v11, v11, v27

    add-long v27, v25, v42

    shr-long v27, v27, v2

    add-long v13, v13, v27

    shl-long v27, v27, v2

    sub-long v25, v25, v27

    add-long v27, v15, v42

    shr-long v27, v27, v2

    add-long v7, v7, v27

    shl-long v27, v27, v2

    sub-long v15, v15, v27

    add-long v27, v5, v42

    shr-long v27, v27, v2

    add-long v9, v9, v27

    shl-long v27, v27, v2

    sub-long v5, v5, v27

    add-long v27, v18, v42

    shr-long v27, v27, v2

    add-long v33, v33, v27

    shl-long v27, v27, v2

    sub-long v18, v18, v27

    add-long v27, v23, v42

    shr-long v27, v27, v2

    add-long v29, v29, v27

    shl-long v27, v27, v2

    sub-long v23, v23, v27

    add-long v27, v40, v42

    shr-long v27, v27, v2

    add-long v31, v31, v27

    shl-long v27, v27, v2

    sub-long v40, v40, v27

    add-long v27, v38, v42

    shr-long v27, v27, v2

    add-long v36, v36, v27

    shl-long v46, v27, v2

    sub-long v38, v38, v46

    const-wide/32 v46, 0xa2c13

    mul-long v48, v44, v46

    add-long v15, v15, v48

    const-wide/32 v48, 0x72d18

    mul-long v50, v44, v48

    add-long v7, v7, v50

    const-wide/32 v50, 0x9fb67

    mul-long v52, v44, v50

    add-long v5, v5, v52

    const-wide/32 v52, 0xf39ad

    mul-long v54, v44, v52

    sub-long v9, v9, v54

    const-wide/32 v54, 0x215d1

    mul-long v56, v44, v54

    add-long v18, v18, v56

    const-wide/32 v56, 0xa6f7d

    mul-long v44, v44, v56

    sub-long v33, v33, v44

    mul-long v44, v36, v46

    add-long v13, v13, v44

    mul-long v44, v36, v48

    add-long v15, v15, v44

    mul-long v44, v36, v50

    add-long v7, v7, v44

    mul-long v44, v36, v52

    sub-long v5, v5, v44

    mul-long v44, v36, v54

    add-long v9, v9, v44

    mul-long v36, v36, v56

    sub-long v18, v18, v36

    mul-long v35, v38, v46

    add-long v25, v25, v35

    mul-long v35, v38, v48

    add-long v13, v13, v35

    mul-long v35, v38, v50

    add-long v15, v15, v35

    mul-long v35, v38, v52

    sub-long v7, v7, v35

    mul-long v35, v38, v54

    add-long v5, v5, v35

    mul-long v38, v38, v56

    sub-long v9, v9, v38

    mul-long v35, v31, v46

    add-long v80, v80, v35

    mul-long v35, v31, v48

    add-long v25, v25, v35

    mul-long v35, v31, v50

    add-long v13, v13, v35

    mul-long v35, v31, v52

    sub-long v15, v15, v35

    mul-long v35, v31, v54

    add-long v7, v7, v35

    mul-long v31, v31, v56

    sub-long v5, v5, v31

    mul-long v31, v40, v46

    add-long v11, v11, v31

    mul-long v31, v40, v48

    add-long v80, v80, v31

    mul-long v31, v40, v50

    add-long v25, v25, v31

    mul-long v31, v40, v52

    sub-long v13, v13, v31

    mul-long v31, v40, v54

    add-long v15, v15, v31

    mul-long v40, v40, v56

    sub-long v7, v7, v40

    mul-long v31, v29, v46

    add-long v68, v68, v31

    mul-long v31, v29, v48

    add-long v11, v11, v31

    mul-long v31, v29, v50

    add-long v80, v80, v31

    mul-long v31, v29, v52

    sub-long v25, v25, v31

    mul-long v31, v29, v54

    add-long v13, v13, v31

    mul-long v29, v29, v56

    sub-long v15, v15, v29

    add-long v29, v68, v42

    const/16 v2, 0x15

    shr-long v27, v29, v2

    add-long v11, v11, v27

    shl-long v27, v27, v2

    sub-long v68, v68, v27

    add-long v27, v80, v42

    shr-long v27, v27, v2

    add-long v25, v25, v27

    shl-long v27, v27, v2

    sub-long v80, v80, v27

    add-long v27, v13, v42

    shr-long v27, v27, v2

    add-long v15, v15, v27

    shl-long v27, v27, v2

    sub-long v13, v13, v27

    add-long v27, v7, v42

    shr-long v27, v27, v2

    add-long v5, v5, v27

    shl-long v27, v27, v2

    sub-long v7, v7, v27

    add-long v27, v9, v42

    shr-long v27, v27, v2

    add-long v18, v18, v27

    shl-long v27, v27, v2

    sub-long v9, v9, v27

    add-long v27, v33, v42

    shr-long v27, v27, v2

    add-long v23, v23, v27

    shl-long v27, v27, v2

    sub-long v33, v33, v27

    add-long v27, v11, v42

    shr-long v27, v27, v2

    add-long v80, v80, v27

    shl-long v27, v27, v2

    sub-long v11, v11, v27

    add-long v27, v25, v42

    shr-long v27, v27, v2

    add-long v13, v13, v27

    shl-long v27, v27, v2

    sub-long v25, v25, v27

    add-long v27, v15, v42

    shr-long v27, v27, v2

    add-long v7, v7, v27

    shl-long v27, v27, v2

    sub-long v15, v15, v27

    add-long v27, v5, v42

    shr-long v27, v27, v2

    add-long v9, v9, v27

    shl-long v27, v27, v2

    sub-long v5, v5, v27

    add-long v27, v18, v42

    shr-long v27, v27, v2

    add-long v33, v33, v27

    shl-long v29, v27, v2

    sub-long v18, v18, v29

    mul-long v29, v23, v46

    add-long v76, v76, v29

    mul-long v29, v23, v48

    add-long v68, v68, v29

    mul-long v29, v23, v50

    add-long v11, v11, v29

    mul-long v29, v23, v52

    sub-long v80, v80, v29

    mul-long v29, v23, v54

    add-long v25, v25, v29

    mul-long v23, v23, v56

    sub-long v13, v13, v23

    mul-long v23, v33, v46

    add-long v3, v3, v23

    mul-long v23, v33, v48

    add-long v76, v76, v23

    mul-long v23, v33, v50

    add-long v68, v68, v23

    mul-long v23, v33, v52

    sub-long v11, v11, v23

    mul-long v23, v33, v54

    add-long v80, v80, v23

    mul-long v33, v33, v56

    sub-long v25, v25, v33

    mul-long v23, v18, v46

    add-long v78, v78, v23

    mul-long v23, v18, v48

    add-long v3, v3, v23

    mul-long v23, v18, v50

    add-long v76, v76, v23

    mul-long v23, v18, v52

    sub-long v68, v68, v23

    mul-long v23, v18, v54

    add-long v11, v11, v23

    mul-long v18, v18, v56

    sub-long v80, v80, v18

    mul-long v18, v9, v46

    add-long v74, v74, v18

    mul-long v18, v9, v48

    add-long v78, v78, v18

    mul-long v18, v9, v50

    add-long v3, v3, v18

    mul-long v18, v9, v52

    sub-long v76, v76, v18

    mul-long v18, v9, v54

    add-long v68, v68, v18

    mul-long v9, v9, v56

    sub-long/2addr v11, v9

    mul-long v9, v5, v46

    add-long v64, v64, v9

    mul-long v9, v5, v48

    add-long v74, v74, v9

    mul-long v9, v5, v50

    add-long v78, v78, v9

    mul-long v9, v5, v52

    sub-long/2addr v3, v9

    mul-long v9, v5, v54

    add-long v76, v76, v9

    mul-long v5, v5, v56

    sub-long v68, v68, v5

    mul-long v5, v7, v46

    add-long/2addr v0, v5

    mul-long v5, v7, v48

    add-long v64, v64, v5

    mul-long v5, v7, v50

    add-long v74, v74, v5

    mul-long v5, v7, v52

    sub-long v78, v78, v5

    mul-long v5, v7, v54

    add-long/2addr v3, v5

    mul-long v7, v7, v56

    sub-long v76, v76, v7

    add-long v5, v0, v42

    const/16 v2, 0x15

    shr-long/2addr v5, v2

    add-long v64, v64, v5

    shl-long/2addr v5, v2

    sub-long/2addr v0, v5

    add-long v5, v74, v42

    shr-long/2addr v5, v2

    add-long v78, v78, v5

    shl-long/2addr v5, v2

    sub-long v74, v74, v5

    add-long v5, v3, v42

    shr-long/2addr v5, v2

    add-long v76, v76, v5

    shl-long/2addr v5, v2

    sub-long/2addr v3, v5

    add-long v5, v68, v42

    shr-long/2addr v5, v2

    add-long/2addr v11, v5

    shl-long/2addr v5, v2

    sub-long v68, v68, v5

    add-long v5, v80, v42

    shr-long/2addr v5, v2

    add-long v25, v25, v5

    shl-long/2addr v5, v2

    sub-long v80, v80, v5

    add-long v5, v13, v42

    shr-long/2addr v5, v2

    add-long/2addr v15, v5

    shl-long/2addr v5, v2

    sub-long/2addr v13, v5

    add-long v5, v64, v42

    shr-long/2addr v5, v2

    add-long v74, v74, v5

    shl-long/2addr v5, v2

    sub-long v64, v64, v5

    add-long v5, v78, v42

    shr-long/2addr v5, v2

    add-long/2addr v3, v5

    shl-long/2addr v5, v2

    sub-long v78, v78, v5

    add-long v5, v76, v42

    shr-long/2addr v5, v2

    add-long v68, v68, v5

    shl-long/2addr v5, v2

    sub-long v76, v76, v5

    add-long v5, v11, v42

    shr-long/2addr v5, v2

    add-long v80, v80, v5

    shl-long/2addr v5, v2

    sub-long/2addr v11, v5

    add-long v5, v25, v42

    shr-long/2addr v5, v2

    add-long/2addr v13, v5

    shl-long/2addr v5, v2

    sub-long v25, v25, v5

    add-long v42, v15, v42

    shr-long v5, v42, v2

    shl-long v7, v5, v2

    sub-long/2addr v15, v7

    mul-long v7, v5, v46

    add-long/2addr v0, v7

    mul-long v7, v5, v48

    add-long v64, v64, v7

    mul-long v7, v5, v50

    add-long v74, v74, v7

    mul-long v7, v5, v52

    sub-long v78, v78, v7

    mul-long v7, v5, v54

    add-long/2addr v3, v7

    mul-long v5, v5, v56

    sub-long v76, v76, v5

    const/16 v2, 0x15

    shr-long v5, v0, v2

    add-long v64, v64, v5

    shl-long/2addr v5, v2

    sub-long/2addr v0, v5

    shr-long v5, v64, v2

    add-long v74, v74, v5

    shl-long/2addr v5, v2

    sub-long v64, v64, v5

    shr-long v5, v74, v2

    add-long v78, v78, v5

    shl-long/2addr v5, v2

    sub-long v74, v74, v5

    shr-long v5, v78, v2

    add-long/2addr v3, v5

    shl-long/2addr v5, v2

    sub-long v78, v78, v5

    shr-long v5, v3, v2

    add-long v76, v76, v5

    shl-long/2addr v5, v2

    sub-long/2addr v3, v5

    shr-long v5, v76, v2

    add-long v68, v68, v5

    shl-long/2addr v5, v2

    sub-long v76, v76, v5

    shr-long v5, v68, v2

    add-long/2addr v11, v5

    shl-long/2addr v5, v2

    sub-long v68, v68, v5

    shr-long v5, v11, v2

    add-long v80, v80, v5

    shl-long/2addr v5, v2

    sub-long/2addr v11, v5

    shr-long v5, v80, v2

    add-long v25, v25, v5

    shl-long/2addr v5, v2

    sub-long v80, v80, v5

    shr-long v5, v25, v2

    add-long/2addr v13, v5

    shl-long/2addr v5, v2

    sub-long v25, v25, v5

    shr-long v5, v13, v2

    add-long/2addr v15, v5

    shl-long/2addr v5, v2

    sub-long/2addr v13, v5

    shr-long v5, v15, v2

    shl-long v7, v5, v2

    sub-long/2addr v15, v7

    mul-long v46, v46, v5

    add-long v0, v0, v46

    mul-long v48, v48, v5

    add-long v64, v64, v48

    mul-long v50, v50, v5

    add-long v74, v74, v50

    mul-long v52, v52, v5

    sub-long v78, v78, v52

    mul-long v54, v54, v5

    add-long v3, v3, v54

    mul-long v5, v5, v56

    sub-long v76, v76, v5

    const/16 v2, 0x15

    shr-long v5, v0, v2

    add-long v64, v64, v5

    shl-long/2addr v5, v2

    sub-long/2addr v0, v5

    shr-long v5, v64, v2

    add-long v74, v74, v5

    shl-long/2addr v5, v2

    sub-long v64, v64, v5

    shr-long v5, v74, v2

    add-long v78, v78, v5

    shl-long/2addr v5, v2

    sub-long v74, v74, v5

    shr-long v5, v78, v2

    add-long/2addr v3, v5

    shl-long/2addr v5, v2

    sub-long v78, v78, v5

    shr-long v5, v3, v2

    add-long v76, v76, v5

    shl-long/2addr v5, v2

    sub-long/2addr v3, v5

    shr-long v5, v76, v2

    add-long v68, v68, v5

    shl-long/2addr v5, v2

    sub-long v76, v76, v5

    shr-long v5, v68, v2

    add-long/2addr v11, v5

    shl-long/2addr v5, v2

    sub-long v68, v68, v5

    shr-long v5, v11, v2

    add-long v80, v80, v5

    shl-long/2addr v5, v2

    sub-long/2addr v11, v5

    shr-long v5, v80, v2

    add-long v25, v25, v5

    shl-long/2addr v5, v2

    sub-long v5, v80, v5

    shr-long v7, v25, v2

    add-long/2addr v13, v7

    shl-long/2addr v7, v2

    sub-long v25, v25, v7

    shr-long v7, v13, v2

    add-long/2addr v15, v7

    shl-long/2addr v7, v2

    sub-long/2addr v13, v7

    const/16 v2, 0x20

    .line 658
    new-array v2, v2, [B

    long-to-int v7, v0

    int-to-byte v7, v7

    const/4 v8, 0x0

    aput-byte v7, v2, v8

    const/16 v7, 0x8

    shr-long v7, v0, v7

    long-to-int v7, v7

    int-to-byte v7, v7

    aput-byte v7, v2, v20

    const/16 v7, 0x10

    shr-long/2addr v0, v7

    const/4 v7, 0x5

    shl-long v8, v64, v7

    or-long/2addr v0, v8

    long-to-int v0, v0

    int-to-byte v0, v0

    const/4 v1, 0x2

    aput-byte v0, v2, v1

    const/4 v0, 0x3

    shr-long v0, v64, v0

    long-to-int v0, v0

    int-to-byte v0, v0

    const/4 v1, 0x3

    aput-byte v0, v2, v1

    const/16 v0, 0xb

    shr-long v0, v64, v0

    long-to-int v0, v0

    int-to-byte v0, v0

    const/4 v1, 0x4

    aput-byte v0, v2, v1

    const/16 v0, 0x13

    shr-long v0, v64, v0

    const/4 v7, 0x2

    shl-long v8, v74, v7

    or-long/2addr v0, v8

    long-to-int v0, v0

    int-to-byte v0, v0

    const/4 v1, 0x5

    aput-byte v0, v2, v1

    const/4 v0, 0x6

    shr-long v7, v74, v0

    long-to-int v1, v7

    int-to-byte v1, v1

    aput-byte v1, v2, v0

    const/16 v0, 0xe

    shr-long v0, v74, v0

    const/4 v7, 0x7

    shl-long v8, v78, v7

    or-long/2addr v0, v8

    long-to-int v0, v0

    int-to-byte v0, v0

    aput-byte v0, v2, v7

    shr-long v0, v78, v20

    long-to-int v0, v0

    int-to-byte v0, v0

    const/16 v1, 0x8

    aput-byte v0, v2, v1

    const/16 v0, 0x9

    shr-long v0, v78, v0

    long-to-int v0, v0

    int-to-byte v0, v0

    const/16 v1, 0x9

    aput-byte v0, v2, v1

    const/16 v0, 0x11

    shr-long v0, v78, v0

    const/4 v7, 0x4

    shl-long v7, v3, v7

    or-long/2addr v0, v7

    long-to-int v0, v0

    int-to-byte v0, v0

    const/16 v1, 0xa

    aput-byte v0, v2, v1

    const/4 v0, 0x4

    shr-long v0, v3, v0

    long-to-int v0, v0

    int-to-byte v0, v0

    const/16 v1, 0xb

    aput-byte v0, v2, v1

    const/16 v0, 0xc

    shr-long v0, v3, v0

    long-to-int v0, v0

    int-to-byte v0, v0

    const/16 v1, 0xc

    aput-byte v0, v2, v1

    const/16 v0, 0x14

    shr-long v0, v3, v0

    shl-long v3, v76, v20

    or-long/2addr v0, v3

    long-to-int v0, v0

    int-to-byte v0, v0

    const/16 v1, 0xd

    aput-byte v0, v2, v1

    const/4 v0, 0x7

    shr-long v3, v76, v0

    long-to-int v0, v3

    int-to-byte v0, v0

    const/16 v1, 0xe

    aput-byte v0, v2, v1

    const/16 v0, 0xf

    shr-long v0, v76, v0

    const/4 v3, 0x6

    shl-long v7, v68, v3

    or-long/2addr v0, v7

    long-to-int v0, v0

    int-to-byte v0, v0

    const/16 v1, 0xf

    aput-byte v0, v2, v1

    const/4 v0, 0x2

    shr-long v3, v68, v0

    long-to-int v0, v3

    int-to-byte v0, v0

    const/16 v1, 0x10

    aput-byte v0, v2, v1

    const/16 v0, 0xa

    shr-long v0, v68, v0

    long-to-int v0, v0

    int-to-byte v0, v0

    const/16 v1, 0x11

    aput-byte v0, v2, v1

    const/16 v0, 0x12

    shr-long v0, v68, v0

    const/4 v3, 0x3

    shl-long v3, v11, v3

    or-long/2addr v0, v3

    long-to-int v0, v0

    int-to-byte v0, v0

    const/16 v1, 0x12

    aput-byte v0, v2, v1

    const/4 v0, 0x5

    shr-long v3, v11, v0

    long-to-int v0, v3

    int-to-byte v0, v0

    const/16 v1, 0x13

    aput-byte v0, v2, v1

    const/16 v0, 0xd

    shr-long v0, v11, v0

    long-to-int v0, v0

    int-to-byte v0, v0

    const/16 v1, 0x14

    aput-byte v0, v2, v1

    long-to-int v0, v5

    int-to-byte v0, v0

    const/16 v1, 0x15

    aput-byte v0, v2, v1

    const/16 v0, 0x8

    shr-long v0, v5, v0

    long-to-int v0, v0

    int-to-byte v0, v0

    const/16 v1, 0x16

    aput-byte v0, v2, v1

    const/16 v0, 0x10

    shr-long v0, v5, v0

    const/4 v3, 0x5

    shl-long v3, v25, v3

    or-long/2addr v0, v3

    long-to-int v0, v0

    int-to-byte v0, v0

    const/16 v1, 0x17

    aput-byte v0, v2, v1

    const/4 v0, 0x3

    shr-long v0, v25, v0

    long-to-int v0, v0

    int-to-byte v0, v0

    const/16 v1, 0x18

    aput-byte v0, v2, v1

    const/16 v0, 0xb

    shr-long v0, v25, v0

    long-to-int v0, v0

    int-to-byte v0, v0

    const/16 v1, 0x19

    aput-byte v0, v2, v1

    const/16 v0, 0x13

    shr-long v0, v25, v0

    const/4 v3, 0x2

    shl-long v3, v13, v3

    or-long/2addr v0, v3

    long-to-int v0, v0

    int-to-byte v0, v0

    const/16 v1, 0x1a

    aput-byte v0, v2, v1

    const/4 v0, 0x6

    shr-long v0, v13, v0

    long-to-int v0, v0

    int-to-byte v0, v0

    const/16 v1, 0x1b

    aput-byte v0, v2, v1

    const/16 v0, 0xe

    shr-long v0, v13, v0

    const/4 v3, 0x7

    shl-long v3, v15, v3

    or-long/2addr v0, v3

    long-to-int v0, v0

    int-to-byte v0, v0

    const/16 v1, 0x1c

    aput-byte v0, v2, v1

    shr-long v0, v15, v20

    long-to-int v0, v0

    int-to-byte v0, v0

    const/16 v1, 0x1d

    aput-byte v0, v2, v1

    const/16 v0, 0x9

    shr-long v0, v15, v0

    long-to-int v0, v0

    int-to-byte v0, v0

    const/16 v1, 0x1e

    aput-byte v0, v2, v1

    const/16 v0, 0x11

    shr-long v0, v15, v0

    long-to-int v0, v0

    int-to-byte v0, v0

    const/16 v1, 0x1f

    aput-byte v0, v2, v1

    return-object v2
.end method

.method public reduce([B)[B
    .locals 68

    move-object/from16 v0, p1

    const/4 v1, 0x0

    .line 40
    invoke-static {v0, v1}, Lnet/i2p/crypto/eddsa/math/ed25519/Ed25519LittleEndianEncoding;->load_3([BI)I

    move-result v1

    const v2, 0x1fffff

    and-int/2addr v1, v2

    int-to-long v3, v1

    const/4 v1, 0x2

    .line 41
    invoke-static {v0, v1}, Lnet/i2p/crypto/eddsa/math/ed25519/Ed25519LittleEndianEncoding;->load_4([BI)J

    move-result-wide v5

    const/4 v7, 0x5

    shr-long/2addr v5, v7

    const-wide/32 v8, 0x1fffff

    and-long/2addr v5, v8

    .line 42
    invoke-static {v0, v7}, Lnet/i2p/crypto/eddsa/math/ed25519/Ed25519LittleEndianEncoding;->load_3([BI)I

    move-result v10

    shr-int/2addr v10, v1

    and-int/2addr v10, v2

    int-to-long v10, v10

    const/4 v12, 0x7

    .line 43
    invoke-static {v0, v12}, Lnet/i2p/crypto/eddsa/math/ed25519/Ed25519LittleEndianEncoding;->load_4([BI)J

    move-result-wide v13

    shr-long/2addr v13, v12

    and-long/2addr v13, v8

    const/16 v15, 0xa

    .line 44
    invoke-static {v0, v15}, Lnet/i2p/crypto/eddsa/math/ed25519/Ed25519LittleEndianEncoding;->load_4([BI)J

    move-result-wide v15

    const/16 v17, 0x4

    shr-long v15, v15, v17

    and-long/2addr v15, v8

    const/16 v12, 0xd

    .line 45
    invoke-static {v0, v12}, Lnet/i2p/crypto/eddsa/math/ed25519/Ed25519LittleEndianEncoding;->load_3([BI)I

    move-result v12

    const/16 v17, 0x1

    shr-int/lit8 v12, v12, 0x1

    and-int/2addr v12, v2

    int-to-long v1, v12

    const/16 v12, 0xf

    .line 46
    invoke-static {v0, v12}, Lnet/i2p/crypto/eddsa/math/ed25519/Ed25519LittleEndianEncoding;->load_4([BI)J

    move-result-wide v19

    const/4 v12, 0x6

    shr-long v19, v19, v12

    and-long v19, v19, v8

    const/16 v12, 0x12

    .line 47
    invoke-static {v0, v12}, Lnet/i2p/crypto/eddsa/math/ed25519/Ed25519LittleEndianEncoding;->load_3([BI)I

    move-result v12

    shr-int/lit8 v12, v12, 0x3

    const v18, 0x1fffff

    and-int v12, v12, v18

    int-to-long v8, v12

    const/16 v12, 0x15

    .line 48
    invoke-static {v0, v12}, Lnet/i2p/crypto/eddsa/math/ed25519/Ed25519LittleEndianEncoding;->load_3([BI)I

    move-result v23

    and-int v12, v23, v18

    move-wide/from16 v25, v8

    int-to-long v7, v12

    const/16 v9, 0x17

    .line 49
    invoke-static {v0, v9}, Lnet/i2p/crypto/eddsa/math/ed25519/Ed25519LittleEndianEncoding;->load_4([BI)J

    move-result-wide v27

    const/4 v9, 0x5

    shr-long v27, v27, v9

    const-wide/32 v21, 0x1fffff

    and-long v27, v27, v21

    const/16 v9, 0x1a

    .line 50
    invoke-static {v0, v9}, Lnet/i2p/crypto/eddsa/math/ed25519/Ed25519LittleEndianEncoding;->load_3([BI)I

    move-result v9

    const/4 v12, 0x2

    shr-int/2addr v9, v12

    and-int v9, v9, v18

    move-wide/from16 v29, v3

    int-to-long v3, v9

    const/16 v9, 0x1c

    .line 51
    invoke-static {v0, v9}, Lnet/i2p/crypto/eddsa/math/ed25519/Ed25519LittleEndianEncoding;->load_4([BI)J

    move-result-wide v31

    const/4 v9, 0x7

    shr-long v31, v31, v9

    and-long v31, v31, v21

    const/16 v9, 0x1f

    .line 52
    invoke-static {v0, v9}, Lnet/i2p/crypto/eddsa/math/ed25519/Ed25519LittleEndianEncoding;->load_4([BI)J

    move-result-wide v33

    const/4 v9, 0x4

    shr-long v33, v33, v9

    and-long v33, v33, v21

    const/16 v9, 0x22

    .line 53
    invoke-static {v0, v9}, Lnet/i2p/crypto/eddsa/math/ed25519/Ed25519LittleEndianEncoding;->load_3([BI)I

    move-result v9

    shr-int/lit8 v9, v9, 0x1

    const v12, 0x1fffff

    and-int/2addr v9, v12

    move-wide/from16 v35, v13

    int-to-long v12, v9

    const/16 v9, 0x24

    .line 54
    invoke-static {v0, v9}, Lnet/i2p/crypto/eddsa/math/ed25519/Ed25519LittleEndianEncoding;->load_4([BI)J

    move-result-wide v38

    const/4 v9, 0x6

    shr-long v38, v38, v9

    and-long v38, v38, v21

    const/16 v9, 0x27

    .line 55
    invoke-static {v0, v9}, Lnet/i2p/crypto/eddsa/math/ed25519/Ed25519LittleEndianEncoding;->load_3([BI)I

    move-result v9

    shr-int/lit8 v9, v9, 0x3

    const v14, 0x1fffff

    and-int/2addr v9, v14

    move-wide/from16 v40, v15

    int-to-long v14, v9

    const/16 v9, 0x2a

    .line 56
    invoke-static {v0, v9}, Lnet/i2p/crypto/eddsa/math/ed25519/Ed25519LittleEndianEncoding;->load_3([BI)I

    move-result v9

    const v16, 0x1fffff

    and-int v9, v9, v16

    move-wide/from16 v42, v5

    int-to-long v5, v9

    const/16 v9, 0x2c

    .line 57
    invoke-static {v0, v9}, Lnet/i2p/crypto/eddsa/math/ed25519/Ed25519LittleEndianEncoding;->load_4([BI)J

    move-result-wide v44

    const/4 v9, 0x5

    shr-long v44, v44, v9

    const-wide/32 v21, 0x1fffff

    and-long v44, v44, v21

    const/16 v9, 0x2f

    .line 58
    invoke-static {v0, v9}, Lnet/i2p/crypto/eddsa/math/ed25519/Ed25519LittleEndianEncoding;->load_3([BI)I

    move-result v9

    const/16 v18, 0x2

    shr-int/lit8 v9, v9, 0x2

    and-int v9, v9, v16

    move-wide/from16 v46, v10

    int-to-long v9, v9

    const/16 v11, 0x31

    .line 59
    invoke-static {v0, v11}, Lnet/i2p/crypto/eddsa/math/ed25519/Ed25519LittleEndianEncoding;->load_4([BI)J

    move-result-wide v48

    const/4 v11, 0x7

    shr-long v48, v48, v11

    and-long v48, v48, v21

    const/16 v11, 0x34

    .line 60
    invoke-static {v0, v11}, Lnet/i2p/crypto/eddsa/math/ed25519/Ed25519LittleEndianEncoding;->load_4([BI)J

    move-result-wide v50

    const/4 v11, 0x4

    shr-long v50, v50, v11

    and-long v50, v50, v21

    const/16 v11, 0x37

    .line 61
    invoke-static {v0, v11}, Lnet/i2p/crypto/eddsa/math/ed25519/Ed25519LittleEndianEncoding;->load_3([BI)I

    move-result v11

    shr-int/lit8 v11, v11, 0x1

    const v16, 0x1fffff

    and-int v11, v11, v16

    move-wide/from16 v52, v1

    int-to-long v1, v11

    const/16 v11, 0x39

    .line 62
    invoke-static {v0, v11}, Lnet/i2p/crypto/eddsa/math/ed25519/Ed25519LittleEndianEncoding;->load_4([BI)J

    move-result-wide v54

    const/4 v11, 0x6

    shr-long v54, v54, v11

    and-long v21, v54, v21

    const/16 v11, 0x3c

    .line 63
    invoke-static {v0, v11}, Lnet/i2p/crypto/eddsa/math/ed25519/Ed25519LittleEndianEncoding;->load_4([BI)J

    move-result-wide v54

    const/4 v0, 0x3

    shr-long v54, v54, v0

    const-wide/32 v56, 0xa2c13

    mul-long v58, v54, v56

    add-long v31, v31, v58

    const-wide/32 v58, 0x72d18

    mul-long v60, v54, v58

    add-long v33, v33, v60

    const-wide/32 v60, 0x9fb67

    mul-long v62, v54, v60

    add-long v12, v12, v62

    const-wide/32 v62, 0xf39ad

    mul-long v64, v54, v62

    sub-long v38, v38, v64

    const-wide/32 v64, 0x215d1

    mul-long v66, v54, v64

    add-long v14, v14, v66

    const-wide/32 v66, 0xa6f7d

    mul-long v54, v54, v66

    sub-long v5, v5, v54

    mul-long v54, v21, v56

    add-long v3, v3, v54

    mul-long v54, v21, v58

    add-long v31, v31, v54

    mul-long v54, v21, v60

    add-long v33, v33, v54

    mul-long v54, v21, v62

    sub-long v12, v12, v54

    mul-long v54, v21, v64

    add-long v38, v38, v54

    mul-long v21, v21, v66

    sub-long v14, v14, v21

    mul-long v21, v1, v56

    add-long v27, v27, v21

    mul-long v21, v1, v58

    add-long v3, v3, v21

    mul-long v21, v1, v60

    add-long v31, v31, v21

    mul-long v21, v1, v62

    sub-long v33, v33, v21

    mul-long v21, v1, v64

    add-long v12, v12, v21

    mul-long v1, v1, v66

    sub-long v38, v38, v1

    mul-long v0, v50, v56

    add-long/2addr v7, v0

    mul-long v0, v50, v58

    add-long v27, v27, v0

    mul-long v0, v50, v60

    add-long/2addr v3, v0

    mul-long v0, v50, v62

    sub-long v31, v31, v0

    mul-long v0, v50, v64

    add-long v33, v33, v0

    mul-long v50, v50, v66

    sub-long v12, v12, v50

    mul-long v0, v48, v56

    add-long v0, v25, v0

    mul-long v21, v48, v58

    add-long v7, v7, v21

    mul-long v21, v48, v60

    add-long v27, v27, v21

    mul-long v21, v48, v62

    sub-long v3, v3, v21

    mul-long v21, v48, v64

    add-long v31, v31, v21

    mul-long v48, v48, v66

    sub-long v33, v33, v48

    mul-long v21, v9, v56

    add-long v19, v19, v21

    mul-long v21, v9, v58

    add-long v0, v0, v21

    mul-long v21, v9, v60

    add-long v7, v7, v21

    mul-long v21, v9, v62

    sub-long v27, v27, v21

    mul-long v21, v9, v64

    add-long v3, v3, v21

    mul-long v9, v9, v66

    sub-long v31, v31, v9

    const-wide/32 v9, 0x100000

    add-long v21, v19, v9

    const/16 v2, 0x15

    shr-long v21, v21, v2

    add-long v0, v0, v21

    shl-long v21, v21, v2

    sub-long v19, v19, v21

    add-long v21, v7, v9

    shr-long v21, v21, v2

    add-long v27, v27, v21

    shl-long v21, v21, v2

    sub-long v7, v7, v21

    add-long v21, v3, v9

    shr-long v21, v21, v2

    add-long v31, v31, v21

    shl-long v21, v21, v2

    sub-long v3, v3, v21

    add-long v21, v33, v9

    shr-long v21, v21, v2

    add-long v12, v12, v21

    shl-long v21, v21, v2

    sub-long v33, v33, v21

    add-long v21, v38, v9

    shr-long v21, v21, v2

    add-long v14, v14, v21

    shl-long v21, v21, v2

    sub-long v38, v38, v21

    add-long v21, v5, v9

    shr-long v21, v21, v2

    add-long v44, v44, v21

    shl-long v21, v21, v2

    sub-long v5, v5, v21

    add-long v21, v0, v9

    shr-long v21, v21, v2

    add-long v7, v7, v21

    shl-long v21, v21, v2

    sub-long v0, v0, v21

    add-long v21, v27, v9

    shr-long v21, v21, v2

    add-long v3, v3, v21

    shl-long v21, v21, v2

    sub-long v27, v27, v21

    add-long v21, v31, v9

    shr-long v21, v21, v2

    add-long v33, v33, v21

    shl-long v21, v21, v2

    sub-long v31, v31, v21

    add-long v21, v12, v9

    shr-long v21, v21, v2

    add-long v38, v38, v21

    shl-long v21, v21, v2

    sub-long v12, v12, v21

    add-long v21, v14, v9

    shr-long v21, v21, v2

    add-long v5, v5, v21

    shl-long v21, v21, v2

    sub-long v14, v14, v21

    mul-long v21, v44, v56

    add-long v21, v52, v21

    mul-long v25, v44, v58

    add-long v19, v19, v25

    mul-long v25, v44, v60

    add-long v0, v0, v25

    mul-long v25, v44, v62

    sub-long v7, v7, v25

    mul-long v25, v44, v64

    add-long v27, v27, v25

    mul-long v44, v44, v66

    sub-long v3, v3, v44

    mul-long v25, v5, v56

    add-long v25, v40, v25

    mul-long v40, v5, v58

    add-long v21, v21, v40

    mul-long v40, v5, v60

    add-long v19, v19, v40

    mul-long v40, v5, v62

    sub-long v0, v0, v40

    mul-long v40, v5, v64

    add-long v7, v7, v40

    mul-long v5, v5, v66

    sub-long v27, v27, v5

    mul-long v5, v14, v56

    add-long v5, v35, v5

    mul-long v35, v14, v58

    add-long v25, v25, v35

    mul-long v35, v14, v60

    add-long v21, v21, v35

    mul-long v35, v14, v62

    sub-long v19, v19, v35

    mul-long v35, v14, v64

    add-long v0, v0, v35

    mul-long v14, v14, v66

    sub-long/2addr v7, v14

    mul-long v14, v38, v56

    add-long v14, v46, v14

    mul-long v35, v38, v58

    add-long v5, v5, v35

    mul-long v35, v38, v60

    add-long v25, v25, v35

    mul-long v35, v38, v62

    sub-long v21, v21, v35

    mul-long v35, v38, v64

    add-long v19, v19, v35

    mul-long v38, v38, v66

    sub-long v0, v0, v38

    mul-long v35, v12, v56

    add-long v35, v42, v35

    mul-long v37, v12, v58

    add-long v14, v14, v37

    mul-long v37, v12, v60

    add-long v5, v5, v37

    mul-long v37, v12, v62

    sub-long v25, v25, v37

    mul-long v37, v12, v64

    add-long v21, v21, v37

    mul-long v12, v12, v66

    sub-long v19, v19, v12

    mul-long v11, v33, v56

    add-long v11, v29, v11

    mul-long v29, v33, v58

    add-long v35, v35, v29

    mul-long v29, v33, v60

    add-long v14, v14, v29

    mul-long v29, v33, v62

    sub-long v5, v5, v29

    mul-long v29, v33, v64

    add-long v25, v25, v29

    mul-long v33, v33, v66

    sub-long v21, v21, v33

    add-long v29, v11, v9

    const/16 v2, 0x15

    shr-long v23, v29, v2

    add-long v35, v35, v23

    shl-long v23, v23, v2

    sub-long v11, v11, v23

    add-long v23, v14, v9

    shr-long v23, v23, v2

    add-long v5, v5, v23

    shl-long v23, v23, v2

    sub-long v14, v14, v23

    add-long v23, v25, v9

    shr-long v23, v23, v2

    add-long v21, v21, v23

    shl-long v23, v23, v2

    sub-long v25, v25, v23

    add-long v23, v19, v9

    shr-long v23, v23, v2

    add-long v0, v0, v23

    shl-long v23, v23, v2

    sub-long v19, v19, v23

    add-long v23, v7, v9

    shr-long v23, v23, v2

    add-long v27, v27, v23

    shl-long v23, v23, v2

    sub-long v7, v7, v23

    add-long v23, v3, v9

    shr-long v23, v23, v2

    add-long v31, v31, v23

    shl-long v23, v23, v2

    sub-long v3, v3, v23

    add-long v23, v35, v9

    shr-long v23, v23, v2

    add-long v14, v14, v23

    shl-long v23, v23, v2

    sub-long v35, v35, v23

    add-long v23, v5, v9

    shr-long v23, v23, v2

    add-long v25, v25, v23

    shl-long v23, v23, v2

    sub-long v5, v5, v23

    add-long v23, v21, v9

    shr-long v23, v23, v2

    add-long v19, v19, v23

    shl-long v23, v23, v2

    sub-long v21, v21, v23

    add-long v23, v0, v9

    shr-long v23, v23, v2

    add-long v7, v7, v23

    shl-long v23, v23, v2

    sub-long v0, v0, v23

    add-long v23, v27, v9

    shr-long v23, v23, v2

    add-long v3, v3, v23

    shl-long v23, v23, v2

    sub-long v27, v27, v23

    add-long v9, v31, v9

    shr-long/2addr v9, v2

    shl-long v29, v9, v2

    sub-long v31, v31, v29

    mul-long v29, v9, v56

    add-long v11, v11, v29

    mul-long v29, v9, v58

    add-long v35, v35, v29

    mul-long v29, v9, v60

    add-long v14, v14, v29

    mul-long v29, v9, v62

    sub-long v5, v5, v29

    mul-long v29, v9, v64

    add-long v25, v25, v29

    mul-long v9, v9, v66

    sub-long v21, v21, v9

    const/16 v2, 0x15

    shr-long v9, v11, v2

    add-long v35, v35, v9

    shl-long/2addr v9, v2

    sub-long/2addr v11, v9

    shr-long v9, v35, v2

    add-long/2addr v14, v9

    shl-long/2addr v9, v2

    sub-long v35, v35, v9

    shr-long v9, v14, v2

    add-long/2addr v5, v9

    shl-long/2addr v9, v2

    sub-long/2addr v14, v9

    shr-long v9, v5, v2

    add-long v25, v25, v9

    shl-long/2addr v9, v2

    sub-long/2addr v5, v9

    shr-long v9, v25, v2

    add-long v21, v21, v9

    shl-long/2addr v9, v2

    sub-long v25, v25, v9

    shr-long v9, v21, v2

    add-long v19, v19, v9

    shl-long/2addr v9, v2

    sub-long v21, v21, v9

    shr-long v9, v19, v2

    add-long/2addr v0, v9

    shl-long/2addr v9, v2

    sub-long v19, v19, v9

    shr-long v9, v0, v2

    add-long/2addr v7, v9

    shl-long/2addr v9, v2

    sub-long/2addr v0, v9

    shr-long v9, v7, v2

    add-long v27, v27, v9

    shl-long/2addr v9, v2

    sub-long/2addr v7, v9

    shr-long v9, v27, v2

    add-long/2addr v3, v9

    shl-long/2addr v9, v2

    sub-long v27, v27, v9

    shr-long v9, v3, v2

    add-long v31, v31, v9

    shl-long/2addr v9, v2

    sub-long/2addr v3, v9

    shr-long v9, v31, v2

    shl-long v29, v9, v2

    sub-long v31, v31, v29

    mul-long v56, v56, v9

    add-long v11, v11, v56

    mul-long v58, v58, v9

    add-long v35, v35, v58

    mul-long v60, v60, v9

    add-long v14, v14, v60

    mul-long v62, v62, v9

    sub-long v5, v5, v62

    mul-long v64, v64, v9

    add-long v25, v25, v64

    mul-long v9, v9, v66

    sub-long v21, v21, v9

    const/16 v2, 0x15

    shr-long v9, v11, v2

    add-long v35, v35, v9

    shl-long/2addr v9, v2

    sub-long/2addr v11, v9

    shr-long v9, v35, v2

    add-long/2addr v14, v9

    shl-long/2addr v9, v2

    sub-long v35, v35, v9

    shr-long v9, v14, v2

    add-long/2addr v5, v9

    shl-long/2addr v9, v2

    sub-long/2addr v14, v9

    shr-long v9, v5, v2

    add-long v25, v25, v9

    shl-long/2addr v9, v2

    sub-long/2addr v5, v9

    shr-long v9, v25, v2

    add-long v21, v21, v9

    shl-long/2addr v9, v2

    sub-long v25, v25, v9

    shr-long v9, v21, v2

    add-long v19, v19, v9

    shl-long/2addr v9, v2

    sub-long v21, v21, v9

    shr-long v9, v19, v2

    add-long/2addr v0, v9

    shl-long/2addr v9, v2

    sub-long v19, v19, v9

    shr-long v9, v0, v2

    add-long/2addr v7, v9

    shl-long/2addr v9, v2

    sub-long/2addr v0, v9

    shr-long v9, v7, v2

    add-long v27, v27, v9

    shl-long/2addr v9, v2

    sub-long/2addr v7, v9

    shr-long v9, v27, v2

    add-long/2addr v3, v9

    shl-long/2addr v9, v2

    sub-long v27, v27, v9

    shr-long v9, v3, v2

    add-long v31, v31, v9

    shl-long/2addr v9, v2

    sub-long/2addr v3, v9

    const/16 v2, 0x20

    .line 289
    new-array v2, v2, [B

    long-to-int v9, v11

    int-to-byte v9, v9

    const/4 v10, 0x0

    aput-byte v9, v2, v10

    const/16 v9, 0x8

    shr-long v9, v11, v9

    long-to-int v9, v9

    int-to-byte v9, v9

    aput-byte v9, v2, v17

    const/16 v9, 0x10

    shr-long v9, v11, v9

    const/4 v11, 0x5

    shl-long v12, v35, v11

    or-long/2addr v9, v12

    long-to-int v9, v9

    int-to-byte v9, v9

    const/4 v10, 0x2

    aput-byte v9, v2, v10

    const/4 v9, 0x3

    shr-long v9, v35, v9

    long-to-int v9, v9

    int-to-byte v9, v9

    const/4 v10, 0x3

    aput-byte v9, v2, v10

    const/16 v9, 0xb

    shr-long v9, v35, v9

    long-to-int v9, v9

    int-to-byte v9, v9

    const/4 v10, 0x4

    aput-byte v9, v2, v10

    const/16 v9, 0x13

    shr-long v9, v35, v9

    const/4 v11, 0x2

    shl-long v12, v14, v11

    or-long/2addr v9, v12

    long-to-int v9, v9

    int-to-byte v9, v9

    const/4 v10, 0x5

    aput-byte v9, v2, v10

    const/4 v9, 0x6

    shr-long v10, v14, v9

    long-to-int v10, v10

    int-to-byte v10, v10

    aput-byte v10, v2, v9

    const/16 v9, 0xe

    shr-long v9, v14, v9

    const/4 v11, 0x7

    shl-long v12, v5, v11

    or-long/2addr v9, v12

    long-to-int v9, v9

    int-to-byte v9, v9

    aput-byte v9, v2, v11

    shr-long v9, v5, v17

    long-to-int v9, v9

    int-to-byte v9, v9

    const/16 v10, 0x8

    aput-byte v9, v2, v10

    const/16 v9, 0x9

    shr-long v9, v5, v9

    long-to-int v9, v9

    int-to-byte v9, v9

    const/16 v10, 0x9

    aput-byte v9, v2, v10

    const/16 v9, 0x11

    shr-long/2addr v5, v9

    const/4 v9, 0x4

    shl-long v9, v25, v9

    or-long/2addr v5, v9

    long-to-int v5, v5

    int-to-byte v5, v5

    const/16 v6, 0xa

    aput-byte v5, v2, v6

    const/4 v5, 0x4

    shr-long v5, v25, v5

    long-to-int v5, v5

    int-to-byte v5, v5

    const/16 v6, 0xb

    aput-byte v5, v2, v6

    const/16 v5, 0xc

    shr-long v5, v25, v5

    long-to-int v5, v5

    int-to-byte v5, v5

    const/16 v6, 0xc

    aput-byte v5, v2, v6

    const/16 v5, 0x14

    shr-long v5, v25, v5

    shl-long v9, v21, v17

    or-long/2addr v5, v9

    long-to-int v5, v5

    int-to-byte v5, v5

    const/16 v6, 0xd

    aput-byte v5, v2, v6

    const/4 v5, 0x7

    shr-long v9, v21, v5

    long-to-int v5, v9

    int-to-byte v5, v5

    const/16 v6, 0xe

    aput-byte v5, v2, v6

    const/16 v5, 0xf

    shr-long v5, v21, v5

    const/4 v9, 0x6

    shl-long v10, v19, v9

    or-long/2addr v5, v10

    long-to-int v5, v5

    int-to-byte v5, v5

    const/16 v6, 0xf

    aput-byte v5, v2, v6

    const/4 v5, 0x2

    shr-long v9, v19, v5

    long-to-int v5, v9

    int-to-byte v5, v5

    const/16 v6, 0x10

    aput-byte v5, v2, v6

    const/16 v5, 0xa

    shr-long v5, v19, v5

    long-to-int v5, v5

    int-to-byte v5, v5

    const/16 v6, 0x11

    aput-byte v5, v2, v6

    const/16 v5, 0x12

    shr-long v5, v19, v5

    const/4 v9, 0x3

    shl-long v9, v0, v9

    or-long/2addr v5, v9

    long-to-int v5, v5

    int-to-byte v5, v5

    const/16 v6, 0x12

    aput-byte v5, v2, v6

    const/4 v5, 0x5

    shr-long v9, v0, v5

    long-to-int v5, v9

    int-to-byte v5, v5

    const/16 v6, 0x13

    aput-byte v5, v2, v6

    const/16 v5, 0xd

    shr-long/2addr v0, v5

    long-to-int v0, v0

    int-to-byte v0, v0

    const/16 v1, 0x14

    aput-byte v0, v2, v1

    long-to-int v0, v7

    int-to-byte v0, v0

    const/16 v1, 0x15

    aput-byte v0, v2, v1

    const/16 v0, 0x8

    shr-long v0, v7, v0

    long-to-int v0, v0

    int-to-byte v0, v0

    const/16 v1, 0x16

    aput-byte v0, v2, v1

    const/16 v0, 0x10

    shr-long v0, v7, v0

    const/4 v5, 0x5

    shl-long v5, v27, v5

    or-long/2addr v0, v5

    long-to-int v0, v0

    int-to-byte v0, v0

    const/16 v1, 0x17

    aput-byte v0, v2, v1

    const/4 v0, 0x3

    shr-long v0, v27, v0

    long-to-int v0, v0

    int-to-byte v0, v0

    const/16 v1, 0x18

    aput-byte v0, v2, v1

    const/16 v0, 0xb

    shr-long v0, v27, v0

    long-to-int v0, v0

    int-to-byte v0, v0

    const/16 v1, 0x19

    aput-byte v0, v2, v1

    const/16 v0, 0x13

    shr-long v0, v27, v0

    const/4 v5, 0x2

    shl-long v5, v3, v5

    or-long/2addr v0, v5

    long-to-int v0, v0

    int-to-byte v0, v0

    const/16 v1, 0x1a

    aput-byte v0, v2, v1

    const/4 v0, 0x6

    shr-long v0, v3, v0

    long-to-int v0, v0

    int-to-byte v0, v0

    const/16 v1, 0x1b

    aput-byte v0, v2, v1

    const/16 v0, 0xe

    shr-long v0, v3, v0

    const/4 v3, 0x7

    shl-long v3, v31, v3

    or-long/2addr v0, v3

    long-to-int v0, v0

    int-to-byte v0, v0

    const/16 v1, 0x1c

    aput-byte v0, v2, v1

    shr-long v0, v31, v17

    long-to-int v0, v0

    int-to-byte v0, v0

    const/16 v1, 0x1d

    aput-byte v0, v2, v1

    const/16 v0, 0x9

    shr-long v0, v31, v0

    long-to-int v0, v0

    int-to-byte v0, v0

    const/16 v1, 0x1e

    aput-byte v0, v2, v1

    const/16 v0, 0x11

    shr-long v0, v31, v0

    long-to-int v0, v0

    int-to-byte v0, v0

    const/16 v1, 0x1f

    aput-byte v0, v2, v1

    return-object v2
.end method
