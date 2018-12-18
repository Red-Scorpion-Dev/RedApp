.class public Lorg/whispersystems/curve25519/java/fe_sq2;
.super Ljava/lang/Object;
.source "fe_sq2.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static fe_sq2([I[I)V
    .locals 127

    const/4 v2, 0x0

    .line 25
    aget v3, p1, v2

    const/4 v4, 0x1

    .line 26
    aget v5, p1, v4

    const/4 v6, 0x2

    .line 27
    aget v7, p1, v6

    const/4 v8, 0x3

    .line 28
    aget v9, p1, v8

    const/4 v10, 0x4

    .line 29
    aget v11, p1, v10

    const/4 v12, 0x5

    .line 30
    aget v13, p1, v12

    const/4 v14, 0x6

    .line 31
    aget v15, p1, v14

    const/16 v16, 0x7

    .line 32
    aget v14, p1, v16

    const/16 v17, 0x8

    .line 33
    aget v12, p1, v17

    const/16 v18, 0x9

    .line 34
    aget v1, p1, v18

    mul-int/lit8 v10, v3, 0x2

    mul-int/lit8 v8, v5, 0x2

    mul-int/lit8 v6, v7, 0x2

    mul-int/lit8 v4, v9, 0x2

    mul-int/lit8 v2, v11, 0x2

    mul-int/lit8 v0, v13, 0x2

    move/from16 v19, v2

    mul-int/lit8 v2, v15, 0x2

    move/from16 v20, v2

    mul-int/lit8 v2, v14, 0x2

    move/from16 v21, v6

    mul-int/lit8 v6, v13, 0x26

    move/from16 v22, v6

    mul-int/lit8 v6, v15, 0x13

    move/from16 v23, v6

    mul-int/lit8 v6, v14, 0x26

    move/from16 v24, v6

    mul-int/lit8 v6, v12, 0x13

    move/from16 v25, v6

    mul-int/lit8 v6, v1, 0x26

    move/from16 v26, v2

    int-to-long v2, v3

    mul-long v2, v2, v2

    move-wide/from16 v27, v2

    int-to-long v2, v10

    move/from16 v29, v6

    int-to-long v5, v5

    mul-long v30, v2, v5

    move/from16 v32, v4

    move-wide/from16 v33, v5

    int-to-long v4, v7

    mul-long v6, v2, v4

    int-to-long v9, v9

    mul-long v35, v2, v9

    move-wide/from16 v37, v6

    int-to-long v6, v11

    mul-long v39, v2, v6

    move-wide/from16 v41, v9

    int-to-long v9, v13

    mul-long v43, v2, v9

    move-wide/from16 v45, v9

    int-to-long v9, v15

    mul-long v47, v2, v9

    int-to-long v13, v14

    mul-long v49, v2, v13

    int-to-long v11, v12

    mul-long v51, v2, v11

    move-wide/from16 v53, v13

    int-to-long v13, v1

    mul-long v2, v2, v13

    move-wide/from16 v55, v2

    int-to-long v1, v8

    mul-long v33, v33, v1

    mul-long v57, v1, v4

    move-wide/from16 v59, v13

    move/from16 v3, v32

    int-to-long v13, v3

    mul-long v61, v1, v13

    mul-long v63, v1, v6

    move-wide/from16 v65, v13

    int-to-long v13, v0

    mul-long v67, v1, v13

    mul-long v69, v1, v9

    move-wide/from16 v71, v13

    move/from16 v0, v26

    int-to-long v13, v0

    mul-long v73, v1, v13

    mul-long v75, v1, v11

    move-wide/from16 v77, v11

    move/from16 v0, v29

    int-to-long v11, v0

    mul-long v1, v1, v11

    mul-long v79, v4, v4

    move-wide/from16 v81, v1

    move/from16 v0, v21

    int-to-long v0, v0

    mul-long v2, v0, v41

    mul-long v83, v0, v6

    mul-long v85, v0, v45

    mul-long v87, v0, v9

    mul-long v89, v0, v53

    move-wide/from16 v91, v2

    move/from16 v8, v25

    int-to-long v2, v8

    mul-long v0, v0, v2

    mul-long v4, v4, v11

    mul-long v25, v65, v41

    mul-long v41, v65, v6

    mul-long v93, v65, v71

    mul-long v95, v65, v9

    move-wide/from16 v97, v4

    move/from16 v8, v24

    int-to-long v4, v8

    mul-long v99, v65, v4

    mul-long v101, v65, v2

    mul-long v65, v65, v11

    mul-long v103, v6, v6

    move-wide/from16 v105, v0

    move/from16 v8, v19

    int-to-long v0, v8

    mul-long v107, v0, v45

    move-wide/from16 v109, v13

    move/from16 v15, v23

    int-to-long v13, v15

    mul-long v23, v0, v13

    mul-long v111, v6, v4

    mul-long v0, v0, v2

    mul-long v6, v6, v11

    move-wide/from16 v113, v6

    move/from16 v8, v22

    int-to-long v6, v8

    mul-long v6, v6, v45

    mul-long v21, v71, v13

    mul-long v45, v71, v4

    mul-long v115, v71, v2

    mul-long v71, v71, v11

    mul-long v13, v13, v9

    mul-long v117, v9, v4

    move-wide/from16 v119, v13

    move/from16 v15, v20

    int-to-long v13, v15

    mul-long v13, v13, v2

    mul-long v9, v9, v11

    mul-long v4, v4, v53

    mul-long v19, v109, v2

    mul-long v53, v109, v11

    mul-long v2, v2, v77

    mul-long v77, v77, v11

    mul-long v11, v11, v59

    add-long v27, v27, v81

    add-long v27, v27, v105

    add-long v27, v27, v99

    add-long v27, v27, v23

    add-long v27, v27, v6

    add-long v30, v30, v97

    add-long v30, v30, v101

    add-long v30, v30, v111

    add-long v30, v30, v21

    add-long v6, v37, v33

    add-long v6, v6, v65

    add-long/2addr v6, v0

    add-long v6, v6, v45

    add-long v6, v6, v119

    add-long v35, v35, v57

    add-long v35, v35, v113

    add-long v35, v35, v115

    add-long v35, v35, v117

    add-long v39, v39, v61

    add-long v39, v39, v79

    add-long v39, v39, v71

    add-long v39, v39, v13

    add-long v39, v39, v4

    add-long v43, v43, v63

    add-long v43, v43, v91

    add-long v43, v43, v9

    add-long v43, v43, v19

    add-long v47, v47, v67

    add-long v47, v47, v83

    add-long v47, v47, v25

    add-long v47, v47, v53

    add-long v47, v47, v2

    add-long v49, v49, v69

    add-long v49, v49, v85

    add-long v49, v49, v41

    add-long v49, v49, v77

    add-long v51, v51, v73

    add-long v51, v51, v87

    add-long v51, v51, v93

    add-long v51, v51, v103

    add-long v51, v51, v11

    add-long v2, v55, v75

    add-long v2, v2, v89

    add-long v2, v2, v95

    add-long v2, v2, v107

    add-long v27, v27, v27

    add-long v30, v30, v30

    add-long/2addr v6, v6

    add-long v35, v35, v35

    add-long v39, v39, v39

    add-long v43, v43, v43

    add-long v47, v47, v47

    add-long v49, v49, v49

    add-long v51, v51, v51

    add-long/2addr v2, v2

    const-wide/32 v0, 0x2000000

    add-long v4, v27, v0

    const/16 v8, 0x1a

    shr-long/2addr v4, v8

    add-long v30, v30, v4

    shl-long/2addr v4, v8

    sub-long v27, v27, v4

    add-long v4, v39, v0

    shr-long/2addr v4, v8

    add-long v43, v43, v4

    shl-long/2addr v4, v8

    sub-long v39, v39, v4

    const-wide/32 v4, 0x1000000

    add-long v9, v30, v4

    const/16 v11, 0x19

    shr-long/2addr v9, v11

    add-long/2addr v6, v9

    shl-long/2addr v9, v11

    sub-long v30, v30, v9

    add-long v9, v43, v4

    shr-long/2addr v9, v11

    add-long v47, v47, v9

    shl-long/2addr v9, v11

    sub-long v43, v43, v9

    add-long v9, v6, v0

    shr-long/2addr v9, v8

    add-long v35, v35, v9

    shl-long/2addr v9, v8

    sub-long/2addr v6, v9

    add-long v9, v47, v0

    shr-long/2addr v9, v8

    add-long v49, v49, v9

    shl-long/2addr v9, v8

    sub-long v9, v47, v9

    add-long v12, v35, v4

    shr-long/2addr v12, v11

    add-long v39, v39, v12

    shl-long/2addr v12, v11

    sub-long v12, v35, v12

    add-long v14, v49, v4

    shr-long/2addr v14, v11

    add-long v51, v51, v14

    shl-long/2addr v14, v11

    sub-long v14, v49, v14

    add-long v19, v39, v0

    shr-long v19, v19, v8

    move-wide/from16 v121, v12

    add-long v11, v43, v19

    shl-long v19, v19, v8

    sub-long v4, v39, v19

    add-long v19, v51, v0

    shr-long v19, v19, v8

    add-long v2, v2, v19

    shl-long v19, v19, v8

    move-wide/from16 v123, v9

    sub-long v8, v51, v19

    const-wide/32 v19, 0x1000000

    add-long v19, v2, v19

    const/16 v10, 0x19

    shr-long v19, v19, v10

    const-wide/16 v21, 0x13

    mul-long v21, v21, v19

    add-long v27, v27, v21

    shl-long v19, v19, v10

    sub-long v2, v2, v19

    add-long v0, v27, v0

    const/16 v10, 0x1a

    shr-long/2addr v0, v10

    move-wide/from16 v125, v2

    add-long v2, v30, v0

    shl-long/2addr v0, v10

    sub-long v0, v27, v0

    long-to-int v0, v0

    const/4 v10, 0x0

    .line 154
    aput v0, p0, v10

    long-to-int v0, v2

    const/4 v2, 0x1

    .line 155
    aput v0, p0, v2

    long-to-int v0, v6

    const/4 v2, 0x2

    .line 156
    aput v0, p0, v2

    move-wide/from16 v2, v121

    long-to-int v0, v2

    const/4 v2, 0x3

    .line 157
    aput v0, p0, v2

    long-to-int v0, v4

    const/4 v2, 0x4

    .line 158
    aput v0, p0, v2

    long-to-int v0, v11

    const/4 v2, 0x5

    .line 159
    aput v0, p0, v2

    move-wide/from16 v2, v123

    long-to-int v0, v2

    const/4 v2, 0x6

    .line 160
    aput v0, p0, v2

    long-to-int v0, v14

    .line 161
    aput v0, p0, v16

    long-to-int v0, v8

    .line 162
    aput v0, p0, v17

    move-wide/from16 v2, v125

    long-to-int v0, v2

    .line 163
    aput v0, p0, v18

    return-void
.end method
