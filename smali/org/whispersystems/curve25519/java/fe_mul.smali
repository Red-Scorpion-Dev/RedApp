.class public Lorg/whispersystems/curve25519/java/fe_mul;
.super Ljava/lang/Object;
.source "fe_mul.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static fe_mul([I[I[I)V
    .locals 52

    .line 194
    invoke-static/range {p1 .. p2}, Lorg/whispersystems/curve25519/java/fe_mul;->fe_mul1([I[I)[J

    move-result-object v0

    const/4 v1, 0x0

    .line 195
    aget-wide v2, v0, v1

    const/4 v4, 0x1

    .line 196
    aget-wide v5, v0, v4

    const/4 v7, 0x2

    .line 197
    aget-wide v8, v0, v7

    const/4 v10, 0x3

    .line 198
    aget-wide v11, v0, v10

    const/4 v13, 0x4

    .line 199
    aget-wide v14, v0, v13

    const/16 v16, 0x5

    .line 200
    aget-wide v17, v0, v16

    const/16 v19, 0x6

    .line 201
    aget-wide v20, v0, v19

    const/16 v22, 0x7

    .line 202
    aget-wide v23, v0, v22

    const/16 v25, 0x8

    .line 203
    aget-wide v26, v0, v25

    const/16 v28, 0x9

    .line 204
    aget-wide v29, v0, v28

    const-wide/32 v31, 0x2000000

    add-long v33, v2, v31

    const/16 v0, 0x1a

    shr-long v33, v33, v0

    add-long v5, v5, v33

    shl-long v33, v33, v0

    sub-long v2, v2, v33

    add-long v33, v14, v31

    shr-long v33, v33, v0

    add-long v17, v17, v33

    shl-long v33, v33, v0

    sub-long v14, v14, v33

    const-wide/32 v33, 0x1000000

    add-long v35, v5, v33

    const/16 v37, 0x19

    shr-long v35, v35, v37

    add-long v8, v8, v35

    shl-long v35, v35, v37

    sub-long v5, v5, v35

    add-long v35, v17, v33

    shr-long v35, v35, v37

    add-long v20, v20, v35

    shl-long v35, v35, v37

    sub-long v17, v17, v35

    add-long v35, v8, v31

    shr-long v35, v35, v0

    add-long v11, v11, v35

    shl-long v35, v35, v0

    sub-long v8, v8, v35

    add-long v35, v20, v31

    shr-long v35, v35, v0

    add-long v23, v23, v35

    shl-long v35, v35, v0

    move-wide/from16 v38, v8

    sub-long v7, v20, v35

    add-long v20, v11, v33

    shr-long v20, v20, v37

    add-long v14, v14, v20

    shl-long v20, v20, v37

    sub-long v11, v11, v20

    add-long v20, v23, v33

    shr-long v20, v20, v37

    add-long v26, v26, v20

    shl-long v20, v20, v37

    move-wide/from16 v40, v11

    sub-long v10, v23, v20

    add-long v20, v14, v31

    shr-long v20, v20, v0

    move-wide/from16 v42, v5

    add-long v4, v17, v20

    shl-long v17, v20, v0

    move-wide/from16 v44, v2

    sub-long v1, v14, v17

    add-long v14, v26, v31

    shr-long/2addr v14, v0

    add-long v29, v29, v14

    shl-long/2addr v14, v0

    move-wide/from16 v46, v1

    sub-long v0, v26, v14

    add-long v33, v29, v33

    shr-long v2, v33, v37

    const-wide/16 v14, 0x13

    mul-long v14, v14, v2

    add-long v14, v44, v14

    shl-long v2, v2, v37

    sub-long v2, v29, v2

    add-long v31, v14, v31

    const/16 v6, 0x1a

    shr-long v17, v31, v6

    move-wide/from16 v48, v2

    add-long v2, v42, v17

    shl-long v17, v17, v6

    move-wide/from16 v50, v0

    sub-long v0, v14, v17

    long-to-int v0, v0

    const/4 v1, 0x0

    .line 267
    aput v0, p0, v1

    long-to-int v0, v2

    const/4 v1, 0x1

    .line 268
    aput v0, p0, v1

    move-wide/from16 v0, v38

    long-to-int v0, v0

    const/4 v1, 0x2

    .line 269
    aput v0, p0, v1

    move-wide/from16 v0, v40

    long-to-int v0, v0

    const/4 v1, 0x3

    .line 270
    aput v0, p0, v1

    move-wide/from16 v0, v46

    long-to-int v0, v0

    .line 271
    aput v0, p0, v13

    long-to-int v0, v4

    .line 272
    aput v0, p0, v16

    long-to-int v0, v7

    .line 273
    aput v0, p0, v19

    long-to-int v0, v10

    .line 274
    aput v0, p0, v22

    move-wide/from16 v0, v50

    long-to-int v0, v0

    .line 275
    aput v0, p0, v25

    move-wide/from16 v0, v48

    long-to-int v0, v0

    .line 276
    aput v0, p0, v28

    return-void
.end method

.method public static fe_mul1([I[I)[J
    .locals 219

    const/4 v2, 0x0

    .line 42
    aget v3, p0, v2

    const/4 v4, 0x1

    .line 43
    aget v5, p0, v4

    const/4 v6, 0x2

    .line 44
    aget v7, p0, v6

    const/4 v8, 0x3

    .line 45
    aget v9, p0, v8

    const/4 v10, 0x4

    .line 46
    aget v11, p0, v10

    const/4 v12, 0x5

    .line 47
    aget v13, p0, v12

    const/4 v14, 0x6

    .line 48
    aget v15, p0, v14

    const/16 v16, 0x7

    .line 49
    aget v14, p0, v16

    const/16 v18, 0x8

    .line 50
    aget v12, p0, v18

    const/16 v20, 0x9

    .line 51
    aget v0, p0, v20

    .line 52
    aget v10, p1, v2

    .line 53
    aget v2, p1, v4

    .line 54
    aget v4, p1, v6

    .line 55
    aget v6, p1, v8

    const/16 v21, 0x4

    .line 56
    aget v8, p1, v21

    move/from16 v22, v12

    const/16 v19, 0x5

    .line 57
    aget v12, p1, v19

    move/from16 v23, v15

    const/16 v17, 0x6

    .line 58
    aget v15, p1, v17

    move/from16 v24, v11

    .line 59
    aget v11, p1, v16

    move/from16 v25, v7

    .line 60
    aget v7, p1, v18

    .line 61
    aget v1, p1, v20

    move/from16 v26, v10

    mul-int/lit8 v10, v2, 0x13

    move/from16 v27, v10

    mul-int/lit8 v10, v4, 0x13

    move/from16 v28, v10

    mul-int/lit8 v10, v6, 0x13

    move/from16 v29, v10

    mul-int/lit8 v10, v8, 0x13

    move/from16 v30, v10

    mul-int/lit8 v10, v12, 0x13

    move/from16 v31, v10

    mul-int/lit8 v10, v15, 0x13

    move/from16 v32, v10

    mul-int/lit8 v10, v11, 0x13

    move/from16 v33, v10

    mul-int/lit8 v10, v7, 0x13

    move/from16 v34, v10

    mul-int/lit8 v10, v1, 0x13

    move/from16 v35, v10

    mul-int/lit8 v10, v5, 0x2

    move/from16 v36, v10

    mul-int/lit8 v10, v9, 0x2

    move/from16 v37, v10

    mul-int/lit8 v10, v13, 0x2

    move/from16 v38, v10

    mul-int/lit8 v10, v14, 0x2

    move/from16 v39, v10

    mul-int/lit8 v10, v0, 0x2

    move/from16 v40, v13

    move/from16 v41, v14

    int-to-long v13, v3

    move/from16 v42, v9

    move/from16 v43, v10

    move/from16 v3, v26

    int-to-long v9, v3

    mul-long v44, v13, v9

    int-to-long v2, v2

    mul-long v46, v13, v2

    move-wide/from16 v48, v2

    int-to-long v2, v4

    mul-long v50, v13, v2

    move-wide/from16 v52, v2

    int-to-long v2, v6

    mul-long v54, v13, v2

    move-wide/from16 v56, v2

    int-to-long v2, v8

    mul-long v58, v13, v2

    move-wide/from16 v60, v2

    int-to-long v2, v12

    mul-long v62, v13, v2

    move-wide/from16 v64, v2

    int-to-long v2, v15

    mul-long v66, v13, v2

    int-to-long v11, v11

    mul-long v68, v13, v11

    int-to-long v6, v7

    mul-long v70, v13, v6

    move/from16 v72, v0

    int-to-long v0, v1

    mul-long v13, v13, v0

    int-to-long v0, v5

    mul-long v4, v0, v9

    move-wide/from16 v73, v13

    move/from16 v8, v36

    int-to-long v13, v8

    mul-long v75, v13, v48

    mul-long v77, v0, v52

    mul-long v79, v13, v56

    mul-long v81, v0, v60

    mul-long v83, v13, v64

    mul-long v85, v0, v2

    mul-long v87, v13, v11

    mul-long v0, v0, v6

    move/from16 v6, v35

    int-to-long v6, v6

    mul-long v13, v13, v6

    move-wide/from16 v89, v0

    move/from16 v8, v25

    int-to-long v0, v8

    mul-long v25, v0, v9

    mul-long v35, v0, v48

    mul-long v91, v0, v52

    mul-long v93, v0, v56

    mul-long v95, v0, v60

    mul-long v97, v0, v64

    mul-long v99, v0, v2

    mul-long v11, v11, v0

    move-wide/from16 v101, v11

    move/from16 v8, v34

    int-to-long v11, v8

    mul-long v103, v0, v11

    mul-long v0, v0, v6

    move-wide/from16 v105, v0

    move/from16 v8, v42

    int-to-long v0, v8

    mul-long v107, v0, v9

    move-wide/from16 v109, v4

    move/from16 v8, v37

    int-to-long v4, v8

    mul-long v111, v4, v48

    mul-long v113, v0, v52

    mul-long v115, v4, v56

    mul-long v117, v0, v60

    mul-long v119, v4, v64

    mul-long v2, v2, v0

    move-wide/from16 v121, v2

    move/from16 v8, v33

    int-to-long v2, v8

    mul-long v33, v4, v2

    mul-long v0, v0, v11

    mul-long v4, v4, v6

    move-wide/from16 v123, v4

    move/from16 v8, v24

    int-to-long v4, v8

    mul-long v125, v4, v9

    mul-long v127, v4, v48

    mul-long v129, v4, v52

    mul-long v131, v4, v56

    mul-long v133, v4, v60

    mul-long v64, v64, v4

    move-wide/from16 v135, v0

    move/from16 v15, v32

    int-to-long v0, v15

    mul-long v137, v4, v0

    mul-long v139, v4, v2

    mul-long v141, v4, v11

    mul-long v4, v4, v6

    move-wide/from16 v143, v4

    move/from16 v8, v40

    int-to-long v4, v8

    mul-long v145, v4, v9

    move-wide/from16 v147, v13

    move/from16 v8, v38

    int-to-long v13, v8

    mul-long v37, v13, v48

    mul-long v149, v4, v52

    mul-long v151, v13, v56

    mul-long v60, v60, v4

    move-wide/from16 v153, v9

    move/from16 v8, v31

    int-to-long v8, v8

    mul-long v31, v13, v8

    mul-long v155, v4, v0

    mul-long v157, v13, v2

    mul-long v4, v4, v11

    mul-long v13, v13, v6

    move-wide/from16 v159, v13

    move/from16 v10, v23

    int-to-long v13, v10

    mul-long v23, v13, v153

    mul-long v161, v13, v48

    mul-long v163, v13, v52

    mul-long v56, v56, v13

    move-wide/from16 v165, v4

    move/from16 v10, v30

    int-to-long v4, v10

    mul-long v167, v13, v4

    mul-long v169, v13, v8

    mul-long v171, v13, v0

    mul-long v173, v13, v2

    mul-long v175, v13, v11

    mul-long v13, v13, v6

    move-wide/from16 v177, v13

    move/from16 v10, v41

    int-to-long v13, v10

    mul-long v40, v13, v153

    move-wide/from16 v179, v6

    move/from16 v10, v39

    int-to-long v6, v10

    mul-long v181, v6, v48

    mul-long v52, v52, v13

    move-wide/from16 v183, v11

    move/from16 v10, v29

    int-to-long v10, v10

    mul-long v29, v6, v10

    mul-long v185, v13, v4

    mul-long v187, v6, v8

    mul-long v189, v13, v0

    mul-long v191, v6, v2

    mul-long v13, v13, v183

    mul-long v6, v6, v179

    move-wide/from16 v193, v6

    move/from16 v12, v22

    int-to-long v6, v12

    mul-long v195, v6, v153

    mul-long v48, v48, v6

    move-wide/from16 v197, v13

    move/from16 v12, v28

    int-to-long v12, v12

    mul-long v14, v6, v12

    mul-long v199, v6, v10

    mul-long v201, v6, v4

    mul-long v203, v6, v8

    mul-long v205, v6, v0

    mul-long v207, v6, v2

    mul-long v209, v6, v183

    mul-long v6, v6, v179

    move-wide/from16 v211, v6

    move/from16 v6, v72

    int-to-long v6, v6

    mul-long v153, v153, v6

    move-wide/from16 v213, v14

    move/from16 v14, v43

    int-to-long v14, v14

    move-wide/from16 v215, v2

    move/from16 v2, v27

    int-to-long v2, v2

    mul-long v2, v2, v14

    mul-long v12, v12, v6

    mul-long v10, v10, v14

    mul-long v4, v4, v6

    mul-long v8, v8, v14

    mul-long v0, v0, v6

    mul-long v27, v14, v215

    mul-long v6, v6, v183

    mul-long v14, v14, v179

    move-wide/from16 v217, v14

    const/16 v14, 0xa

    .line 177
    new-array v14, v14, [J

    add-long v44, v44, v147

    add-long v44, v44, v103

    add-long v44, v44, v33

    add-long v44, v44, v137

    add-long v44, v44, v31

    add-long v44, v44, v167

    add-long v44, v44, v29

    add-long v44, v44, v213

    add-long v44, v44, v2

    const/4 v2, 0x0

    aput-wide v44, v14, v2

    add-long v46, v46, v109

    add-long v46, v46, v105

    add-long v46, v46, v135

    add-long v46, v46, v139

    add-long v46, v46, v155

    add-long v46, v46, v169

    add-long v46, v46, v185

    add-long v46, v46, v199

    add-long v46, v46, v12

    const/4 v2, 0x1

    aput-wide v46, v14, v2

    add-long v50, v50, v75

    add-long v50, v50, v25

    add-long v50, v50, v123

    add-long v50, v50, v141

    add-long v50, v50, v157

    add-long v50, v50, v171

    add-long v50, v50, v187

    add-long v50, v50, v201

    add-long v50, v50, v10

    const/4 v2, 0x2

    aput-wide v50, v14, v2

    add-long v54, v54, v77

    add-long v54, v54, v35

    add-long v54, v54, v107

    add-long v54, v54, v143

    add-long v54, v54, v165

    add-long v54, v54, v173

    add-long v54, v54, v189

    add-long v54, v54, v203

    add-long v54, v54, v4

    const/4 v2, 0x3

    aput-wide v54, v14, v2

    add-long v58, v58, v79

    add-long v58, v58, v91

    add-long v58, v58, v111

    add-long v58, v58, v125

    add-long v58, v58, v159

    add-long v58, v58, v175

    add-long v58, v58, v191

    add-long v58, v58, v205

    add-long v58, v58, v8

    const/4 v2, 0x4

    aput-wide v58, v14, v2

    add-long v62, v62, v81

    add-long v62, v62, v93

    add-long v62, v62, v113

    add-long v62, v62, v127

    add-long v62, v62, v145

    add-long v62, v62, v177

    add-long v62, v62, v197

    add-long v62, v62, v207

    add-long v62, v62, v0

    const/4 v0, 0x5

    aput-wide v62, v14, v0

    add-long v66, v66, v83

    add-long v66, v66, v95

    add-long v66, v66, v115

    add-long v66, v66, v129

    add-long v66, v66, v37

    add-long v66, v66, v23

    add-long v66, v66, v193

    add-long v66, v66, v209

    add-long v66, v66, v27

    const/4 v0, 0x6

    aput-wide v66, v14, v0

    add-long v68, v68, v85

    add-long v68, v68, v97

    add-long v68, v68, v117

    add-long v68, v68, v131

    add-long v68, v68, v149

    add-long v68, v68, v161

    add-long v68, v68, v40

    add-long v68, v68, v211

    add-long v68, v68, v6

    aput-wide v68, v14, v16

    add-long v70, v70, v87

    add-long v70, v70, v99

    add-long v70, v70, v119

    add-long v70, v70, v133

    add-long v70, v70, v151

    add-long v70, v70, v163

    add-long v70, v70, v181

    add-long v70, v70, v195

    add-long v70, v70, v217

    aput-wide v70, v14, v18

    add-long v0, v73, v89

    add-long v0, v0, v101

    add-long v0, v0, v121

    add-long v0, v0, v64

    add-long v0, v0, v60

    add-long v0, v0, v56

    add-long v0, v0, v52

    add-long v0, v0, v48

    add-long v0, v0, v153

    aput-wide v0, v14, v20

    return-object v14
.end method
