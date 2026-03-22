.class public final Lcom/facebook/ads/redexgen/X/VV;
.super Ljava/lang/Object;
.source ""


# static fields
.field public static A00:Lcom/facebook/ads/redexgen/X/VV;

.field public static A01:[B

.field public static A02:[Ljava/lang/String;


# direct methods
.method public static constructor <clinit>()V
    .locals 3

    .line 2098
    const/16 v0, 0x8

    new-array v2, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v0, "1xbaBrS"

    aput-object v0, v2, v1

    const/4 v1, 0x1

    const-string v0, "A5o8L0K"

    aput-object v0, v2, v1

    const/4 v1, 0x2

    const-string v0, "NCBBTtQ91bL4qNkC9"

    aput-object v0, v2, v1

    const/4 v1, 0x3

    const-string v0, "VOiFjhrLKrSiOl"

    aput-object v0, v2, v1

    const/4 v1, 0x4

    const-string v0, "IzdWV2mN1IZOPy8q"

    aput-object v0, v2, v1

    const/4 v1, 0x5

    const-string v0, "dzpcam"

    aput-object v0, v2, v1

    const/4 v1, 0x6

    const-string v0, "yMP3JjbsUfzn40YA"

    aput-object v0, v2, v1

    const/4 v1, 0x7

    const-string v0, "FhpQzKItQmfQ6pj5K9dUgRwf2x"

    aput-object v0, v2, v1

    sput-object v2, Lcom/facebook/ads/redexgen/X/VV;->A02:[Ljava/lang/String;

    invoke-static {}, Lcom/facebook/ads/redexgen/X/VV;->A05()V

    new-instance v0, Lcom/facebook/ads/redexgen/X/VV;

    invoke-direct {v0}, Lcom/facebook/ads/redexgen/X/VV;-><init>()V

    sput-object v0, Lcom/facebook/ads/redexgen/X/VV;->A00:Lcom/facebook/ads/redexgen/X/VV;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 69399
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static declared-synchronized A00()Lcom/facebook/ads/redexgen/X/VV;
    .locals 2

    const-class v1, Lcom/facebook/ads/redexgen/X/VV;

    monitor-enter v1

    .line 69400
    :try_start_0
    sget-object v0, Lcom/facebook/ads/redexgen/X/VV;->A00:Lcom/facebook/ads/redexgen/X/VV;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method private A01(Lcom/facebook/ads/redexgen/X/dL;Lorg/json/JSONObject;J)Lcom/facebook/ads/redexgen/X/PW;
    .locals 20
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .line 69401
    const/16 v2, 0xbe

    const/16 v1, 0xa

    const/16 v0, 0x2d

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/VV;->A04(III)Ljava/lang/String;

    move-result-object v0

    move-object/from16 v3, p2

    invoke-virtual {v3, v0}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v1

    .line 69402
    .local v1, "placements":Lorg/json/JSONArray;
    const/4 v0, 0x0

    invoke-virtual {v1, v0}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v4

    .line 69403
    .local v2, "placement":Lorg/json/JSONObject;
    const/16 v2, 0x7c

    const/16 v1, 0xa

    const/16 v0, 0x5a

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/VV;->A04(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    .line 69404
    .local v3, "definition":Lorg/json/JSONObject;
    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/TF;->A00(Lorg/json/JSONObject;)Lcom/facebook/ads/redexgen/X/TF;

    move-result-object v13

    .line 69405
    .local v12, "placementDefinition":Lcom/facebook/ads/redexgen/X/TF;
    const/16 v2, 0x8b

    const/16 v1, 0xe

    const/16 v0, 0x9

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/VV;->A04(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    .line 69406
    .local v13, "featureConfig":Ljava/lang/String;
    const/16 v2, 0x2f

    const/4 v1, 0x5

    const/16 v0, 0x6b

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/VV;->A04(III)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v4, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    const/4 v2, 0x0

    if-eqz v0, :cond_4

    invoke-virtual {v4, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v17

    .line 69407
    .local v9, "cache":Ljava/lang/String;
    :goto_0
    const/16 v5, 0xc8

    const/16 v1, 0x9

    const/16 v0, 0x24

    invoke-static {v5, v1, v0}, Lcom/facebook/ads/redexgen/X/VV;->A04(III)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v4, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-virtual {v4, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v18

    .line 69408
    .local v10, "sdkManagedCache":Ljava/lang/String;
    :goto_1
    const/4 v5, 0x0

    const/16 v1, 0x13

    const/16 v0, 0x33

    invoke-static {v5, v1, v0}, Lcom/facebook/ads/redexgen/X/VV;->A04(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    .line 69409
    .local v15, "adReportingConfig":Ljava/lang/String;
    const/16 v5, 0x99

    const/16 v1, 0xc

    const/16 v0, 0x10

    invoke-static {v5, v1, v0}, Lcom/facebook/ads/redexgen/X/VV;->A04(III)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v4, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-virtual {v4, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v16

    .line 69410
    .local v8, "flashConfig":Ljava/lang/String;
    :goto_2
    new-instance v12, Lcom/facebook/ads/redexgen/X/TE;

    .line 69411
    invoke-static {v4}, Lcom/facebook/ads/redexgen/X/VV;->A06(Lorg/json/JSONObject;)Z

    move-result v19

    invoke-direct/range {v12 .. v19}, Lcom/facebook/ads/redexgen/X/TE;-><init>(Lcom/facebook/ads/redexgen/X/TF;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 69412
    .local v4, "adPlacement":Lcom/facebook/ads/redexgen/X/TE;
    const/16 v5, 0x1a

    const/4 v1, 0x3

    const/16 v0, 0x5d

    invoke-static {v5, v1, v0}, Lcom/facebook/ads/redexgen/X/VV;->A04(III)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v4, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 69413
    invoke-virtual {v4, v1}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v6

    .line 69414
    .local v5, "ads":Lorg/json/JSONArray;
    const/4 v5, 0x0

    .local v6, "i":I
    :goto_3
    invoke-virtual {v6}, Lorg/json/JSONArray;->length()I

    move-result v0

    if-ge v5, v0, :cond_5

    .line 69415
    invoke-virtual {v6, v5}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v10

    .line 69416
    .local v7, "ad":Lorg/json/JSONObject;
    .end local v8    # "flashConfig":Ljava/lang/String;
    .end local v9    # "cache":Ljava/lang/String;
    .local v16, "cache":Ljava/lang/String;
    .local v17, "flashConfig":Ljava/lang/String;
    move-wide/from16 v0, p3

    move-object/from16 v9, p1

    invoke-static {v9, v10, v0, v1, v2}, Lcom/facebook/ads/redexgen/X/Uc;->A06(Lcom/facebook/ads/redexgen/X/dL;Lorg/json/JSONObject;JLjava/lang/String;)V

    .line 69417
    const/16 v2, 0x13

    const/4 v1, 0x7

    const/16 v0, 0x8

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/VV;->A04(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v10, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    .line 69418
    .local v14, "adapter":Ljava/lang/String;
    .end local v1    # "placements":Lorg/json/JSONArray;
    .local v18, "placements":Lorg/json/JSONArray;
    const/16 v2, 0x5a

    const/16 v1, 0xf

    const/16 v0, 0x2c

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/VV;->A04(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v10, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 69419
    .local v1, "dataModelType":Ljava/lang/String;
    .end local v3    # "definition":Lorg/json/JSONObject;
    .local v19, "definition":Lorg/json/JSONObject;
    const/16 v2, 0x44

    const/4 v1, 0x4

    const/16 v0, 0x3a

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/VV;->A04(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v10, v0}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v7

    .line 69420
    .local v3, "data":Lorg/json/JSONObject;
    .end local v5    # "ads":Lorg/json/JSONArray;
    .local p0, "ads":Lorg/json/JSONArray;
    const/16 v2, 0xd1

    const/16 v1, 0x8

    const/16 v0, 0x79

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/VV;->A04(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v10, v0}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v1

    .line 69421
    .local v5, "trackers":Lorg/json/JSONArray;
    if-eqz v7, :cond_0

    .line 69422
    .end local v7    # "ad":Lorg/json/JSONObject;
    .local p1, "ad":Lorg/json/JSONObject;
    new-instance v0, Lcom/facebook/ads/redexgen/X/TC;

    invoke-direct {v0, v11, v8, v7, v1}, Lcom/facebook/ads/redexgen/X/TC;-><init>(Ljava/lang/String;Ljava/lang/String;Lorg/json/JSONObject;Lorg/json/JSONArray;)V

    .line 69423
    .local v7, "adCandidate":Lcom/facebook/ads/redexgen/X/TC;
    invoke-virtual {v12, v0}, Lcom/facebook/ads/redexgen/X/TE;->A0F(Lcom/facebook/ads/redexgen/X/TC;)V

    .line 69424
    .end local v7    # "adCandidate":Lcom/facebook/ads/redexgen/X/TC;
    .end local v5    # "trackers":Lorg/json/JSONArray;
    .end local v14    # "adapter":Ljava/lang/String;
    .end local p1    # "ad":Lorg/json/JSONObject;
    .end local p2    # null:Lorg/json/JSONObject;
    .end local p3    # null:J
    :goto_4
    add-int/lit8 v5, v5, 0x1

    const/4 v2, 0x0

    goto :goto_3

    .line 69425
    .end local p1
    .local v7, "ad":Lorg/json/JSONObject;
    .end local v7    # "ad":Lorg/json/JSONObject;
    .restart local p1    # "ad":Lorg/json/JSONObject;
    :cond_0
    invoke-virtual {v9}, Lcom/facebook/ads/redexgen/X/dL;->A0F()Lcom/facebook/ads/redexgen/X/LH;

    move-result-object v8

    sget-object v0, Lcom/facebook/ads/internal/protocol/AdErrorType;->UNKNOWN_ERROR:Lcom/facebook/ads/internal/protocol/AdErrorType;

    .line 69426
    .end local v1    # "dataModelType":Ljava/lang/String;
    .local p3, "dataModelType":Ljava/lang/String;
    invoke-virtual {v0}, Lcom/facebook/ads/internal/protocol/AdErrorType;->getErrorCode()I

    move-result v7

    .end local v3    # "data":Lorg/json/JSONObject;
    .local p2, "data":Lorg/json/JSONObject;
    const/16 v9, 0x48

    sget-object v2, Lcom/facebook/ads/redexgen/X/VV;->A02:[Ljava/lang/String;

    const/4 v0, 0x0

    aget-object v1, v2, v0

    const/4 v0, 0x1

    aget-object v0, v2, v0

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-eq v1, v0, :cond_1

    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    :cond_1
    sget-object v2, Lcom/facebook/ads/redexgen/X/VV;->A02:[Ljava/lang/String;

    const-string v1, "vhqatTRLHh1uNEmkPYajEb8nOj"

    const/4 v0, 0x7

    aput-object v1, v2, v0

    const/16 v1, 0x12

    const/16 v0, 0x50

    invoke-static {v9, v1, v0}, Lcom/facebook/ads/redexgen/X/VV;->A04(III)Ljava/lang/String;

    move-result-object v0

    invoke-interface {v8, v7, v0}, Lcom/facebook/ads/redexgen/X/LH;->A5Y(ILjava/lang/String;)V

    goto :goto_4

    .line 69427
    :cond_2
    move-object/from16 v16, v2

    goto/16 :goto_2

    .line 69428
    :cond_3
    move-object/from16 v18, v2

    goto/16 :goto_1

    .line 69429
    :cond_4
    move-object/from16 v17, v2

    goto/16 :goto_0

    .line 69430
    .end local v1
    .end local v3
    .end local v8
    .end local v9
    .restart local v16    # "cache":Ljava/lang/String;
    .restart local v17    # "flashConfig":Ljava/lang/String;
    .restart local v18    # "placements":Lorg/json/JSONArray;
    .restart local v19    # "definition":Lorg/json/JSONObject;
    :cond_5
    const/16 v2, 0x34

    const/16 v1, 0xc

    const/16 v0, 0x2e

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/VV;->A04(III)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v4, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 69431
    invoke-virtual {v4, v1}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    .line 69432
    .local v1, "chainedAdsParameters":Lorg/json/JSONObject;
    invoke-virtual {v12, v0}, Lcom/facebook/ads/redexgen/X/TE;->A0G(Lorg/json/JSONObject;)V

    .line 69433
    .end local v1    # "chainedAdsParameters":Lorg/json/JSONObject;
    :cond_6
    const/16 v2, 0x1d

    const/16 v1, 0x12

    const/16 v0, 0x21

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/VV;->A04(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 69434
    .local v1, "anValidationUuid":Ljava/lang/String;
    new-instance v0, Lcom/facebook/ads/redexgen/X/PW;

    invoke-direct {v0, v12, v1}, Lcom/facebook/ads/redexgen/X/PW;-><init>(Lcom/facebook/ads/redexgen/X/TE;Ljava/lang/String;)V

    return-object v0
.end method

.method private A02(Lorg/json/JSONObject;)Lcom/facebook/ads/redexgen/X/PV;
    .locals 4

    .line 69435
    const/16 v2, 0xb7

    const/4 v1, 0x7

    const/16 v0, 0x10

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/VV;->A04(III)Ljava/lang/String;

    move-result-object v3

    const/4 v2, 0x0

    const/4 v1, 0x0

    const/16 v0, 0x5c

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/VV;->A04(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v3, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const/16 v2, 0x40

    const/4 v1, 0x4

    const/16 v0, 0x60

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/VV;->A04(III)Ljava/lang/String;

    move-result-object v1

    const/4 v0, 0x0

    invoke-virtual {p1, v1, v0}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v2

    const/4 v1, 0x0

    new-instance v0, Lcom/facebook/ads/redexgen/X/PV;

    invoke-direct {v0, v3, v2, v1}, Lcom/facebook/ads/redexgen/X/PV;-><init>(Ljava/lang/String;ILcom/facebook/ads/redexgen/X/TE;)V

    .line 69436
    return-object v0
.end method

.method private A03(Lorg/json/JSONObject;)Lcom/facebook/ads/redexgen/X/PV;
    .locals 14

    .line 69437
    const/16 v2, 0xc8

    const/16 v1, 0x9

    const/16 v0, 0x24

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/VV;->A04(III)Ljava/lang/String;

    move-result-object v3

    const/16 v2, 0x2f

    const/4 v1, 0x5

    const/16 v0, 0x6b

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/VV;->A04(III)Ljava/lang/String;

    move-result-object v6

    :try_start_0
    const/16 v2, 0xbe

    const/16 v1, 0xa

    const/16 v0, 0x2d

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/VV;->A04(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v0

    .line 69438
    .local v3, "placements":Lorg/json/JSONArray;
    const/4 v4, 0x0

    invoke-virtual {v0, v4}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v2

    .line 69439
    .local v5, "placement":Lorg/json/JSONObject;
    const/16 v5, 0x7c

    const/16 v1, 0xa

    const/16 v0, 0x5a

    invoke-static {v5, v1, v0}, Lcom/facebook/ads/redexgen/X/VV;->A04(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    .line 69440
    .local v6, "definition":Lorg/json/JSONObject;
    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/TF;->A00(Lorg/json/JSONObject;)Lcom/facebook/ads/redexgen/X/TF;

    move-result-object v7

    .line 69441
    .local v8, "placementDefinition":Lcom/facebook/ads/redexgen/X/TF;
    const/16 v5, 0x8b

    const/16 v1, 0xe

    const/16 v0, 0x9

    invoke-static {v5, v1, v0}, Lcom/facebook/ads/redexgen/X/VV;->A04(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 69442
    .local v9, "featureConfig":Ljava/lang/String;
    invoke-virtual {v2, v6}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    const/4 v12, 0x0

    if-eqz v0, :cond_1

    invoke-virtual {v2, v6}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    .line 69443
    .local v12, "cache":Ljava/lang/String;
    :goto_0
    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    .line 69444
    .local v13, "sdkManagedCache":Ljava/lang/String;
    :cond_0
    const/4 v3, 0x0

    const/16 v1, 0x13

    const/16 v0, 0x33

    invoke-static {v3, v1, v0}, Lcom/facebook/ads/redexgen/X/VV;->A04(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 69445
    .local v10, "adReportingConfig":Ljava/lang/String;
    const/16 v3, 0xb7

    const/4 v1, 0x7

    const/16 v0, 0x10

    invoke-static {v3, v1, v0}, Lcom/facebook/ads/redexgen/X/VV;->A04(III)Ljava/lang/String;

    move-result-object v1

    const/4 v5, 0x0

    const/4 v3, 0x0

    const/16 v0, 0x5c

    invoke-static {v5, v3, v0}, Lcom/facebook/ads/redexgen/X/VV;->A04(III)Ljava/lang/String;

    move-result-object v0

    .line 69446
    invoke-virtual {p1, v1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const/16 v5, 0x40

    const/4 v1, 0x4

    const/16 v0, 0x60

    invoke-static {v5, v1, v0}, Lcom/facebook/ads/redexgen/X/VV;->A04(III)Ljava/lang/String;

    move-result-object v0

    .line 69447
    invoke-virtual {p1, v0, v4}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v1

    new-instance v6, Lcom/facebook/ads/redexgen/X/TE;

    .line 69448
    invoke-static {v2}, Lcom/facebook/ads/redexgen/X/VV;->A06(Lorg/json/JSONObject;)Z

    move-result v13

    const/4 v10, 0x0

    invoke-direct/range {v6 .. v13}, Lcom/facebook/ads/redexgen/X/TE;-><init>(Lcom/facebook/ads/redexgen/X/TF;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    new-instance v0, Lcom/facebook/ads/redexgen/X/PV;

    invoke-direct {v0, v3, v1, v6}, Lcom/facebook/ads/redexgen/X/PV;-><init>(Ljava/lang/String;ILcom/facebook/ads/redexgen/X/TE;)V

    goto :goto_1

    .line 69449
    :cond_1
    move-object v11, v12

    goto :goto_0

    .line 69450
    :goto_1
    return-object v0
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 69451
    .end local v3    # "placements":Lorg/json/JSONArray;
    .end local v5    # "placement":Lorg/json/JSONObject;
    .end local v6    # "definition":Lorg/json/JSONObject;
    .end local v8    # "placementDefinition":Lcom/facebook/ads/redexgen/X/TF;
    .end local v9    # "featureConfig":Ljava/lang/String;
    .end local v10    # "adReportingConfig":Ljava/lang/String;
    .end local v12    # "cache":Ljava/lang/String;
    .end local v13    # "sdkManagedCache":Ljava/lang/String;
    .local v0, "e":Lorg/json/JSONException;
    :catch_0
    invoke-direct {p0, p1}, Lcom/facebook/ads/redexgen/X/VV;->A02(Lorg/json/JSONObject;)Lcom/facebook/ads/redexgen/X/PV;

    move-result-object v0

    return-object v0
.end method

.method public static A04(III)Ljava/lang/String;
    .locals 2

    sget-object v1, Lcom/facebook/ads/redexgen/X/VV;->A01:[B

    add-int v0, p0, p1

    invoke-static {v1, p0, v0}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object p0

    const/4 v1, 0x0

    :goto_0
    array-length v0, p0

    if-ge v1, v0, :cond_0

    aget-byte v0, p0, v1

    xor-int/2addr v0, p2

    xor-int/lit8 v0, v0, 0x24

    int-to-byte v0, v0

    aput-byte v0, p0, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, p0}, Ljava/lang/String;-><init>([B)V

    return-object v0
.end method

.method public static A05()V
    .locals 1

    const/16 v0, 0xdd

    new-array v0, v0, [B

    fill-array-data v0, :array_0

    sput-object v0, Lcom/facebook/ads/redexgen/X/VV;->A01:[B

    return-void

    :array_0
    .array-data 1
        0x76t
        0x73t
        0x48t
        0x65t
        0x72t
        0x67t
        0x78t
        0x65t
        0x63t
        0x7et
        0x79t
        0x70t
        0x48t
        0x74t
        0x78t
        0x79t
        0x71t
        0x7et
        0x70t
        0x4dt
        0x48t
        0x4dt
        0x5ct
        0x58t
        0x49t
        0x5et
        0x18t
        0x1dt
        0xat
        0x64t
        0x6bt
        0x5at
        0x73t
        0x64t
        0x69t
        0x6ct
        0x61t
        0x64t
        0x71t
        0x6ct
        0x6at
        0x6bt
        0x5at
        0x70t
        0x70t
        0x6ct
        0x61t
        0x2ct
        0x2et
        0x2ct
        0x27t
        0x2at
        0x69t
        0x62t
        0x6bt
        0x63t
        0x64t
        0x55t
        0x7at
        0x6bt
        0x78t
        0x6bt
        0x67t
        0x79t
        0x27t
        0x2bt
        0x20t
        0x21t
        0x7at
        0x7ft
        0x6at
        0x7ft
        0x10t
        0x15t
        0x0t
        0x15t
        0x3bt
        0x16t
        0x1et
        0x11t
        0x17t
        0x0t
        0x54t
        0x1dt
        0x7t
        0x54t
        0x1at
        0x1t
        0x18t
        0x18t
        0x6ct
        0x69t
        0x7ct
        0x69t
        0x57t
        0x65t
        0x67t
        0x6ct
        0x6dt
        0x64t
        0x57t
        0x7ct
        0x71t
        0x78t
        0x6dt
        0x78t
        0x79t
        0x7et
        0x69t
        0x7bt
        0x43t
        0x7at
        0x69t
        0x72t
        0x72t
        0x79t
        0x70t
        0x43t
        0x7ft
        0x73t
        0x72t
        0x7at
        0x75t
        0x7bt
        0x1at
        0x1bt
        0x18t
        0x17t
        0x10t
        0x17t
        0xat
        0x17t
        0x11t
        0x10t
        0x18t
        0xft
        0xft
        0x12t
        0xft
        0x4bt
        0x48t
        0x4ct
        0x59t
        0x58t
        0x5ft
        0x48t
        0x72t
        0x4et
        0x42t
        0x43t
        0x4bt
        0x44t
        0x4at
        0x52t
        0x58t
        0x55t
        0x47t
        0x5ct
        0x6bt
        0x57t
        0x5bt
        0x5at
        0x52t
        0x5dt
        0x53t
        0x2et
        0x2dt
        0x25t
        0x1dt
        0x21t
        0x37t
        0x30t
        0x30t
        0x27t
        0x2ct
        0x36t
        0x1dt
        0x24t
        0x37t
        0x2ct
        0x2ct
        0x27t
        0x2et
        0x59t
        0x51t
        0x47t
        0x47t
        0x55t
        0x53t
        0x51t
        0x79t
        0x65t
        0x68t
        0x6at
        0x6ct
        0x64t
        0x6ct
        0x67t
        0x7dt
        0x7at
        0x73t
        0x64t
        0x6bt
        0x5ft
        0x63t
        0x61t
        0x63t
        0x68t
        0x65t
        0x29t
        0x2ft
        0x3ct
        0x3et
        0x36t
        0x38t
        0x2ft
        0x2et
        0x57t
        0x5at
        0x53t
        0x46t
    .end array-data
.end method

.method public static A06(Lorg/json/JSONObject;)Z
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .line 69452
    const/16 v2, 0x69

    const/16 v1, 0x13

    const/16 v0, 0x38

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/VV;->A04(III)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    const/4 v4, 0x0

    if-eqz v0, :cond_0

    .line 69453
    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v3

    .line 69454
    .local v0, "funnelConfig":Lorg/json/JSONObject;
    const/16 v2, 0xa5

    const/16 v1, 0x12

    const/16 v0, 0x66

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/VV;->A04(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0, v4}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0

    .line 69455
    .end local v0    # "funnelConfig":Lorg/json/JSONObject;
    :cond_0
    return v4
.end method


# virtual methods
.method public final A07(Lcom/facebook/ads/redexgen/X/dL;Ljava/lang/String;J)Lcom/facebook/ads/redexgen/X/VX;
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .line 69456
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 69457
    new-instance v4, Lorg/json/JSONObject;

    invoke-direct {v4, p2}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 69458
    .local v0, "jsonResponse":Lorg/json/JSONObject;
    const/16 v2, 0xd9

    const/4 v1, 0x4

    const/4 v0, 0x7

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/VV;->A04(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 69459
    .local v1, "type":Ljava/lang/String;
    invoke-virtual {v6}, Ljava/lang/String;->hashCode()I

    move-result v5

    const/16 v2, 0x86

    const/4 v1, 0x5

    const/16 v0, 0x59

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/VV;->A04(III)Ljava/lang/String;

    move-result-object v3

    sparse-switch v5, :sswitch_data_0

    :cond_0
    const/4 v0, -0x1

    :goto_0
    packed-switch v0, :pswitch_data_0

    .line 69460
    invoke-virtual {v4, v3}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    .line 69461
    .local v2, "error":Lorg/json/JSONObject;
    if-eqz v0, :cond_1

    .line 69462
    invoke-direct {p0, v0}, Lcom/facebook/ads/redexgen/X/VV;->A02(Lorg/json/JSONObject;)Lcom/facebook/ads/redexgen/X/PV;

    move-result-object v0

    return-object v0

    .line 69463
    :sswitch_0
    invoke-virtual {v6, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :sswitch_1
    const/16 v2, 0x1a

    const/4 v1, 0x3

    const/16 v0, 0x5d

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/VV;->A04(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    .line 69464
    .end local v2    # "error":Lorg/json/JSONObject;
    :pswitch_0
    invoke-direct {p0, v4}, Lcom/facebook/ads/redexgen/X/VV;->A03(Lorg/json/JSONObject;)Lcom/facebook/ads/redexgen/X/PV;

    move-result-object v0

    return-object v0

    .line 69465
    :pswitch_1
    invoke-direct {p0, p1, v4, p3, p4}, Lcom/facebook/ads/redexgen/X/VV;->A01(Lcom/facebook/ads/redexgen/X/dL;Lorg/json/JSONObject;J)Lcom/facebook/ads/redexgen/X/PW;

    move-result-object v0

    return-object v0

    .line 69466
    .end local v0    # "jsonResponse":Lorg/json/JSONObject;
    .end local v1    # "type":Ljava/lang/String;
    :cond_1
    sget-object v1, Lcom/facebook/ads/redexgen/X/VW;->A04:Lcom/facebook/ads/redexgen/X/VW;

    new-instance v0, Lcom/facebook/ads/redexgen/X/VX;

    invoke-direct {v0, v1}, Lcom/facebook/ads/redexgen/X/VX;-><init>(Lcom/facebook/ads/redexgen/X/VW;)V

    return-object v0

    nop

    :sswitch_data_0
    .sparse-switch
        0x178b0 -> :sswitch_1
        0x5c4d208 -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
